package com.alipay.mobile.quinox;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Process;

import com.alipay.mobile.quinox.utils.ZLog;

public final class ExceptionHandler implements Thread.UncaughtExceptionHandler {
	private static final String TAG = "ExceptionHandler";
	private static ExceptionHandler instance;
	private Context app;
	private Thread.UncaughtExceptionHandler defaultHandler;

	public static ExceptionHandler a() {
		synchronized (ExceptionHandler.class) {
			if (instance == null) {
				instance = new ExceptionHandler();
			}
			return instance;
		}
	}

	public final void setUp(Context ctx) {
		if (Thread.getDefaultUncaughtExceptionHandler() instanceof ExceptionHandler) {
			return;
		}
		ZLog.v(TAG, "setUp()-->");
		app = ctx;
		defaultHandler = Thread.getDefaultUncaughtExceptionHandler();
		Thread.setDefaultUncaughtExceptionHandler(this);
	}

	public final void stop() {
		ZLog.v(TAG, "stop()-->");
		Thread.setDefaultUncaughtExceptionHandler(defaultHandler);
	}

	@Override
	public final void uncaughtException(final Thread thread, final Throwable t) {
		ZLog.v(TAG, "uncaughtException()-->");
		t.printStackTrace();
		Throwable cause;
		for (cause = t; cause.getCause() != null; cause = cause.getCause()) {
		}
		ZLog.v(TAG, "uncaughtException()--> rootCause: " + cause.toString()
				+ " Message:" + t.getMessage());
		if (cause != null
				&& t != null
				&& cause.toString() != null
				&& cause.toString().startsWith(
						"java.lang.ClassNotFoundException")
				&& t.getMessage() != null
				&& t.getMessage().startsWith("Unable to")
				&& "main".equalsIgnoreCase(Thread.currentThread().getName())) {
			final Intent intent = new Intent();
			intent.setClassName(app.getApplicationContext().getPackageName(),
					"com.eg.android.AlipayGphone.AlipayLogin");
			intent.addFlags(270565376);
			intent.setAction("android.intent.action.MAIN");
			intent.addCategory("android.intent.category.LAUNCHER");
			((AlarmManager) app.getSystemService("alarm")).set(1, 100L + System
					.currentTimeMillis(), PendingIntent.getActivity(
					app.getApplicationContext(), 0, intent, 268435456));
			ZLog.v(TAG, "uncaughtException 1<--");
			Process.killProcess(Process.myPid());
			System.exit(10);
			return;
		}
		ZLog.v(TAG, "uncaughtException 2<--");
		defaultHandler.uncaughtException(thread, t);
	}
}
