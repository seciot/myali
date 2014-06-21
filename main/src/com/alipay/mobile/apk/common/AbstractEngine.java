package com.alipay.mobile.apk.common;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.os.Bundle;
import dalvik.system.DexClassLoader;

public abstract class AbstractEngine {
	public abstract Instrumentation getInstrumentation(Activity paramActivity);

	public abstract Throwable getUnsupportedCause();

	public abstract boolean isSupported(Application paramApplication);

	public abstract Activity makeActivity(ZActivityInfo paramZActivityInfo,
			Activity paramActivity, Application paramApplication);

	public abstract Activity makeActivity(ZActivityInfo paramZActivityInfo,
			Activity paramActivity, ClassLoader paramClassLoader);

	public abstract Application makeApplication(
			ZApplicationInfo paramZApplicationInfo, Application paramApplication);

	public abstract void onActivityShellPause();

	public abstract void onActivityShellResume();

	public abstract void setDexClassLoader(DexClassLoader paramDexClassLoader);

	public abstract void startActivity(Activity paramActivity,
			ZActivityInfo paramZActivityInfo, Bundle paramBundle);
}