package com.alipay.mobile.quinox.classloader;

import com.alipay.mobile.quinox.LauncherApplication;
import com.alipay.mobile.quinox.bundle.BundlesManager;
import com.alipay.mobile.quinox.utils.ZLog;

import dalvik.system.PathClassLoader;

import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

public final class HostClassLoader extends PathClassLoader implements Bundleable {
	private LauncherApplication app;
	private BootstrapClassLoader bootstrapClassLoader;
	private PathClassLoader pathClassLoader;
	private String[] d;
	private String[] e;

	public HostClassLoader(BootstrapClassLoader parama, String paramString1,
			String paramString2, ClassLoader paramClassLoader,
			PathClassLoader paramPathClassLoader, BundlesManager bundlesManager) {
		super(paramString1, paramString2, paramClassLoader);
		this.pathClassLoader = paramPathClassLoader;
		this.bootstrapClassLoader = parama;
		this.app = ((LauncherApplication) this.bootstrapClassLoader.getContext());
		this.d = bundlesManager.g();
		this.e = bundlesManager.h();
	}

	private Class getClass(String className) {
		try {
			ZLog.i("HostClassLoader", Thread.currentThread().getName() + ":"
					+ this.pathClassLoader + " loadClass: " + className);
			Method localMethod1 = ClassLoader.class.getDeclaredMethod(
					"findLoadedClass", new Class[] { String.class });
			localMethod1.setAccessible(true);
			Class localClass = (Class) localMethod1.invoke(this.pathClassLoader,
					new Object[] { className });
			if (localClass == null) {
				Method localMethod2 = ClassLoader.class.getDeclaredMethod(
						"findClass", new Class[] { String.class });
				localMethod2.setAccessible(true);
				localClass = (Class) localMethod2.invoke(this.pathClassLoader,
						new Object[] { className });
			}
			return localClass;
		} catch (Exception localException) {
			throw new RuntimeException(this + "can't find class: "
					+ className);
		}
	}

	public final Set<Bundleable> getDepends() {
		final Set<Bundleable> depends = new HashSet<Bundleable>();
		if (this.e != null) {
			for (final String s : this.e) {
				if (s != null && s.length() > 0) {
					final Bundleable c = this.bootstrapClassLoader.getBundleClassLoader(s.split("@")[0]);
					if (c != null) {
						depends.add(c);
					}
				}
			}
		}
		return depends;
	}

	public final Class loadClass(final String s) {
		Label_0132: {
			if (this.app.pattern(s) || this.app.patternHost(s)) {
				break Label_0132;
			}
			final HashSet<Bundleable> set = new HashSet<Bundleable>();
			if (this.d != null) {
				for (final String s2 : this.d) {
					if (s2 != null && s2.length() > 0) {
						final Bundleable c = this.bootstrapClassLoader.getBundleClassLoader(s2);
						if (c != null) {
							set.add(c);
						}
					}
				}
			}
			Class clazz = BootstrapClassLoader.loadFromDepends(s, set);
			if (clazz == null) {
				break Label_0132;
			}
			return clazz;
			// try {
			// if (this.a.patternHost(s)) {
			// return this.a(s);
			// }
			// ZLog.i("HostClassLoader", Thread.currentThread().getName() + ":"
			// + this + " loadClass: " + s);
			// return super.loadClass(s);
			// }
			// catch (ClassNotFoundException ex) {
			// ZLog.i("HostClassLoader", Thread.currentThread().getName() + ":"
			// + this + " loadClass from depends: " + s);
			// clazz = BootstrapClassloader.a(s, this.getDepends());
			// if (clazz == null) {
			// throw ex;
			// }
			// return clazz;
			// }
		}

		throw new RuntimeException("");
	}

	public final Class<?> loadClassFromCurrent(String s) {
		if (this.app.patternHost(s)) {
			return this.getClass(s);
		}
		ZLog.i("HostClassLoader", Thread.currentThread().getName() + ":" + this
				+ " loadClass: " + s);
		try {
			return super.loadClass(s);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
}
