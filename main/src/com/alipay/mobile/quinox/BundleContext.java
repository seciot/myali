package com.alipay.mobile.quinox;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import android.os.Looper;
import android.text.TextUtils;

import com.alipay.mobile.quinox.bundle.AppBundle;
import com.alipay.mobile.quinox.bundle.BundlesManager;

public class BundleContext {
	private LauncherApplication app;

	public BundleContext(LauncherApplication application) {
		app = application;
	}

	public String addExternelBundle(String paramString) {
		if ((Looper.myLooper() != null)
				&& (Looper.myLooper() == Looper.getMainLooper()))
			throw new RuntimeException("can't in main thread");
		return app.getBundlesManager().d(paramString);
	}

	public ClassLoader findClassLoaderByBundleName(String bundleName) {
		ClassLoader localClassLoader = app.getClassLoader();
		if ((localClassLoader instanceof com.alipay.mobile.quinox.classloader.BootstrapClassLoader))
			localClassLoader = (ClassLoader) ((com.alipay.mobile.quinox.classloader.BootstrapClassLoader) localClassLoader)
					.b(bundleName);
		return localClassLoader;
	}

	public Set<String> findPackagesByBundleName(String bundleName) {
		String[] arrayOfString = app.getBundlesManager().getBundle(bundleName).g();
		if (TextUtils.isEmpty(bundleName))
			return new HashSet<String>();

		int len = arrayOfString.length;
		Set<String> set = new HashSet<String>();
		for (int j = 0; j < len; j++)
			set.add(arrayOfString[j]);
		return set;
	}

	public Set<String> getAllBundleNames() {
		Set<AppBundle> allBundles = app.getBundlesManager().getAllBundles();
		Set<String> allBundleNames = new HashSet<String>();
		Iterator<AppBundle> ite = allBundles.iterator();
		while (ite.hasNext())
			allBundleNames.add((ite.next()).getBundleName());
		return allBundleNames;
	}

	public String getBundleNameByComponent(String componentName) {
	    AppBundle locala = app.getBundlesManager()
				.getBundleByComponentName(componentName);
		if (locala == null)
			return null;
		return locala.getBundleName();
	}

	public void init(String paramString) {
		BundlesManager manager = app.getBundlesManager();
		AppBundle locala = manager.getBundle(paramString);
		com.alipay.mobile.quinox.classloader.BootstrapClassLoader locala1 = manager.j();
		if (locala1.b(paramString) == null) {
			locala1.a(locala);
			locala1.b(paramString);
		}
	}

	public void removeExternelBundle(String bundleName) {
		app.getBundlesManager().removeBundle(bundleName);
	}

	public void updateBundles(List<String> paramList1, List<String> paramList2) {
		if ((Looper.myLooper() != null)
				&& (Looper.myLooper() == Looper.getMainLooper()))
			throw new RuntimeException("can't in main thread");
		app.getBundlesManager().a(paramList1);
	}
}
