package com.alipay.mobile.quinox.engine;

import java.io.File;

import android.app.Application;

import com.alipay.mobile.apk.common.AbstractEngine;
import com.alipay.mobile.apk.common.ZPackageInfo;
import com.alipay.mobile.apk.common.ZPackageManager;

import dalvik.system.DexClassLoader;

public class ApkEngineManager {
	private static ApkEngineManager manager;
	private Application app;
	@SuppressWarnings("unused")
	private AbstractEngine engine;

	private ApkEngineManager(Application paramApplication) {
		app = paramApplication;
		String str = app.getCacheDir().getAbsolutePath() + File.separator
				+ "tmpEngine.apk";
		MiscUtils
				.fileFromAssets("NativeApkEngine.apk", app.getAssets(), str);
		updateEngine(str);
	}

	private int a(String paramString) {
		ZPackageInfo localZPackageInfo = new ZPackageManager(app)
				.getPackageArchiveInfo(paramString, 1);
		if (localZPackageInfo != null)
			return localZPackageInfo.versionCode;
		return -1;
	}

	private String a() {
		String str = app.getFilesDir() + File.separator + "apk.engine";
		File localFile = new File(str);
		if ((localFile.mkdirs()) || (localFile.isDirectory()))
			return str + File.separator + "NativeApkEngine.apk";
		return null;
	}

	public static ApkEngineManager getInstance(Application paramApplication) {
		try {
			if (manager == null)
				manager = new ApkEngineManager(paramApplication);
			ApkEngineManager localApkEngineManager = manager;
			return localApkEngineManager;
		} finally {
		}
	}

	public AbstractEngine getEngine() {
        synchronized (this) {
            return this.getEngine("DefaultEngine");
        }
    }
    
    public AbstractEngine getEngine(final String s) {
        synchronized (this) {
            return this.engine = (AbstractEngine)MiscUtils.newInstance("com.alipay.mobile.apk.engine." + s, (ClassLoader)new DexClassLoader(this.a(), app.getCacheDir().getAbsolutePath(), (String)null, this.getClass().getClassLoader()));
        }
    }

	public Throwable getUnsupportedCause() {
		return getUnsupportedCause("DefaultEngine");
	}

	public Throwable getUnsupportedCause(String paramString) {
		AbstractEngine localAbstractEngine = getEngine(paramString);
		if (localAbstractEngine == null)
			return null;
		return localAbstractEngine.getUnsupportedCause();
	}

	public int getVersion() {
		return a(a());
	}

	public String getVersionName() {
		String str = a();
		return new ZPackageManager(app).getPackageArchiveInfo(str, 1).versionName;
	}

	public boolean isSupported() {
		return isSupported("DefaultEngine");
	}

	public boolean isSupported(String paramString) {
		AbstractEngine localAbstractEngine = getEngine(paramString);
		return (localAbstractEngine != null)
				&& (localAbstractEngine.isSupported(app));
	}

	public boolean updateEngine(final String s) {
        final String a = this.a();
        boolean copyFile;
        if (this.a(s) <= this.a(a)) {
            copyFile = false;
        }
        else {
            copyFile = MiscUtils.copyFile(s, a);
            if (copyFile) {
                this.engine = null;
                return copyFile;
            }
        }
        return copyFile;
    }
}