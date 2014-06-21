package com.alipay.mobile.quinox.engine;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Set;

public class BundleContext {
	private Object app;

	public BundleContext(Object paramObject) {
		app = paramObject;
	}

	public void addExternelBundle(final String s)
			throws IllegalAccessException, IllegalArgumentException,
			InvocationTargetException, NoSuchMethodException {
		app.getClass().getDeclaredMethod("addExternelBundle", String.class)
				.invoke(app, s);
	}

	public ClassLoader findClassLoaderByBundleName(final String bundleName) {
		try {
			return (ClassLoader) app
					.getClass()
					.getDeclaredMethod("findClassLoaderByBundleName",
							String.class).invoke(app, bundleName);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Set<String> findPackagesByBundleName(final String bundleName) {
		try {
			return (Set<String>) app
					.getClass()
					.getDeclaredMethod("findPackagesByBundleName", String.class)
					.invoke(app, bundleName);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public Set<String> getAllBundleNames() {
		try {
			return (Set<String>) app
					.getClass()
					.getDeclaredMethod("getAllBundleNames",
							(Class<?>[]) new Class[0])
					.invoke(app, new Object[0]);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	public String getBundleNameByComponent(final String s) {
		try {
			return (String) app
					.getClass()
					.getDeclaredMethod("getBundleNameByComponent", String.class)
					.invoke(app, s);
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}

	public void removeExternelBundle(final String s)
			throws IllegalAccessException, IllegalArgumentException,
			InvocationTargetException, NoSuchMethodException {
		app.getClass().getDeclaredMethod("removeExternelBundle", String.class)
				.invoke(app, s);
	}

	public void updateBundles(final List<String> list, final List<String> list2)
			throws IllegalAccessException, IllegalArgumentException,
			InvocationTargetException, NoSuchMethodException {
		app.getClass()
				.getDeclaredMethod("updateBundles", List.class, List.class)
				.invoke(app, list, list2);
	}
}
