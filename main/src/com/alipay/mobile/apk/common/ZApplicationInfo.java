package com.alipay.mobile.apk.common;

import android.content.pm.ApplicationInfo;

public class ZApplicationInfo extends ApplicationInfo {
	private String a;

	public ZApplicationInfo() {
	}

	public ZApplicationInfo(ApplicationInfo paramApplicationInfo) {
		super(paramApplicationInfo);
	}

	public String getArchiveFilePath() {
		return this.a;
	}

	public void setArchiveFilePath(String paramString) {
		this.a = paramString;
	}
}
