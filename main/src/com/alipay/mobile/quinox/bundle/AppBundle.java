package com.alipay.mobile.quinox.bundle;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.zip.ZipFile;

import android.content.pm.Signature;

@SuppressWarnings("rawtypes")
//a.java
public final class AppBundle implements Comparable {
	private String bundleName;
	private String bundleVersion;
	private String fullBundleName;
	private int initLevel;
	private String bundlePath;
	private String[] packageNames;
	private String[] allComponentNames;
	private String packageId;
	private boolean hasResource;
	private boolean hasClass;
	private String[] requireBundleNames;
	private boolean l;

	public AppBundle(String paramString) {
		this.bundlePath = paramString;
	}

	private static boolean a(Signature[] array, Signature[] array2) {
		if (array != null && array2 != null) {
			final HashSet<Signature> set = new HashSet<Signature>();
			for (int length = array.length, i = 0; i < length; ++i) {
				set.add(array[i]);
			}
			final HashSet<Signature> set2 = new HashSet<Signature>();
			for (int length2 = array2.length, j = 0; j < length2; ++j) {
				set2.add(array2[j]);
			}
			if (set.equals(set2)) {
				return true;
			}
		}
		return false;
	}

	// ERROR //
	private static Certificate[] a(JarFile paramJarFile,
			JarEntry paramJarEntry, byte[] paramArrayOfByte) {
		return null;
		// Byte code:
		// 0: aconst_null
		// 1: astore_3
		// 2: aload_1
		// 3: ifnonnull +5 -> 8
		// 6: aload_3
		// 7: areturn
		// 8: aload_0
		// 9: aload_1
		// 10: invokevirtual 47 java/util/jar/JarFile:getInputStream
		// (Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
		// 13: astore 7
		// 15: aload 7
		// 17: astore 5
		// 19: aload 5
		// 21: aload_2
		// 22: iconst_0
		// 23: aload_2
		// 24: arraylength
		// 25: invokevirtual 53 java/io/InputStream:read ([BII)I
		// 28: iconst_m1
		// 29: if_icmpne -10 -> 19
		// 32: aload 5
		// 34: invokevirtual 56 java/io/InputStream:close ()V
		// 37: aconst_null
		// 38: astore_3
		// 39: aload_1
		// 40: ifnull +12 -> 52
		// 43: aload_1
		// 44: invokevirtual 62 java/util/jar/JarEntry:getCertificates
		// ()[Ljava/security/cert/Certificate;
		// 47: astore 8
		// 49: aload 8
		// 51: astore_3
		// 52: aload 5
		// 54: ifnull -48 -> 6
		// 57: aload 5
		// 59: invokevirtual 56 java/io/InputStream:close ()V
		// 62: aload_3
		// 63: areturn
		// 64: astore 4
		// 66: aconst_null
		// 67: astore 5
		// 69: aload 4
		// 71: astore 6
		// 73: aload 5
		// 75: ifnull +8 -> 83
		// 78: aload 5
		// 80: invokevirtual 56 java/io/InputStream:close ()V
		// 83: aload 6
		// 85: athrow
		// 86: astore 6
		// 88: goto -15 -> 73
		//
		// Exception table:
		// from to target type
		// 8 15 64 finally
		// 19 37 86 finally
		// 43 49 86 finally
	}

	public final void a() throws IOException {
		final JarFile jarFile = new JarFile(this.bundlePath );
		if (jarFile.getEntry("resources.arsc") != null) {
			this.hasResource = true;
		}
		if (jarFile.getEntry("classes.dex") != null) {
			this.hasClass = true;
		}
		final Attributes mainAttributes = new Manifest(
				jarFile.getInputStream(jarFile
						.getJarEntry("META-INF/BUNDLE.MF")))
				.getMainAttributes();
		this.bundleName = mainAttributes.getValue("Bundle-Name");
		this.bundleVersion = mainAttributes.getValue("Bundle-Version");
		this.initLevel = Integer.parseInt(mainAttributes.getValue("Init-Level"));
		this.fullBundleName = this.bundleName.concat("@").concat(this.bundleVersion);
		this.packageNames = mainAttributes.getValue("Package-Name").split(",");
		final ArrayList<String> appComponentNames = new ArrayList<String>();
		final String activityNames = mainAttributes.getValue("Activity-Name");
		if (activityNames != null) {
			appComponentNames.addAll(Arrays.asList(activityNames.split(",")));
		}
		final String serviceNames = mainAttributes.getValue("Service-Name");
		if (serviceNames != null) {
			appComponentNames.addAll(Arrays.asList(serviceNames.split(",")));
		}
		final String receiverNames = mainAttributes.getValue("Receiver-Name");
		if (receiverNames != null) {
			appComponentNames.addAll(Arrays.asList(receiverNames.split(",")));
		}
		final String providerNames = mainAttributes.getValue("Provider-Name");
		if (providerNames != null) {
			appComponentNames.addAll(Arrays.asList(providerNames.split(",")));
		}
		this.allComponentNames = (String[]) appComponentNames.toArray(new String[appComponentNames.size()]);
		this.packageId = mainAttributes.getValue("Package-Id");
		final String requireBundle = mainAttributes.getValue("Require-Bundle");
		if (requireBundle != null) {
			this.requireBundleNames = requireBundle.split(",");
		}
	}

	//#a
	public final void setBundlePath(final String path) {
		synchronized (this) {
			this.bundlePath = path;
		}
	}

	public final void a(String[] array, ZipFile zipFile) {
		if (zipFile != null && zipFile.getEntry("resources.arsc") != null) {
			this.hasResource = true;
		}
		if (zipFile != null && zipFile.getEntry("classes.dex") != null) {
			this.hasClass = true;
		}
		this.bundleName = array[1];
		this.bundleVersion = array[2];
		this.initLevel = Integer.parseInt(array[3]);
		this.fullBundleName = this.bundleName.concat("@").concat(this.bundleVersion);
		this.packageNames = array[4].split(",");
		this.allComponentNames = array[5].split(",");
		this.packageId = array[6];
		if (array.length >= 8) {
			this.requireBundleNames = array[7].split(",");
		}
	}

	public final boolean a(Signature[] paramArrayOfSignature) {
		// TODO
		return true;
		// int m;
		// do
		// try
		// {
		// localJarFile = new JarFile(f());
		// byte[] arrayOfByte = new byte[8192];
		// JarEntry localJarEntry = localJarFile.getJarEntry("classes.dex");
		// if (localJarEntry == null)
		// localJarEntry = localJarFile.getJarEntry("resources.arsc");
		// arrayOfCertificate = a(localJarFile, localJarEntry, arrayOfByte);
		// if (arrayOfCertificate == null)
		// throw new IOException("Has no certificates");
		// }
		// catch (CertificateEncodingException
		// localCertificateEncodingException)
		// {
		// JarFile localJarFile;
		// Certificate[] arrayOfCertificate;
		// d.a("Bundle", "verify sign error : " + f(),
		// localCertificateEncodingException);
		// return false;
		// localJarFile.close();
		// if (arrayOfCertificate == null)
		// {
		// m = 0;
		// }
		// else
		// {
		// int n = arrayOfCertificate.length;
		// Signature[] arrayOfSignature = null;
		// if (n > 0)
		// {
		// int i1 = arrayOfCertificate.length;
		// arrayOfSignature = new Signature[arrayOfCertificate.length];
		// for (int i2 = 0; i2 < i1; i2++)
		// arrayOfSignature[i2] = new
		// Signature(arrayOfCertificate[i2].getEncoded());
		// }
		// boolean bool = a(paramArrayOfSignature, arrayOfSignature);
		// m = bool;
		// }
		// }
		// catch (IOException localIOException)
		// {
		// d.a("Bundle", "verify sign error : " + f(), localIOException);
		// return false;
		// }
		// while (m == 0);
		// return true;
	}

	public final String b() {
		int i = 0;
		synchronized (this) {
			final StringBuffer sb = new StringBuffer();
			sb.append(this.bundlePath).append("|");
			sb.append(this.bundleName).append("|");
			sb.append(this.bundleVersion).append("|");
			sb.append(this.initLevel).append("|");
			final StringBuffer sb2 = new StringBuffer();
			for (final String s : this.packageNames) {
				if (s.length() > 0) {
					sb2.append(",");
				}
				sb2.append(s);
			}
			sb.append(sb2.toString()).append("|");
			final StringBuffer sb3 = new StringBuffer();
			for (final String s2 : this.allComponentNames) {
				if (s2.length() > 0) {
					sb3.append(",");
				}
				sb3.append(s2);
			}
			sb.append(sb3.toString()).append("|");
			sb.append(this.packageId).append("|");
			final StringBuffer sb4 = new StringBuffer("");
			if (this.requireBundleNames != null) {
				for (String[] l = this.requireBundleNames; i < l.length; ++i) {
					final String s3 = l[i];
					if (sb4.length() > 0) {
						sb4.append(",");
					}
					sb4.append(s3);
				}
				sb.append(sb4.toString());
			}
			return sb.toString();
		}
	}

	//#c
	public final String getBundleName() {
		return this.bundleName;
	}

	//#d
	public final int getInitLevel() {
		return this.initLevel;
	}

	//#e
	public final String getFullBundleName() {
		return this.fullBundleName;
	}

	//#f
	public final String getBundlePath() {
		synchronized (this) {
			return this.bundlePath;
		}
	}

	//#g
	public final String[] g() {
		return this.packageNames;
	}

	//#h
	public final boolean hasResource() {
		return this.hasResource;
	}

	//#i
	public final boolean hasClass() {
		return this.hasClass;
	}

	//#j
	public final String[] getRequireBundleName() {
		return this.requireBundleNames;
	}

	//#k
	public final String getBundleVersion() {
		return this.bundleVersion;
	}

	public final boolean l() {
		synchronized (this) {
			return this.l;
		}
	}

	public final void m() {
		synchronized (this) {
			this.l = true;
		}
	}

	//#n
	public final String[] getAllComponentNames() {
		return this.allComponentNames;
	}

	@Override
	public final String toString() {
		int i = 0;
		final Object[] array = { this.bundlePath, this.bundleName, this.bundleVersion, null };
		final String[] k = this.requireBundleNames;
		final StringBuilder sb = new StringBuilder();
		while (i < k.length) {
			final String s = k[i];
			if (sb.length() > 0) {
				sb.append(',');
			}
			sb.append(s.toString());
			++i;
		}
		array[3] = sb.toString();
		return String.format("path=%s name=%s version=%s depends=%s", array);
	}

	@Override
	public int compareTo(Object another) {
		return 0;
	}
}
