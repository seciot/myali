package com.alipay.mobile.quinox;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;

import com.alipay.mobile.quinox.bundle.AppBundle;
import com.alipay.mobile.quinox.bundle.BundlesManager;
import com.alipay.mobile.quinox.classloader.BootstrapClassLoader;
import com.alipay.mobile.quinox.utils.ZLog;

public class LauncherApplication extends Application {
	private static final String[] a = { "mobile-base-commonbiz",
			"mobile-framework-framework" };
	private Object packageInfo;
	private BootstrapClassLoader bootstrapClassLoader;
	private Resources resources;
	private BundlesManager bundlesManager;
	private BundleContext bundleContext;
	private Application app;
	private Observable observable = new Observable() {};

	private Handler handler;
	private HandlerThread handlerThread;
	private boolean isLoadingClass;

	public void LogError(Throwable paramThrowable, String paramString) {
		try {
			Class localClass = getClassLoader().loadClass(
					"com.alipay.mobile.common.logagent.SystemExceptionHandler");
			Object localObject = localClass.getDeclaredMethod("getInstance",
					new Class[0]).invoke(null, new Object[0]);
			localClass.getDeclaredMethod("init", new Class[] { Context.class })
					.invoke(localObject, new Object[] { this });
			localClass.getDeclaredMethod("saveErrorInfoToFile",
					new Class[] { Throwable.class, String.class }).invoke(
					localObject, new Object[] { paramThrowable, paramString });
			return;
		} catch (Exception localException) {
			com.alipay.mobile.quinox.utils.ZLog.e("verify", "LogError",
					localException);
		}
	}

	public void LogInfo(String paramString) {
		try {
			getClassLoader()
					.loadClass(
							"com.alipay.mobile.common.logagent.AlipayLogAgent")
					.getDeclaredMethod(
							"writeLog",
							new Class[] { Context.class, String.class,
									String.class, String.class, String.class,
									String.class, String.class, String.class,
									String.class })
					.invoke(null,
							new Object[] { this, "dynamicLoadToCheck",
									paramString, null, null, null, null, null,
									null });
			return;
		} catch (Exception localException) {
			com.alipay.mobile.quinox.utils.ZLog.e("verify", "LogError",
					localException);
		}
	}

	public void addListener(Observer paramObserver) {
		this.observable.addObserver(paramObserver);
	}

	public boolean bootFinish() {
		return this.isLoadingClass;
	}

	public AssetManager getAssets() {
		if (this.resources == null)
			return super.getAssets();
		return this.resources.getAssets();
	}

	public BundleContext getBundleContext() {
		return this.bundleContext;
	}

	public BundlesManager getBundlesManager() {
		return this.bundlesManager;
	}

	public ClassLoader getClassLoader() {
		if (this.bootstrapClassLoader == null)
			return super.getClassLoader();
		return this.bootstrapClassLoader;
	}

	public Resources getResources() {
		if (this.resources == null)
			return super.getResources();
		return this.resources;
	}

	public void onConfigurationChanged(Configuration paramConfiguration) {
		super.onConfigurationChanged(paramConfiguration);
		if (this.app != null)
			this.app.onConfigurationChanged(paramConfiguration);
	}

	public void onCreate() {
		super.onCreate();
		this.isLoadingClass = false;
		int currentPid = Process.myPid();
		ActivityManager.RunningAppProcessInfo currentProcessInfo = null;
		Iterator<RunningAppProcessInfo> ite = ((ActivityManager) getSystemService("activity"))
				.getRunningAppProcesses().iterator();
		while(ite.hasNext()){
			ActivityManager.RunningAppProcessInfo processInfo = ite.next();
			if(processInfo.pid == currentPid)
				currentProcessInfo = processInfo;
		}
		
		if(!getPackageName().equalsIgnoreCase(currentProcessInfo.processName))
			return;
		
		ExceptionHandler.getInstance().setUp(this);
		
		try {
			Context ctx = getBaseContext();
			Field mPackageInfo = ctx.getClass().getDeclaredField(
					"mPackageInfo");
			mPackageInfo.setAccessible(true);
			packageInfo = mPackageInfo.get(ctx);
			handlerThread = new HandlerThread("Init");
			handlerThread.start();
			handler = new Handler(this.handlerThread.getLooper());
			handler.post(new Runnable() {
				@Override
				public void run() {
					// TODO
					// LauncherApplication.access$100(this.a);
					LauncherApplication.this.handlerThread.quit();
				}
			});
			ClassLoader classLoader = getClass().getClassLoader();
			try {
				Field parent = ClassLoader.class
						.getDeclaredField("parent");
				parent.setAccessible(true);
				parent.set(classLoader, new OriginClassLoader());
				return;
			} catch (Exception localException) {
				throw new RuntimeException(localException);
			}
		} catch (Exception localIllegalArgumentException) {
			throw new RuntimeException(localIllegalArgumentException);
		}
	}

	public void onLowMemory() {
		super.onLowMemory();
		if (this.app != null)
			this.app.onLowMemory();
	}

	public void onTerminate() {
		super.onTerminate();
		if (this.app != null)
			this.app.onTerminate();
	}

	/**
	 * 判断是否用BootstrapClassLoader加载
	 * @param className
	 * @return 返回True表示用默认ClassLoader加载, 返回False表示用BootstrapClassLoader加载
	 */
	public boolean pattern(String className) {
		return (className.startsWith("android.") && !className.startsWith("android.support."))
				|| (className.startsWith("java"))
				|| (className.startsWith("dalvik."))
				|| (className.startsWith("org.w3c."))
				|| (className.startsWith("junit."))
				|| (className.startsWith("org.apache."))
				|| (className.startsWith("org.xml"))
				|| (className.startsWith("org.json."));
	}

	/**
	 * 判断是否用BootstrapClassLoader加载
	 * @param className
	 * @return 返回True表示用默认ClassLoader加载, 返回False表示用BootstrapClassLoader加载
	 */
	public boolean patternHost(String className) {
		return (className.startsWith("com.alipay.mobile.quinox.bundle"))
				|| (className.startsWith("com.alipay.android.phone.automation.testui.MainTestActivity"))
				|| (className.startsWith("com.eg.android.AlipayGphone"))
				|| (className.startsWith(getPackageName()))
				|| (className.startsWith("com.alipay.mobile.quinox.classloader"))
				|| (className.startsWith("com.alipay.mobile.quinox.resources"))
				|| (className.startsWith("com.alipay.mobile.quinox.splash"))
				|| (className.startsWith("com.alipay.mobile.quinox.utils"))
				|| (className.startsWith("com.alipay.mobile.quinox.LauncherApplication"))
				|| (className.startsWith("com.alipay.mobile.quinox.BundleContext"))
				|| (className.startsWith("com.alipay.mobile.quinox.ExceptionHandler"));
	}

	public void recover() throws IllegalAccessException,
			IllegalArgumentException, InvocationTargetException,
			NoSuchMethodException {
		if (app != null) {
			app.getClass().getDeclaredMethod("recover", new Class[] {})
					.invoke(app, new Object[] {});
		}
	}

	public void removeListener(Observer paramObserver) {
		observable.deleteObserver(paramObserver);
	}

	public void setupResources() {
		Resources res = getResources();
		AssetManager localAssetManager;
		try {
			localAssetManager = (AssetManager) AssetManager.class.newInstance();
			Method localMethod = AssetManager.class.getDeclaredMethod(
					"addAssetPath", new Class[] { String.class });
			localMethod.setAccessible(true);
			Object[] arrayOfObject1 = new Object[1];
			arrayOfObject1[0] = getApplicationInfo().sourceDir;
			localMethod.invoke(localAssetManager, arrayOfObject1);
			Iterator localIterator = this.bundlesManager.b();
			while (localIterator.hasNext()) {
				AppBundle locala = (AppBundle) localIterator.next();
				if (locala.hasResource()) {
					Object[] arrayOfObject2 = new Object[1];
					arrayOfObject2[0] = locala.getBundlePath();
					localMethod.invoke(localAssetManager, arrayOfObject2);
				}
			}
		} catch (InstantiationException localInstantiationException) {
			throw new RuntimeException(localInstantiationException);
			// TODO
			// this.d = new com.alipay.mobile.quinox.resources.a(
			// localAssetManager, localResources1.getDisplayMetrics(),
			// localResources1.getConfiguration());
			// Resources localResources2 = this.d;
			// Field localField =
			// this.b.getClass().getDeclaredField("mResources");
			// localField.setAccessible(true);
			// localField.set(this.b, localResources2);
			// return;
		} catch (Exception exception) {
			throw new RuntimeException(exception);
		}
	}

	final class OriginClassLoader extends ClassLoader {
		@TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
		public Class<?> findClass(String className)
				throws ClassNotFoundException {
			ZLog.d("OriginClassLoader", this + "load class: " + className);

			if (LauncherApplication.this.pattern(className)
					|| LauncherApplication.this.patternHost(className)) {
				return super.findClass(className);
			}

			while (!LauncherApplication.this.isLoadingClass) {
				try {
					Thread.sleep(300L);
				} catch (InterruptedException ex) {
					ex.printStackTrace();
				}
			}
			return LauncherApplication.this.bootstrapClassLoader
					.loadClass(className);
		}
	}
}
