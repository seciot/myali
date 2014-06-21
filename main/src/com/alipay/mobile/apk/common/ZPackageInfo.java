package com.alipay.mobile.apk.common;

import android.content.pm.PackageInfo;

public class ZPackageInfo extends PackageInfo {
	private String archiveFilePath;
	public ZActivityInfo[] activities;

	public ZPackageInfo(PackageInfo paramPackageInfo) {
		if (paramPackageInfo == null)
			return;
		this.applicationInfo = paramPackageInfo.applicationInfo;
		this.configPreferences = paramPackageInfo.configPreferences;
		this.gids = paramPackageInfo.gids;
		this.instrumentation = paramPackageInfo.instrumentation;
		this.packageName = paramPackageInfo.packageName;
		this.permissions = paramPackageInfo.permissions;
		this.providers = paramPackageInfo.providers;
		this.receivers = paramPackageInfo.receivers;
		this.reqFeatures = paramPackageInfo.reqFeatures;
		this.requestedPermissions = paramPackageInfo.requestedPermissions;
		this.services = paramPackageInfo.services;
		this.sharedUserId = paramPackageInfo.sharedUserId;
		this.sharedUserLabel = paramPackageInfo.sharedUserLabel;
		this.signatures = paramPackageInfo.signatures;
		this.versionCode = paramPackageInfo.versionCode;
		this.versionName = paramPackageInfo.versionName;
		a(paramPackageInfo);
	}

	private void a(final PackageInfo packageInfo) {
		if (packageInfo != null && packageInfo.activities != null
				&& packageInfo.activities.length > 0) {
			this.activities = new ZActivityInfo[packageInfo.activities.length];
			for (int i = 0; i < packageInfo.activities.length; ++i) {
				(this.activities[i] = new ZActivityInfo(
						packageInfo.activities[i])).setArchiveFilePath(this
						.getArchiveFilePath());
			}
		}
	}

	public ZActivityInfo findActivityInfo(String paramString) {
		for (ZActivityInfo localZActivityInfo : this.activities)
			if ((localZActivityInfo != null)
					&& (localZActivityInfo.name.equalsIgnoreCase(paramString)))
				return localZActivityInfo;
		return null;
	}

	public String getArchiveFilePath() {
		return archiveFilePath;
	}

	public void setArchiveFilePath(final String path) {
		archiveFilePath = path;
		if (this.activities != null) {
			for (final ZActivityInfo zActivityInfo : this.activities) {
				if (zActivityInfo != null) {
					zActivityInfo.setArchiveFilePath(this.archiveFilePath);
				}
			}
		}
	}
}