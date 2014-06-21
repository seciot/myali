package com.alipay.mobile.quinox.utils;

import android.util.Log;

public final class ZLog {
	private static boolean debug = false;

	public static void v(String paramString1, String paramString2) {
		if (debug)
			Log.v(paramString1, paramString2);
	}

	public static void e(String paramString1, String paramString2,
			Throwable paramThrowable) {
		if (debug)
			Log.e(paramString1, paramString2, paramThrowable);
	}

	public static void d(String paramString1, String paramString2) {
		if (debug)
			Log.d(paramString1, paramString2);
	}

	public static void i(String paramString1, String paramString2) {
		if (debug)
			Log.i(paramString1, paramString2);
	}
}