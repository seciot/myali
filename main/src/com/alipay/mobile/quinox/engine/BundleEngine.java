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
		final Intent intent2 = new Intent(intent);
		intent2.setComponent(null);
		intent2.setFlags(262144);
		final BundleContext bundleContext = getBundleContext();
		final String className = intent.getComponent().getClassName();
		final String bundleNameByComponent = bundleContext
				.getBundleNameByComponent(className);
		if (TextUtils.isEmpty((CharSequence) bundleNameByComponent)) {
			Log.e("BundleEngine", "ClassLoaderError currentcomponentClassName:"
					+ className + " canNot find bundleName:"
					+ bundleNameByComponent);
		}
		final ClassLoader classLoaderByBundleName = bundleContext
				.findClassLoaderByBundleName(bundleNameByComponent);
		if (classLoaderByBundleName == null) {
			Log.e("BundleEngine", "ClassLoaderError currentBunldleName:"
					+ bundleNameByComponent + ",componetClassName:" + className
					+ " canNot find bundleClassLoader");
		}
		intent2.setAction("android.intent.action.bundle."
				+ getProxyClazz(className, classLoaderByBundleName)
						.getSimpleName() + "_SHELL");
		intent2.setData(Uri.parse("content://"
				+ intent.getComponent().getClassName()));
		context.startActivity(intent2);
	}

	public static void startActivityForResult(final Activity activity,
			final Intent intent, final int n) {
		if (intent.getComponent() == null) {
			throw new ActivityNotFoundException("No Activity found to handle "
					+ intent);
		}
		final Intent intent2 = new Intent(intent);
		intent2.setComponent(null);
		intent2.setFlags(262144);
		final BundleContext bundleContext = getBundleContext();
		final String className = intent.getComponent().getClassName();
		final String bundleNameByComponent = bundleContext
				.getBundleNameByComponent(className);
		if (TextUtils.isEmpty((CharSequence) bundleNameByComponent)) {
			Log.e("BundleEngine", "ClassLoaderError currentcomponentClassName:"
					+ className + " canNot find bundleName:"
					+ bundleNameByComponent);
		}
		final ClassLoader classLoaderByBundleName = bundleContext
				.findClassLoaderByBundleName(bundleNameByComponent);
		if (classLoaderByBundleName == null) {
			Log.e("BundleEngine", "ClassLoaderError currentBunldleName:"
					+ bundleNameByComponent + ",componetClassName:" + className
					+ " canNot find bundleClassLoader");
		}
		intent2.setAction("android.intent.action.bundle."
				+ getProxyClazz(className, classLoaderByBundleName)
						.getSimpleName() + "_SHELL");
		intent2.setData(Uri.parse("content://"
				+ intent.getComponent().getClassName()));
		activity.startActivityForResult(intent2, n);
	}
}