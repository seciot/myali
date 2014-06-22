package com.alipay.mobile.quinox.classloader;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

import android.os.Build;
import android.text.TextUtils;

import com.alipay.mobile.quinox.bundle.AppBundle;
import com.alipay.mobile.quinox.utils.DexUtil;
import com.alipay.mobile.quinox.utils.ZLog;

import dalvik.system.DexFile;

public final class BundleClassloader extends ClassLoader implements Loadable {
	private AppBundle appBundle;
	private BootstrapClassLoader bootstrapClassLoader;
	private DexFile dexFile;
	private File[] fileArray;
	private ZipFile zipFile;
	private File file;

	public BundleClassloader(final BootstrapClassLoader bootstrapClassLoader, final AppBundle bundle,
			final String rootPath, final String s2, final ClassLoader classLoader) {
		appBundle = bundle;
		this.bootstrapClassLoader = bootstrapClassLoader;
		try {
			if (Build.HARDWARE.toLowerCase().contains("mt6592")
					&& bundle.getBundlePath().endsWith(".so")) {
				final String replace = DexUtil
						.getDexFullPath(bundle.getBundlePath(), rootPath)
						.replace("plugins_opt", "plugins")
						.replace(".dex", ".jar");
				final File file = new File(replace);
				if (!file.exists()) {
					final BufferedInputStream bufferedInputStream = new BufferedInputStream(
							new FileInputStream(bundle.getBundlePath()));
					com.alipay.mobile.quinox.utils.FileUitl
							.saveInputStreamToFile(bufferedInputStream, file);
					bufferedInputStream.close();
				}
				dexFile = DexFile.loadDex(replace,
						DexUtil.getDexFullPath(bundle.getBundlePath(), rootPath), 0);
			} else {
				dexFile = DexFile.loadDex(bundle.getBundlePath(),
						DexUtil.getDexFullPath(bundle.getBundlePath(), rootPath), 0);
			}
			zipFile = new ZipFile(bundle.getBundlePath());
			file = new File(bundle.getBundlePath());
			fileArray = a(s2);
		} catch (IOException ex) {
			throw new RuntimeException(ex);
		}
	}

	private static File[] a(String paramString) {
		String[] arrayOfString = paramString.split(Pattern
				.quote(File.pathSeparator));
		File[] arrayOfFile = new File[arrayOfString.length];
		for (int i = 0; i < arrayOfString.length; i++)
			arrayOfFile[i] = new File(arrayOfString[i]);
		return arrayOfFile;
	}

	public final String findLibrary(String paramString) {
		String str = System.mapLibraryName(paramString);
		File[] arrayOfFile = fileArray;
		int i = arrayOfFile.length;
		for (int j = 0; j < i; j++) {
			File localFile = new File(arrayOfFile[j], str);
			if ((localFile.exists()) && (localFile.isFile())
					&& (localFile.canRead()))
				return localFile.getPath();
		}
		return null;
	}

	public final URL findResource(String paramString) {
		if ((zipFile == null)
				|| (zipFile.getEntry(paramString) == null))
			return null;
		try {
			URL localURL = new URL("jar:" + file.toURL() + "!/"
					+ paramString);
			return localURL;
		} catch (MalformedURLException localMalformedURLException) {
			throw new RuntimeException(localMalformedURLException);
		}
	}

	protected final Enumeration findResources(String paramString) {
		ArrayList localArrayList = new ArrayList();
		localArrayList.add(findResource(paramString));
		return Collections.enumeration(localArrayList);
	}

	public final Set getDepends() {
		String[] arrayOfString = appBundle.getRequireBundleName();
		HashSet localHashSet = new HashSet();
		if (arrayOfString != null) {
			int i = arrayOfString.length;
			for (int j = 0; j < i; j++) {
				String str = arrayOfString[j];
				if ((str != null) && (str.length() > 0)) {
					Loadable localh = bootstrapClassLoader.b(str
							.split("@")[0]);
					if (localh != null)
						localHashSet.add(localh);
				}
			}
		}
		return localHashSet;
	}

	protected final Package getPackage(String s) {
		// monitorenter(this)
		// monitorenter(this)
		if (TextUtils.isEmpty(s))
			return null;

		Package p = super.getPackage(s);
		if (p == null) {
			p = definePackage(s, "Unknown", "0.0", "Unknown", "Unknown", "0.0",
					"Unknown", null);
		}
		return p;

		// monitorexit(this)
	}

	public final Class<?> loadClass(String s) throws ClassNotFoundException {
		ZLog.i("BundleClassloader", Thread.currentThread().getName() + ":"
				+ this + " loadClass: " + s);
		Class<?> clazz = dexFile.loadClass(s, (ClassLoader) this);
		if (clazz == null) {
			ZLog.i("BundleClassloader", Thread.currentThread().getName() + ":"
					+ this + " loadClass from depends: " + s);
			clazz = BootstrapClassLoader.a(s, this.getDepends());
			if (clazz == null) {
				throw new ClassNotFoundException(this + " can,t find class: "
						+ s);
			}
		}
		return clazz;
	}

	public final Class<?> loadClassFromCurrent(String s)
			throws ClassNotFoundException {
		ZLog.i("BundleClassloader", Thread.currentThread().getName() + ":"
				+ this + " loadClassFromCurrent: " + s);
		final Class<?> loadClass = dexFile.loadClass(s, this);
		if (loadClass == null) {
			throw new ClassNotFoundException(this + " can,t find class: " + s);
		}
		return loadClass;
	}

	public final String toString() {
		return "BundleClassloader[" + dexFile.getName() + "]";
	}
}