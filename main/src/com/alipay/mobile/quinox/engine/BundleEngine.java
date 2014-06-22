package com.alipay.mobile.quinox.engine;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

public class BundleEngine {
	public static Object app;

	public static BundleContext getBundleContext() {
		return new BundleContext(app);
	}

	public static Class<?> getProxyClazz(String className,
			ClassLoader classLoader) {
		try {
			for (Class<?> clazz = classLoader.loadClass(className)
					.getSuperclass(); clazz != null; clazz = clazz
					.getSuperclass()) {
				if (clazz.getName().startsWith("android.")) {
					return clazz;
				}
			}
			return null;
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}

	public static void startActivity(final Context context, final Intent intent) {
		if (intent.getComponent() == null) {
			throw new ActivityNotFoundException("No Activity found to handle "
					+ intent);
		}
		final Intent realIntent = new Intent(intent);
		realIntent.setComponent(null);
		realIntent.setFlags(262144);
		final BundleContext bundleContext = getBundleContext();
		final String className = intent.getComponent().getClassName();
		final String bundleName = bundleContext
				.getBundleNameByComponent(className);
		if (TextUtils.isEmpty(bundleName)) {
			Log.e("BundleEngine", "ClassLoaderError currentcomponentClassName:"
					+ className + " canNot find bundleName:"
					+ bundleName);
			return;
		}
		final ClassLoader classLoader = bundleContext
				.findClassLoaderByBundleName(bundleName);
		if (classLoader == null) {
			Log.e("BundleEngine", "ClassLoaderError currentBunldleName:"
					+ bundleName + ",componetClassName:" + className
					+ " canNot find bundleClassLoader");
			return;
		}
		realIntent.setAction("android.intent.action.bundle."
				+ getProxyClazz(className, classLoader)
						.getSimpleName() + "_SHELL");
		realIntent.setData(Uri.parse("content://"
				+ intent.getComponent().getClassName()));
		context.startActivity(realIntent);
	}

	public static void startActivityForResult(final Activity activity,
			final Intent intent, final int reqCode) {
		if (intent.getComponent() == null) {
			throw new ActivityNotFoundException("No Activity found to handle "
					+ intent);
		}
		final Intent realIntent = new Intent(intent);
		realIntent.setComponent(null);
		realIntent.setFlags(262144);
		final BundleContext bundleContext = getBundleContext();
		final String className = intent.getComponent().getClassName();
		final String bundleName = bundleContext
				.getBundleNameByComponent(className);
		if (TextUtils.isEmpty(bundleName)) {
			Log.e("BundleEngine", "ClassLoaderError currentcomponentClassName:"
					+ className + " canNot find bundleName:"
					+ bundleName);
			return;
		}
		
		final ClassLoader classLoader = bundleContext
				.findClassLoaderByBundleName(bundleName);
		if (classLoader == null) {
			Log.e("BundleEngine", "ClassLoaderError currentBunldleName:"
					+ bundleName + ",componetClassName:" + className
					+ " canNot find bundleClassLoader");
			return;
		}
		
		realIntent.setAction("android.intent.action.bundle."
				+ getProxyClazz(className, classLoader)
						.getSimpleName() + "_SHELL");
		realIntent.setData(Uri.parse("content://"
				+ intent.getComponent().getClassName()));
		activity.startActivityForResult(realIntent, reqCode);
	}
}