package com.alipay.mobile.apk.common;

import android.content.pm.ActivityInfo;

public class ZActivityInfo extends ActivityInfo {
	private String archiveFilePath;

	public ZActivityInfo() {
	}

	public ZActivityInfo(ActivityInfo paramActivityInfo) {
		super(paramActivityInfo);
	}

	public String getArchiveFilePath() {
		return archiveFilePath;
	}

	public void setArchiveFilePath(String path) {
		archiveFilePath = path;
	}
}
