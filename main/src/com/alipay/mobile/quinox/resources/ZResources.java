package com.alipay.mobile.quinox.resources;

import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.DisplayMetrics;

public final class ZResources extends Resources {
	public ZResources(AssetManager paramAssetManager,
			DisplayMetrics paramDisplayMetrics, Configuration paramConfiguration) {
		super(paramAssetManager, paramDisplayMetrics, paramConfiguration);
	}

	public final XmlResourceParser getLayout(int paramInt) {
		return super.getLayout(paramInt);
	}
}
