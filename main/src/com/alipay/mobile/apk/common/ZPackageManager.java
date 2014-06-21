package com.alipay.mobile.apk.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;

public class ZPackageManager {
	private Context ctx;

	public ZPackageManager(Context ctx) {
		this.ctx = ctx;
	}

	public ZPackageInfo getPackageArchiveInfo(String paramString, int paramInt) {
		PackageInfo localPackageInfo = ctx.getPackageManager()
				.getPackageArchiveInfo(paramString, paramInt);
		if (localPackageInfo == null)
			return null;
		ZPackageInfo localZPackageInfo = new ZPackageInfo(localPackageInfo);
		localZPackageInfo.setArchiveFilePath(paramString);
		return localZPackageInfo;
	}

	public PackageInfo getPackageInfo(String paramString, int paramInt)
			throws NameNotFoundException {
		return ctx.getPackageManager().getPackageInfo(paramString, paramInt);
	}
}
