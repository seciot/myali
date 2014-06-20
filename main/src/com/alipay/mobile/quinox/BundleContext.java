package com.alipay.mobile.quinox;

import android.os.Looper;
import android.text.TextUtils;

import com.alipay.mobile.quinox.bundle.b;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

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
		if ((localClassLoader instanceof com.alipay.mobile.quinox.classloader.a))
			localClassLoader = (ClassLoader) ((com.alipay.mobile.quinox.classloader.a) localClassLoader)
					.b(bundleName);
		return localClassLoader;
	}

	public Set<String> findPackagesByBundleName(String bundleName) {
		String[] arrayOfString = app.getBundlesManager().a(bundleName).g();
		if (TextUtils.isEmpty(bundleName))
			return new HashSet<String>();

		int len = arrayOfString.length;
		Set<String> set = new HashSet<String>();
		for (int j = 0; j < len; j++)
			set.add(arrayOfString[j]);
		return set;
	}

	public Set getAllBundleNames() {
		Set localSet = app.getBundlesManager().i();
		HashSet localHashSet = new HashSet();
		Iterator localIterator = localSet.iterator();
		while (localIterator.hasNext())
			localHashSet.add(((com.alipay.mobile.quinox.bundle.a) localIterator
					.next()).c());
		return localHashSet;
	}

	public String getBundleNameByComponent(String componentName) {
		com.alipay.mobile.quinox.bundle.a locala = app.getBundlesManager()
				.c(componentName);
		if (locala == null)
			return null;
		return locala.c();
	}

	public void init(String paramString) {
		b localb = app.getBundlesManager();
		com.alipay.mobile.quinox.bundle.a locala = localb.a(paramString);
		com.alipay.mobile.quinox.classloader.a locala1 = localb.j();
		if (locala1.b(paramString) == null) {
			locala1.a(locala);
			locala1.b(paramString);
		}
	}

	public void removeExternelBundle(String paramString) {
		app.getBundlesManager().e(paramString);
	}

	public void updateBundles(List paramList1, List paramList2) {
		if ((Looper.myLooper() != null)
				&& (Looper.myLooper() == Looper.getMainLooper()))
			throw new RuntimeException("can't in main thread");
		app.getBundlesManager().a(paramList1);
	}
}
