package com.alipay.mobile.quinox.classloader;

import java.io.File;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;

import com.alipay.mobile.quinox.bundle.AppBundle;
import com.alipay.mobile.quinox.bundle.BundlesManager;
import com.alipay.mobile.quinox.utils.ZLog;

import dalvik.system.PathClassLoader;

public final class BootstrapClassLoader extends PathClassLoader {
	private static final ThreadFactory threadFactory = new MinPriorityThreadFactory();
	private Context ctx;
	private BundlesManager bundlesManager;
	private Map map;
	private InitExecutor initExecutor;
	private HostClassLoader hostClassLoader;

	public BootstrapClassLoader(Context context, PathClassLoader pathClassLoader,
			BundlesManager bundlesManager) {
		super(context.getApplicationInfo().sourceDir, context
				.getApplicationInfo().dataDir + File.separator + "lib",
				a(ClassLoader.getSystemClassLoader()));
		this.ctx = context;
		this.bundlesManager = bundlesManager;
		this.hostClassLoader = new HostClassLoader(this, this.ctx.getApplicationInfo().sourceDir, b(),
				a(ClassLoader.getSystemClassLoader()), pathClassLoader,
				this.bundlesManager);
		this.map = new ConcurrentHashMap(10);
		this.initExecutor = new InitExecutor(this, this.bundlesManager);
		final ExecutorService exeService = Executors.newFixedThreadPool(1,
				threadFactory);
		exeService.execute(new Runnable() {
			@Override
			public void run() {
				while(true){
					try {
		                Thread.sleep(10000L);
		                //TODO
	//	                BootstrapClassLoader.this.b.e();
		                exeService.shutdown();
		                return;
		            } catch (InterruptedException ex) {
		                continue;
		            }
				}
			}
		});
		c();
	}

	public static Class<?> loadFromDepends(String paramString, Collection paramCollection) {
		// TODO
		return null;
		// Object localObject1 = null;
		// Iterator localIterator;
		// Object localObject2;
		// if (paramCollection != null)
		// {
		// localIterator = paramCollection.iterator();
		// localObject2 = null;
		// }
		// while (true)
		// if (localIterator.hasNext())
		// {
		// h localh = (h)localIterator.next();
		// try
		// {
		// Class localClass = localh.loadClassFromCurrent(paramString);
		// localObject1 = localClass;
		// if (localObject1 == null)
		// break label63;
		// return localObject1;
		// }
		// catch (ClassNotFoundException localClassNotFoundException)
		// {
		// }
		// }
		// else
		// {
		// return localObject2;
		// label63: localObject2 = localObject1;
		// }
	}

	private static ClassLoader a(ClassLoader paramClassLoader) {
		while (!paramClassLoader.getClass().getSimpleName()
				.equalsIgnoreCase("BootClassLoader"))
			paramClassLoader = paramClassLoader.getParent();
		return paramClassLoader;
	}

	private void c() {
		initExecutor.initExecutor();
		Iterator<AppBundle> bundlesIte = bundlesManager.getAllBundlesIterator();
		while (bundlesIte.hasNext()) {
			AppBundle appBundle = (AppBundle) bundlesIte.next();
			if ((appBundle.hasClass()) && (appBundle.getInitLevel() != 11110000))
				initExecutor.makeBundleClassloaderCreateJob(appBundle);
		}
		initExecutor.shutdownExecutor();
	}

	private boolean exists(String bundleName) {
		synchronized (map) {
			return map.containsKey(bundleName);
		}
	}

	private BundleClassloader e(String bundleName) {
		synchronized (map) {
			return (BundleClassloader) map.get(bundleName);
		}
	}

	public final Context getContext() {
		return ctx;
	}

	public final void a(AppBundle bundle) {
		this.initExecutor.initExecutor();
		this.initExecutor.makeBundleClassloaderCreateJob(bundle);
		this.initExecutor.shutdownExecutor();
	}

	public final void remove(String bundleName) {
		synchronized (map) {
			map.remove(bundleName);
			return;
		}
	}

	public final void put(String bundle, BundleClassloader classLoader) {
		synchronized (map) {
			map.put(bundle, classLoader);
			return;
		}
	}

	public final Bundleable getQuinoxClassLoader(String bundleName) {
		if (!exists(bundleName)) {
			AppBundle locala = this.bundlesManager.getBundle(bundleName);
			if (this.bundlesManager.b(bundleName)) {
				com.alipay.mobile.quinox.utils.ZLog.d("BootstrapClassloader",
						"getQuinoxClassLoader static link ->bundle: "
								+ bundleName);
				return this.hostClassLoader;
			}
			if (locala == null) {
				com.alipay.mobile.quinox.utils.ZLog.d("BootstrapClassloader",
						"getQuinoxClassLoader can't find bundle: "
								+ bundleName);
				return null;
			}
			this.initExecutor.createBundleClassloader(bundleName);
		}
		return e(bundleName);
	}

	public final String b() {
		return this.bundlesManager.d() + File.pathSeparator
				+ this.ctx.getApplicationInfo().dataDir + File.separator + "lib";
	}

	public final void dexopt(AppBundle parama) {
		this.initExecutor.dexopt(parama);
	}

	public final Bundleable getBundleClassLoader(String bundleName) {
		if (!exists(bundleName)) {
			AppBundle appBundle = this.bundlesManager.getBundle(bundleName);
			if (appBundle == null)
				ZLog.d("BootstrapClassloader",
						"getBundleClassLoader can't find bundle: "
								+ bundleName);
			while (!appBundle.hasClass())
				return null;
			this.initExecutor.createBundleClassloader(bundleName);
		}
		return e(bundleName);
	}

	@TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
	protected final Class<?> findClass(String componentName) throws ClassNotFoundException {
		ZLog.i("BootstrapClassloader", Thread
				.currentThread().getName()
				+ ":"
				+ this
				+ " findClass: "
				+ componentName);
		AppBundle appBundle = bundlesManager.getBundleByComponentName(componentName);
		if (appBundle != null) {
			Bundleable localh = getQuinoxClassLoader(appBundle.getBundleName());
			if ((localh == null) && (appBundle.getInitLevel() == 11110000)) {
				a(appBundle);
				localh = getQuinoxClassLoader(appBundle.getBundleName());
			}
			if ((localh != null) && (localh != this.hostClassLoader))
				return localh.loadClassFromCurrent(componentName);
		}
		return this.hostClassLoader.loadClass(componentName);
	}
}
