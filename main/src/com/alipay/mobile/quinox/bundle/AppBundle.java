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
public final class AppBundle implements Comparable {
	private String a;
	private String b;
	private String c;
	private int d;
	private String e;
	private String[] f;
	private String[] g;
	private String h;
	private boolean i;
	private boolean j;
	private String[] k;
	private boolean l;

	public AppBundle(String paramString) {
		this.e = paramString;
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
		final JarFile jarFile = new JarFile(this.e);
		if (jarFile.getEntry("resources.arsc") != null) {
			this.i = true;
		}
		if (jarFile.getEntry("classes.dex") != null) {
			this.j = true;
		}
		final Attributes mainAttributes = new Manifest(
				jarFile.getInputStream(jarFile
						.getJarEntry("META-INF/BUNDLE.MF")))
				.getMainAttributes();
		this.a = mainAttributes.getValue("Bundle-Name");
		this.b = mainAttributes.getValue("Bundle-Version");
		this.d = Integer.parseInt(mainAttributes.getValue("Init-Level"));
		this.c = this.a.concat("@").concat(this.b);
		this.f = mainAttributes.getValue("Package-Name").split(",");
		final ArrayList list = new ArrayList();
		final String value = mainAttributes.getValue("Activity-Name");
		if (value != null) {
			list.addAll(Arrays.asList(value.split(",")));
		}
		final String value2 = mainAttributes.getValue("Service-Name");
		if (value2 != null) {
			list.addAll(Arrays.asList(value2.split(",")));
		}
		final String value3 = mainAttributes.getValue("Receiver-Name");
		if (value3 != null) {
			list.addAll(Arrays.asList(value3.split(",")));
		}
		final String value4 = mainAttributes.getValue("Provider-Name");
		if (value4 != null) {
			list.addAll(Arrays.asList(value4.split(",")));
		}
		this.g = (String[]) list.toArray(new String[list.size()]);
		this.h = mainAttributes.getValue("Package-Id");
		final String value5 = mainAttributes.getValue("Require-Bundle");
		if (value5 != null) {
			this.k = value5.split(",");
		}
	}

	public final void a(final String e) {
		synchronized (this) {
			this.e = e;
		}
	}

	public final void a(String[] array, ZipFile zipFile) {
		if (zipFile != null && zipFile.getEntry("resources.arsc") != null) {
			this.i = true;
		}
		if (zipFile != null && zipFile.getEntry("classes.dex") != null) {
			this.j = true;
		}
		this.a = array[1];
		this.b = array[2];
		this.d = Integer.parseInt(array[3]);
		this.c = this.a.concat("@").concat(this.b);
		this.f = array[4].split(",");
		this.g = array[5].split(",");
		this.h = array[6];
		if (array.length >= 8) {
			this.k = array[7].split(",");
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
			sb.append(this.e).append("|");
			sb.append(this.a).append("|");
			sb.append(this.b).append("|");
			sb.append(this.d).append("|");
			final StringBuffer sb2 = new StringBuffer();
			for (final String s : this.f) {
				if (s.length() > 0) {
					sb2.append(",");
				}
				sb2.append(s);
			}
			sb.append(sb2.toString()).append("|");
			final StringBuffer sb3 = new StringBuffer();
			for (final String s2 : this.g) {
				if (s2.length() > 0) {
					sb3.append(",");
				}
				sb3.append(s2);
			}
			sb.append(sb3.toString()).append("|");
			sb.append(this.h).append("|");
			final StringBuffer sb4 = new StringBuffer("");
			if (this.k != null) {
				for (String[] l = this.k; i < l.length; ++i) {
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

	public final String getBundleName() {
		return this.a;
	}

	public final int d() {
		return this.d;
	}

	public final String e() {
		return this.c;
	}

	public final String f() {
		synchronized (this) {
			return this.e;
		}
	}

	public final String[] g() {
		return this.f;
	}

	public final boolean h() {
		return this.i;
	}

	public final boolean i() {
		return this.j;
	}

	public final String[] j() {
		return this.k;
	}

	public final String k() {
		return this.b;
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

	public final String[] n() {
		return this.g;
	}

	@Override
	public final String toString() {
		int i = 0;
		final Object[] array = { this.e, this.a, this.b, null };
		final String[] k = this.k;
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
