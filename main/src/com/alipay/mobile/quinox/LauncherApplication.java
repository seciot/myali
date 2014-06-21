package com.alipay.mobile.quinox;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

import android.annotation.TargetApi;
import android.app.ActivityManager;
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
	private Object b;
	private BootstrapClassLoader bootstrapClassLoader;
	private Resources resources;
	private BundlesManager bundlesManager;
	private BundleContext bundleContext;
	private Application app;
	// TODO
	// private d h = new d(this, (byte)0);
	private Observable observable = new Observable() {
	};

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
		String str1 = getPackageName();
		int m = Process.myPid();
		Iterator localIterator = ((ActivityManager) getSystemService("activity"))
				.getRunningAppProcesses().iterator();
		ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
		do {
			if (!localIterator.hasNext())
				break;
			localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) localIterator
					.next();
		} while (localRunningAppProcessInfo.pid != m);
		// TODO
		// for (String str2 = localRunningAppProcessInfo.processName;
		// !str1.equalsIgnoreCase(str2); str2 = null)
		// return;
		// a.a().a(this);
		try {
			Context localContext = getBaseContext();
			Field localField1 = localContext.getClass().getDeclaredField(
					"mPackageInfo");
			localField1.setAccessible(true);
			this.b = localField1.get(localContext);
			this.handlerThread = new HandlerThread("Init");
			this.handlerThread.start();
			this.handler = new Handler(this.handlerThread.getLooper());
			this.handler.post(new Runnable() {
				@Override
				public void run() {
					// TODO
					// LauncherApplication.access$100(this.a);
					LauncherApplication.this.handlerThread.quit();
				}
			});
			ClassLoader localClassLoader = getClass().getClassLoader();
			try {
				Field localField2 = ClassLoader.class
						.getDeclaredField("parent");
				localField2.setAccessible(true);
				localField2.set(localClassLoader, new OriginClassLoader());
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

	public boolean pattern(String paramString) {
		return ((paramString.startsWith("android.")) && (!paramString
				.startsWith("android.support.")))
				|| (paramString.startsWith("java"))
				|| (paramString.startsWith("dalvik."))
				|| (paramString.startsWith("org.w3c."))
				|| (paramString.startsWith("junit."))
				|| (paramString.startsWith("org.apache."))
				|| (paramString.startsWith("org.xml"))
				|| (paramString.startsWith("org.json."));
	}

	public boolean patternHost(String paramString) {
		return (paramString.startsWith("com.alipay.mobile.quinox.bundle"))
				|| (paramString
						.startsWith("com.alipay.android.phone.automation.testui.MainTestActivity"))
				|| (paramString.startsWith("com.eg.android.AlipayGphone"))
				|| (paramString.startsWith(getPackageName()))
				|| (paramString
						.startsWith("com.alipay.mobile.quinox.classloader"))
				|| (paramString
						.startsWith("com.alipay.mobile.quinox.resources"))
				|| (paramString.startsWith("com.alipay.mobile.quinox.splash"))
				|| (paramString.startsWith("com.alipay.mobile.quinox.utils"))
				|| (paramString
						.startsWith("com.alipay.mobile.quinox.LauncherApplication"))
				|| (paramString
						.startsWith("com.alipay.mobile.quinox.BundleContext"))
				|| (paramString
						.startsWith("com.alipay.mobile.quinox.ExceptionHandler"));
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
		this.observable.deleteObserver(paramObserver);
	}

	public void setupResources() {
		Resources localResources1 = getResources();
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
