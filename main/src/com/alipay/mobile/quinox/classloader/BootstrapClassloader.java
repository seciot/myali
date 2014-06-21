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

import dalvik.system.PathClassLoader;

public final class BootstrapClassLoader extends PathClassLoader {
	private static final ThreadFactory threadFactory = new MinPriorityThreadFactory();
	private Context ctx;
	private BundlesManager bundlesManager;
	private Map map;
	private InitExecutor initExecutor;
	private HostClassLoader e;

	public BootstrapClassLoader(Context context, PathClassLoader pathClassLoader,
			BundlesManager bundlesManager) {
		super(context.getApplicationInfo().sourceDir, context
				.getApplicationInfo().dataDir + File.separator + "lib",
				a(ClassLoader.getSystemClassLoader()));
		this.ctx = context;
		this.bundlesManager = bundlesManager;
		this.e = new HostClassLoader(this, this.ctx.getApplicationInfo().sourceDir, b(),
				a(ClassLoader.getSystemClassLoader()), pathClassLoader,
				this.bundlesManager);
		this.map = new ConcurrentHashMap(10);
		this.initExecutor = new InitExecutor(this, this.bundlesManager);
		ExecutorService localExecutorService = Executors.newFixedThreadPool(1,
				threadFactory);
		localExecutorService.execute(new c(this, localExecutorService));
		c();
	}

	public static Class a(String paramString, Collection paramCollection) {
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
		this.initExecutor.a();
		Iterator localIterator = this.bundlesManager.b();
		while (localIterator.hasNext()) {
			AppBundle locala = (AppBundle) localIterator.next();
			if ((locala.hasClass()) && (locala.getInitLevel() != 11110000))
				this.initExecutor.a(locala);
		}
		this.initExecutor.b();
	}

	private boolean d(String paramString) {
		synchronized (this.map) {
			boolean bool = this.map.containsKey(paramString);
			return bool;
		}
	}

	private d e(String paramString) {
		synchronized (this.map) {
			d locald = (d) this.map.get(paramString);
			return locald;
		}
	}

	public final Context a() {
		return this.ctx;
	}

	public final void a(AppBundle parama) {
		this.initExecutor.a();
		this.initExecutor.a(parama);
		this.initExecutor.b();
	}

	public final void a(String paramString) {
		synchronized (this.map) {
			this.map.remove(paramString);
			return;
		}
	}

	public final void a(String paramString, d paramd) {
		synchronized (this.map) {
			this.map.put(paramString, paramd);
			return;
		}
	}

	public final Loadable b(String paramString) {
		if (!d(paramString)) {
			AppBundle locala = this.bundlesManager.getBundle(paramString);
			if (this.bundlesManager.b(paramString)) {
				com.alipay.mobile.quinox.utils.ZLog.d("BootstrapClassloader",
						"getQuinoxClassLoader static link ->bundle: "
								+ paramString);
				return this.e;
			}
			if (locala == null) {
				com.alipay.mobile.quinox.utils.ZLog.d("BootstrapClassloader",
						"getQuinoxClassLoader can't find bundle: "
								+ paramString);
				return null;
			}
			this.initExecutor.a(paramString);
		}
		return e(paramString);
	}

	public final String b() {
		return this.bundlesManager.d() + File.pathSeparator
				+ this.ctx.getApplicationInfo().dataDir + File.separator + "lib";
	}

	public final void b(AppBundle parama) {
		this.initExecutor.b(parama);
	}

	public final Loadable c(String paramString) {
		if (!d(paramString)) {
			AppBundle locala = this.bundlesManager.getBundle(paramString);
			if (locala == null)
				com.alipay.mobile.quinox.utils.ZLog.d("BootstrapClassloader",
						"getBundleClassLoader can't find bundle: "
								+ paramString);
			while (!locala.hasClass())
				return null;
			this.initExecutor.a(paramString);
		}
		return e(paramString);
	}

	@TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
	protected final Class<?> findClass(String paramString) {
		com.alipay.mobile.quinox.utils.ZLog.i("BootstrapClassloader", Thread
				.currentThread().getName()
				+ ":"
				+ this
				+ " findClass: "
				+ paramString);
		AppBundle locala = this.bundlesManager.c(paramString);
		if (locala != null) {
			Loadable localh = b(locala.getBundleName());
			if ((localh == null) && (locala.getInitLevel() == 11110000)) {
				a(locala);
				localh = b(locala.getBundleName());
			}
			if ((localh != null) && (localh != this.e))
				return localh.loadClassFromCurrent(paramString);
		}
		return this.e.loadClass(paramString);
	}
}
