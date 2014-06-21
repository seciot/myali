package com.alipay.mobile.quinox.bundle;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

import android.content.Context;
import android.os.Build;

import com.alipay.mobile.quinox.LauncherApplication;

//c.java
public final class BundlesManagerImpl implements BundlesManager {
	private Context a;
	private String b;
	private String c;
	private String d;
	private String[] e;
	private String[] f;
	private String[] g;
	private Map h;
	private d i;

	public BundlesManagerImpl(Context paramContext) {
		this.a = paramContext;
		this.i = new d(this.a, this);
		this.h = new ConcurrentHashMap();
		this.b = this.a.getDir("plugins", 0).getAbsolutePath();
		this.c = this.a.getDir("plugins_opt", 0).getAbsolutePath();
		this.d = this.a.getDir("plugins_lib", 0).getAbsolutePath();
		this.e = new String[0];
		this.f = new String[0];
	}

	private File a(final String s, final String s2) throws ZipException,
			IOException {
		BufferedInputStream bufferedInputStream;
		try {
			bufferedInputStream = new BufferedInputStream(
					new FileInputStream(s));
			final StringBuilder sb = new StringBuilder();
			final BundlesManagerImpl c = this;
			final String s3 = c.b;
			final StringBuilder sb2 = sb.append(s3);
			final String s4 = File.separator;
			final StringBuilder sb3 = sb2.append(s4);
			final String s5 = s2;
			final StringBuilder sb4 = sb3.append(s5);
			final String s6 = sb4.toString();
			final File file = new File(s6);
			final BufferedInputStream bufferedInputStream2 = bufferedInputStream;
			final File file2 = file;
			com.alipay.mobile.quinox.utils.c.a(bufferedInputStream2, file2);
			final BundlesManagerImpl c2 = this;
			final File file3 = file;
			final ZipFile zipFile = new ZipFile(file3);
			c2.a(zipFile);
			final BufferedInputStream bufferedInputStream3 = bufferedInputStream;
			bufferedInputStream3.close();
			return file;
		} finally {
			final Throwable t2;
			// TODO
			// final Throwable t = t2;
			bufferedInputStream = null;
		}
		// TODO
		// while (true) {
		// try {
		// final StringBuilder sb = new StringBuilder();
		// final c c = this;
		// final String s3 = c.b;
		// final StringBuilder sb2 = sb.append(s3);
		// final String s4 = File.separator;
		// final StringBuilder sb3 = sb2.append(s4);
		// final String s5 = s2;
		// final StringBuilder sb4 = sb3.append(s5);
		// final String s6 = sb4.toString();
		// final File file = new File(s6);
		// final BufferedInputStream bufferedInputStream2 = bufferedInputStream;
		// final File file2 = file;
		// com.alipay.mobile.quinox.utils.c.a(bufferedInputStream2, file2);
		// final c c2 = this;
		// final File file3 = file;
		// final ZipFile zipFile = new ZipFile(file3);
		// c2.a(zipFile);
		// final BufferedInputStream bufferedInputStream3 = bufferedInputStream;
		// bufferedInputStream3.close();
		// return file;
		// final Throwable t;
		// Label_0090: {
		// throw t;
		// }
		// // iftrue(Label_0090:, bufferedInputStream == null)
		// bufferedInputStream.close();
		// throw t;
		// }
		// finally {
		// continue;
		// }
		// break;
		// }
	}

	private ZipFile a(final ClassLoader classLoader, final String s,
			final String s2) throws ZipException, IOException {
		BufferedInputStream bufferedInputStream;
		try {
			final InputStream resourceAsStream = classLoader
					.getResourceAsStream("lib" + File.separator + "armeabi"
							+ File.separator + s);
			if (resourceAsStream == null) {
				return null;
			}
			bufferedInputStream = new BufferedInputStream(resourceAsStream);
			final StringBuilder sb = new StringBuilder();
			final BundlesManagerImpl c = this;
			final String s3 = c.b;
			final StringBuilder sb2 = sb.append(s3);
			final String s4 = File.separator;
			final StringBuilder sb3 = sb2.append(s4);
			final String s5 = s2;
			final StringBuilder sb4 = sb3.append(s5);
			final String s6 = sb4.toString();
			final File file = new File(s6);
			final BufferedInputStream bufferedInputStream2 = bufferedInputStream;
			final File file2 = file;
			com.alipay.mobile.quinox.utils.c.a(bufferedInputStream2, file2);
			final File file3 = file;
			final ZipFile zipFile = new ZipFile(file3);
			final BundlesManagerImpl c2 = this;
			final ZipFile zipFile2 = zipFile;
			c2.a(zipFile2);
			final BufferedInputStream bufferedInputStream3 = bufferedInputStream;
			bufferedInputStream3.close();
			return zipFile;
		} finally {
			final Object o2;
			// TODO
			// final Object o = o2;
			// bufferedInputStream = null;
			// final Object o3 = o;
		}
		// TODO
		// while (true) {
		// try {
		// final StringBuilder sb = new StringBuilder();
		// final c c = this;
		// final String s3 = c.b;
		// final StringBuilder sb2 = sb.append(s3);
		// final String s4 = File.separator;
		// final StringBuilder sb3 = sb2.append(s4);
		// final String s5 = s2;
		// final StringBuilder sb4 = sb3.append(s5);
		// final String s6 = sb4.toString();
		// final File file = new File(s6);
		// final BufferedInputStream bufferedInputStream2 = bufferedInputStream;
		// final File file2 = file;
		// com.alipay.mobile.quinox.utils.c.a(bufferedInputStream2, file2);
		// final File file3 = file;
		// final ZipFile zipFile = new ZipFile(file3);
		// final c c2 = this;
		// final ZipFile zipFile2 = zipFile;
		// c2.a(zipFile2);
		// final BufferedInputStream bufferedInputStream3 = bufferedInputStream;
		// bufferedInputStream3.close();
		// return zipFile;
		// final Object o3;
		// Label_0144: {
		// //TODO
		// //throw o3;
		// }
		// while (true) {
		// bufferedInputStream.close();
		// //TODO
		// // throw o3;
		// continue;
		// }
		// }
		// // iftrue(Label_0144:, bufferedInputStream == null)
		// finally {
		// continue;
		// }
		// break;
		// }
	}

	private void a(final String s, final String s2, final ZipFile zipFile,
			final String[] array) {
		if (s == null || s2 == null) {
			return;
		}
		Label_0064: {
			if (zipFile != null) {
				break Label_0064;
			}
			String name = null;
			while (true) {
				final AppBundle a = new AppBundle(name);
				a.a(array, zipFile);
				synchronized (this.h) {
					this.h.put(a.getBundleName(), a);
					return;
					// TODO
					// name = zipFile.getName();
				}
			}
		}
	}

	// ERROR //
	private void a(Iterator paramIterator) {
		// Byte code:
		// 0: aload_0
		// 1: monitorenter
		// 2: new 143 java/util/ArrayList
		// 5: dup
		// 6: invokespecial 144 java/util/ArrayList:<init> ()V
		// 9: astore_2
		// 10: aload_1
		// 11: invokeinterface 150 1 0
		// 16: ifeq +30 -> 46
		// 19: aload_2
		// 20: aload_1
		// 21: invokeinterface 154 1 0
		// 26: checkcast 125 com/alipay/mobile/quinox/bundle/a
		// 29: invokevirtual 156 com/alipay/mobile/quinox/bundle/a:b
		// ()Ljava/lang/String;
		// 32: invokeinterface 162 2 0
		// 37: pop
		// 38: goto -28 -> 10
		// 41: astore_3
		// 42: aload_0
		// 43: monitorexit
		// 44: aload_3
		// 45: athrow
		// 46: new 49 java/io/File
		// 49: dup
		// 50: new 82 java/lang/StringBuilder
		// 53: dup
		// 54: invokespecial 83 java/lang/StringBuilder:<init> ()V
		// 57: aload_0
		// 58: getfield 55 com/alipay/mobile/quinox/bundle/c:b
		// Ljava/lang/String;
		// 61: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 64: getstatic 90 java/io/File:separator Ljava/lang/String;
		// 67: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 70: ldc 164
		// 72: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 75: invokevirtual 93 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 78: invokespecial 94 java/io/File:<init> (Ljava/lang/String;)V
		// 81: astore 4
		// 83: aload 4
		// 85: invokevirtual 167 java/io/File:exists ()Z
		// 88: ifne +9 -> 97
		// 91: aload 4
		// 93: invokevirtual 170 java/io/File:createNewFile ()Z
		// 96: pop
		// 97: new 172 java/io/BufferedWriter
		// 100: dup
		// 101: new 174 java/io/OutputStreamWriter
		// 104: dup
		// 105: new 176 java/io/FileOutputStream
		// 108: dup
		// 109: aload 4
		// 111: invokespecial 177 java/io/FileOutputStream:<init>
		// (Ljava/io/File;)V
		// 114: invokespecial 180 java/io/OutputStreamWriter:<init>
		// (Ljava/io/OutputStream;)V
		// 117: invokespecial 183 java/io/BufferedWriter:<init>
		// (Ljava/io/Writer;)V
		// 120: astore 5
		// 122: aload 5
		// 124: aload_2
		// 125: invokestatic 188 com/alipay/mobile/quinox/utils/a:a
		// (Ljava/io/BufferedWriter;Ljava/util/List;)V
		// 128: aload 5
		// 130: invokevirtual 189 java/io/BufferedWriter:close ()V
		// 133: aload_0
		// 134: monitorexit
		// 135: return
		// 136: astore 6
		// 138: aconst_null
		// 139: astore 5
		// 141: aload 5
		// 143: ifnull +8 -> 151
		// 146: aload 5
		// 148: invokevirtual 189 java/io/BufferedWriter:close ()V
		// 151: aload 6
		// 153: athrow
		// 154: astore 6
		// 156: goto -15 -> 141
		//
		// Exception table:
		// from to target type
		// 2 10 41 finally
		// 10 38 41 finally
		// 46 97 41 finally
		// 128 133 41 finally
		// 146 151 41 finally
		// 151 154 41 finally
		// 97 122 136 finally
		// 122 128 154 finally
	}

	private void a(Map paramMap) {
		com.alipay.mobile.quinox.classloader.a locala = j();
		Iterator localIterator = paramMap.values().iterator();
		while (localIterator.hasNext())
			locala.b((AppBundle) localIterator.next());
	}

	private void a(ZipFile paramZipFile) {
		if ((!a(paramZipFile, Build.CPU_ABI)) && (Build.CPU_ABI2 != null)
				&& (!a(paramZipFile, Build.CPU_ABI2))
				&& ("x86".equals(Build.CPU_ABI)))
			a(paramZipFile, "armeabi");
	}

	// ERROR //
	private boolean a(ZipFile paramZipFile, String paramString) {
		return false;
		// Byte code:
		// 0: aload_2
		// 1: invokevirtual 229 java/lang/String:length ()I
		// 4: istore_3
		// 5: aload_1
		// 6: invokevirtual 233 java/util/zip/ZipFile:entries
		// ()Ljava/util/Enumeration;
		// 9: astore 4
		// 11: iconst_0
		// 12: istore 5
		// 14: aload 4
		// 16: invokeinterface 238 1 0
		// 21: ifeq +267 -> 288
		// 24: aload 4
		// 26: invokeinterface 241 1 0
		// 31: checkcast 243 java/util/zip/ZipEntry
		// 34: astore 6
		// 36: aload 6
		// 38: invokevirtual 246 java/util/zip/ZipEntry:isDirectory ()Z
		// 41: ifne -27 -> 14
		// 44: aload 6
		// 46: invokevirtual 247 java/util/zip/ZipEntry:getName
		// ()Ljava/lang/String;
		// 49: astore 7
		// 51: aload 7
		// 53: invokevirtual 229 java/lang/String:length ()I
		// 56: bipush 13
		// 58: if_icmplt -44 -> 14
		// 61: aload 7
		// 63: ldc 249
		// 65: invokevirtual 253 java/lang/String:endsWith (Ljava/lang/String;)Z
		// 68: ifeq -54 -> 14
		// 71: aload 7
		// 73: ldc 255
		// 75: invokevirtual 258 java/lang/String:startsWith
		// (Ljava/lang/String;)Z
		// 78: ifeq -64 -> 14
		// 81: aload 7
		// 83: bipush 47
		// 85: invokevirtual 262 java/lang/String:lastIndexOf (I)I
		// 88: istore 8
		// 90: iload 8
		// 92: iflt -78 -> 14
		// 95: aload 7
		// 97: iload 8
		// 99: iconst_1
		// 100: iadd
		// 101: ldc 113
		// 103: iconst_0
		// 104: iconst_3
		// 105: invokevirtual 266 java/lang/String:regionMatches
		// (ILjava/lang/String;II)Z
		// 108: ifeq -94 -> 14
		// 111: iload 8
		// 113: iload_3
		// 114: iconst_4
		// 115: iadd
		// 116: if_icmpne -102 -> 14
		// 119: aload 7
		// 121: iconst_4
		// 122: aload_2
		// 123: iconst_0
		// 124: iload_3
		// 125: invokevirtual 266 java/lang/String:regionMatches
		// (ILjava/lang/String;II)Z
		// 128: ifeq -114 -> 14
		// 131: iconst_1
		// 132: istore 5
		// 134: aload 7
		// 136: iload 8
		// 138: iconst_1
		// 139: iadd
		// 140: invokevirtual 270 java/lang/String:substring
		// (I)Ljava/lang/String;
		// 143: astore 9
		// 145: new 82 java/lang/StringBuilder
		// 148: dup
		// 149: invokespecial 83 java/lang/StringBuilder:<init> ()V
		// 152: aload_0
		// 153: getfield 63 com/alipay/mobile/quinox/bundle/c:d
		// Ljava/lang/String;
		// 156: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 159: getstatic 90 java/io/File:separator Ljava/lang/String;
		// 162: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 165: aload 9
		// 167: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 170: invokevirtual 93 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 173: astore 10
		// 175: new 49 java/io/File
		// 178: dup
		// 179: aload 10
		// 181: invokespecial 94 java/io/File:<init> (Ljava/lang/String;)V
		// 184: astore 11
		// 186: aload 11
		// 188: invokevirtual 167 java/io/File:exists ()Z
		// 191: ifeq +31 -> 222
		// 194: aload 11
		// 196: invokevirtual 273 java/io/File:length ()J
		// 199: aload 6
		// 201: invokevirtual 276 java/util/zip/ZipEntry:getSize ()J
		// 204: lcmp
		// 205: ifne +17 -> 222
		// 208: aload 11
		// 210: invokevirtual 279 java/io/File:lastModified ()J
		// 213: aload 6
		// 215: invokevirtual 282 java/util/zip/ZipEntry:getTime ()J
		// 218: lcmp
		// 219: ifeq -205 -> 14
		// 222: new 72 java/io/BufferedInputStream
		// 225: dup
		// 226: aload_1
		// 227: aload 6
		// 229: invokevirtual 286 java/util/zip/ZipFile:getInputStream
		// (Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
		// 232: invokespecial 80 java/io/BufferedInputStream:<init>
		// (Ljava/io/InputStream;)V
		// 235: astore 12
		// 237: aload 12
		// 239: aload 11
		// 241: invokestatic 99 com/alipay/mobile/quinox/utils/c:a
		// (Ljava/io/BufferedInputStream;Ljava/io/File;)V
		// 244: new 49 java/io/File
		// 247: dup
		// 248: aload 10
		// 250: invokespecial 94 java/io/File:<init> (Ljava/lang/String;)V
		// 253: aload 6
		// 255: invokevirtual 282 java/util/zip/ZipEntry:getTime ()J
		// 258: invokevirtual 290 java/io/File:setLastModified (J)Z
		// 261: pop
		// 262: aload 12
		// 264: invokevirtual 110 java/io/BufferedInputStream:close ()V
		// 267: goto -253 -> 14
		// 270: astore 13
		// 272: aconst_null
		// 273: astore 14
		// 275: aload 14
		// 277: ifnull +8 -> 285
		// 280: aload 14
		// 282: invokevirtual 110 java/io/BufferedInputStream:close ()V
		// 285: aload 13
		// 287: athrow
		// 288: iload 5
		// 290: ireturn
		// 291: astore 13
		// 293: aload 12
		// 295: astore 14
		// 297: goto -22 -> 275
		//
		// Exception table:
		// from to target type
		// 222 237 270 finally
		// 237 262 291 finally
	}

	private void b(Map<String, AppBundle> map) {
		for (final AppBundle a : map.values()) {
			final String c = a.getBundleName();
			final String f = a.getBundlePath();
			final AppBundle h = this.h(c);
			if (h != null) {
				com.alipay.mobile.quinox.utils.c
						.a(com.alipay.mobile.quinox.utils.b.a(h.getBundlePath(), this.c));
				com.alipay.mobile.quinox.utils.c.a(h.getBundlePath());
			}
			com.alipay.mobile.quinox.utils.c.a(com.alipay.mobile.quinox.utils.b
					.a(f, this.c));
			// TODO
			// a.a(this.a(f, a.getBundleName() + "-" + a.k() +
			// ".jar").getAbsolutePath());
		}
	}

	private void b(String[] paramArrayOfString) {
		ArrayList localArrayList = new ArrayList();
		if (paramArrayOfString != null) {
			int j = paramArrayOfString.length;
			for (int k = 0; k < j; k++) {
				String str = paramArrayOfString[k];
				AppBundle locala = h(str);
				if (locala != null) {
					localArrayList.add(str);
					String[] arrayOfString1 = locala.getRequireBundleName();
					if (arrayOfString1 != null) {
						String[] arrayOfString2 = new String[this.f.length
								+ arrayOfString1.length];
						System.arraycopy(this.f, 0, arrayOfString2, 0,
								this.f.length);
						System.arraycopy(arrayOfString1, 0, arrayOfString2,
								this.f.length, arrayOfString1.length);
						this.f = arrayOfString2;
					}
				}
			}
		}
		this.e = ((String[]) localArrayList.toArray(new String[localArrayList
				.size()]));
	}

	private boolean f(final String s) {
		if (s != null) {
			final String[] g = this.g;
			for (int length = g.length, i = 0; i < length; ++i) {
				if (s.equalsIgnoreCase(g[i])) {
					return true;
				}
			}
		}
		return false;
	}

	private static AppBundle g(String paramString) {
		AppBundle locala = new AppBundle(paramString);
		// TODO 加载?
		// locala.a();
		return locala;
	}

	private AppBundle h(String paramString) {
		synchronized (this.h) {
			AppBundle locala = (AppBundle) this.h.get(paramString);
			return locala;
		}
	}

	private boolean i(String paramString) {
		synchronized (this.h) {
			boolean bool = this.h.containsKey(paramString);
			return bool;
		}
	}

	// ERROR //
	private void k() {
		// Byte code:
		// 0: new 82 java/lang/StringBuilder
		// 3: dup
		// 4: invokespecial 83 java/lang/StringBuilder:<init> ()V
		// 7: aload_0
		// 8: getfield 27 com/alipay/mobile/quinox/bundle/c:a
		// Landroid/content/Context;
		// 11: invokevirtual 352 android/content/Context:getApplicationInfo
		// ()Landroid/content/pm/ApplicationInfo;
		// 14: getfield 357 android/content/pm/ApplicationInfo:dataDir
		// Ljava/lang/String;
		// 17: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 20: getstatic 90 java/io/File:separator Ljava/lang/String;
		// 23: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 26: ldc 113
		// 28: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 31: invokevirtual 93 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 34: astore_1
		// 35: aload_0
		// 36: getfield 27 com/alipay/mobile/quinox/bundle/c:a
		// Landroid/content/Context;
		// 39: invokevirtual 361 java/lang/Object:getClass ()Ljava/lang/Class;
		// 42: invokevirtual 367 java/lang/Class:getClassLoader
		// ()Ljava/lang/ClassLoader;
		// 45: astore_2
		// 46: new 369 java/io/BufferedReader
		// 49: dup
		// 50: new 371 java/io/InputStreamReader
		// 53: dup
		// 54: aload_2
		// 55: new 82 java/lang/StringBuilder
		// 58: dup
		// 59: ldc 113
		// 61: invokespecial 114 java/lang/StringBuilder:<init>
		// (Ljava/lang/String;)V
		// 64: getstatic 90 java/io/File:separator Ljava/lang/String;
		// 67: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 70: ldc 116
		// 72: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 75: getstatic 90 java/io/File:separator Ljava/lang/String;
		// 78: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 81: ldc_w 373
		// 84: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 87: invokevirtual 93 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 90: invokevirtual 122 java/lang/ClassLoader:getResourceAsStream
		// (Ljava/lang/String;)Ljava/io/InputStream;
		// 93: invokespecial 374 java/io/InputStreamReader:<init>
		// (Ljava/io/InputStream;)V
		// 96: invokespecial 377 java/io/BufferedReader:<init>
		// (Ljava/io/Reader;)V
		// 99: astore_3
		// 100: aload_3
		// 101: invokestatic 380 com/alipay/mobile/quinox/utils/a:a
		// (Ljava/io/BufferedReader;)Ljava/util/List;
		// 104: astore 7
		// 106: aload 7
		// 108: invokeinterface 381 1 0
		// 113: astore 8
		// 115: aload 8
		// 117: invokeinterface 150 1 0
		// 122: ifeq +281 -> 403
		// 125: aload 8
		// 127: invokeinterface 154 1 0
		// 132: checkcast 330 [Ljava/lang/String;
		// 135: astore 10
		// 137: aload 10
		// 139: iconst_0
		// 140: aaload
		// 141: astore 11
		// 143: aload 11
		// 145: ldc 249
		// 147: invokevirtual 253 java/lang/String:endsWith
		// (Ljava/lang/String;)Z
		// 150: ifeq -35 -> 115
		// 153: aload 10
		// 155: iconst_1
		// 156: aaload
		// 157: astore 12
		// 159: aload 10
		// 161: iconst_2
		// 162: aaload
		// 163: astore 13
		// 165: aload_0
		// 166: aload 12
		// 168: invokespecial 383 com/alipay/mobile/quinox/bundle/c:i
		// (Ljava/lang/String;)Z
		// 171: ifeq +32 -> 203
		// 174: aload 13
		// 176: aload_0
		// 177: aload 12
		// 179: invokespecial 295 com/alipay/mobile/quinox/bundle/c:h
		// (Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;
		// 182: invokevirtual 307 com/alipay/mobile/quinox/bundle/a:k
		// ()Ljava/lang/String;
		// 185: invokestatic 388 com/alipay/mobile/quinox/utils/e:a
		// (Ljava/lang/String;Ljava/lang/String;)Z
		// 188: ifeq -73 -> 115
		// 191: aload 11
		// 193: aload_0
		// 194: getfield 59 com/alipay/mobile/quinox/bundle/c:c
		// Ljava/lang/String;
		// 197: invokestatic 300 com/alipay/mobile/quinox/utils/b:a
		// (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
		// 200: invokestatic 302 com/alipay/mobile/quinox/utils/c:a
		// (Ljava/lang/String;)V
		// 203: new 82 java/lang/StringBuilder
		// 206: dup
		// 207: invokespecial 83 java/lang/StringBuilder:<init> ()V
		// 210: aload_1
		// 211: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 214: getstatic 90 java/io/File:separator Ljava/lang/String;
		// 217: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 220: aload 11
		// 222: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 225: invokevirtual 93 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 228: astore 17
		// 230: ldc_w 390
		// 233: new 82 java/lang/StringBuilder
		// 236: dup
		// 237: ldc_w 392
		// 240: invokespecial 114 java/lang/StringBuilder:<init>
		// (Ljava/lang/String;)V
		// 243: aload 17
		// 245: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 248: invokevirtual 93 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 251: invokestatic 397 com/alipay/mobile/quinox/utils/d:b
		// (Ljava/lang/String;Ljava/lang/String;)V
		// 254: new 49 java/io/File
		// 257: dup
		// 258: aload 17
		// 260: invokespecial 94 java/io/File:<init> (Ljava/lang/String;)V
		// 263: invokevirtual 167 java/io/File:exists ()Z
		// 266: ifeq +111 -> 377
		// 269: aload_0
		// 270: aload 12
		// 272: invokespecial 399 com/alipay/mobile/quinox/bundle/c:f
		// (Ljava/lang/String;)Z
		// 275: ifeq +69 -> 344
		// 278: new 101 java/util/zip/ZipFile
		// 281: dup
		// 282: aload 17
		// 284: invokespecial 400 java/util/zip/ZipFile:<init>
		// (Ljava/lang/String;)V
		// 287: astore 15
		// 289: aload_0
		// 290: aload 15
		// 292: invokespecial 107 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/util/zip/ZipFile;)V
		// 295: aload_0
		// 296: aload 12
		// 298: aload 13
		// 300: aload 15
		// 302: aload 10
		// 304: invokespecial 402 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;[Ljava/lang/String;)V
		// 307: goto -192 -> 115
		// 310: astore 16
		// 312: ldc_w 390
		// 315: ldc_w 404
		// 318: aload 16
		// 320: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 323: goto -208 -> 115
		// 326: astore 4
		// 328: aload_3
		// 329: astore 5
		// 331: aload 5
		// 333: ifnull +8 -> 341
		// 336: aload 5
		// 338: invokevirtual 408 java/io/BufferedReader:close ()V
		// 341: aload 4
		// 343: athrow
		// 344: new 101 java/util/zip/ZipFile
		// 347: dup
		// 348: aload 17
		// 350: invokespecial 400 java/util/zip/ZipFile:<init>
		// (Ljava/lang/String;)V
		// 353: astore 15
		// 355: goto -60 -> 295
		// 358: astore 14
		// 360: ldc_w 390
		// 363: ldc_w 404
		// 366: aload 14
		// 368: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 371: aconst_null
		// 372: astore 15
		// 374: goto -79 -> 295
		// 377: aload_0
		// 378: aload_2
		// 379: aload 11
		// 381: aload 11
		// 383: ldc 249
		// 385: ldc_w 309
		// 388: invokevirtual 412 java/lang/String:replace
		// (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
		// 391: invokespecial 414 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipFile;
		// 394: astore 18
		// 396: aload 18
		// 398: astore 15
		// 400: goto -105 -> 295
		// 403: aload_0
		// 404: aload 7
		// 406: iconst_0
		// 407: invokeinterface 417 2 0
		// 412: checkcast 330 [Ljava/lang/String;
		// 415: invokespecial 419 com/alipay/mobile/quinox/bundle/c:b
		// ([Ljava/lang/String;)V
		// 418: aload_3
		// 419: invokevirtual 408 java/io/BufferedReader:close ()V
		// 422: aload_0
		// 423: aload_0
		// 424: invokevirtual 421 com/alipay/mobile/quinox/bundle/c:b
		// ()Ljava/util/Iterator;
		// 427: invokespecial 423 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/util/Iterator;)V
		// 430: return
		// 431: astore 9
		// 433: ldc_w 390
		// 436: ldc_w 404
		// 439: aload 9
		// 441: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 444: goto -22 -> 422
		// 447: astore 6
		// 449: ldc_w 390
		// 452: ldc_w 404
		// 455: aload 6
		// 457: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 460: goto -119 -> 341
		// 463: astore 4
		// 465: aconst_null
		// 466: astore 5
		// 468: goto -137 -> 331
		//
		// Exception table:
		// from to target type
		// 295 307 310 java/lang/Exception
		// 100 115 326 finally
		// 115 203 326 finally
		// 203 295 326 finally
		// 295 307 326 finally
		// 312 323 326 finally
		// 344 355 326 finally
		// 360 371 326 finally
		// 377 396 326 finally
		// 403 418 326 finally
		// 203 295 358 java/lang/Exception
		// 344 355 358 java/lang/Exception
		// 377 396 358 java/lang/Exception
		// 418 422 431 java/io/IOException
		// 336 341 447 java/io/IOException
		// 46 100 463 finally
	}

	private Collection l() {
		synchronized (this.h) {
			Collection localCollection = this.h.values();
			return localCollection;
		}
	}

	//#a
	public final AppBundle getBundle(String bundleName) {
		return h(bundleName);
	}

	// ERROR //
	public final void a() {
		// Byte code:
		// 0: aload_0
		// 1: aload_0
		// 2: getfield 27 com/alipay/mobile/quinox/bundle/c:a
		// Landroid/content/Context;
		// 5: invokevirtual 428 android/content/Context:getPackageManager
		// ()Landroid/content/pm/PackageManager;
		// 8: aload_0
		// 9: getfield 27 com/alipay/mobile/quinox/bundle/c:a
		// Landroid/content/Context;
		// 12: invokevirtual 432 android/content/Context:getApplicationContext
		// ()Landroid/content/Context;
		// 15: invokevirtual 435 android/content/Context:getPackageName
		// ()Ljava/lang/String;
		// 18: sipush 128
		// 21: invokevirtual 440
		// android/content/pm/PackageManager:getApplicationInfo
		// (Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
		// 24: getfield 444 android/content/pm/ApplicationInfo:metaData
		// Landroid/os/Bundle;
		// 27: ldc_w 446
		// 30: invokevirtual 452 android/os/Bundle:getString
		// (Ljava/lang/String;)Ljava/lang/String;
		// 33: ldc_w 454
		// 36: invokevirtual 458 java/lang/String:split
		// (Ljava/lang/String;)[Ljava/lang/String;
		// 39: putfield 332 com/alipay/mobile/quinox/bundle/c:g
		// [Ljava/lang/String;
		// 42: new 49 java/io/File
		// 45: dup
		// 46: new 82 java/lang/StringBuilder
		// 49: dup
		// 50: invokespecial 83 java/lang/StringBuilder:<init> ()V
		// 53: aload_0
		// 54: getfield 55 com/alipay/mobile/quinox/bundle/c:b
		// Ljava/lang/String;
		// 57: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 60: getstatic 90 java/io/File:separator Ljava/lang/String;
		// 63: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 66: ldc 164
		// 68: invokevirtual 87 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 71: invokevirtual 93 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 74: invokespecial 94 java/io/File:<init> (Ljava/lang/String;)V
		// 77: astore_2
		// 78: aload_2
		// 79: invokevirtual 167 java/io/File:exists ()Z
		// 82: ifeq +244 -> 326
		// 85: new 369 java/io/BufferedReader
		// 88: dup
		// 89: new 371 java/io/InputStreamReader
		// 92: dup
		// 93: new 74 java/io/FileInputStream
		// 96: dup
		// 97: aload_2
		// 98: invokespecial 459 java/io/FileInputStream:<init>
		// (Ljava/io/File;)V
		// 101: invokespecial 374 java/io/InputStreamReader:<init>
		// (Ljava/io/InputStream;)V
		// 104: invokespecial 377 java/io/BufferedReader:<init>
		// (Ljava/io/Reader;)V
		// 107: invokestatic 380 com/alipay/mobile/quinox/utils/a:a
		// (Ljava/io/BufferedReader;)Ljava/util/List;
		// 110: invokeinterface 381 1 0
		// 115: astore_3
		// 116: aload_3
		// 117: invokeinterface 150 1 0
		// 122: ifeq +204 -> 326
		// 125: aload_3
		// 126: invokeinterface 154 1 0
		// 131: checkcast 330 [Ljava/lang/String;
		// 134: astore 4
		// 136: aload 4
		// 138: iconst_0
		// 139: aaload
		// 140: astore 11
		// 142: aload 11
		// 144: ldc_w 309
		// 147: invokevirtual 253 java/lang/String:endsWith
		// (Ljava/lang/String;)Z
		// 150: istore 12
		// 152: iload 12
		// 154: ifne +31 -> 185
		// 157: aload_0
		// 158: aconst_null
		// 159: aconst_null
		// 160: aconst_null
		// 161: aload 4
		// 163: invokespecial 402 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;[Ljava/lang/String;)V
		// 166: goto -50 -> 116
		// 169: astore 15
		// 171: ldc_w 390
		// 174: ldc_w 461
		// 177: aload 15
		// 179: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 182: goto -66 -> 116
		// 185: aload 4
		// 187: iconst_1
		// 188: aaload
		// 189: astore 7
		// 191: aload 4
		// 193: iconst_2
		// 194: aaload
		// 195: astore 6
		// 197: new 101 java/util/zip/ZipFile
		// 200: dup
		// 201: aload 11
		// 203: invokespecial 400 java/util/zip/ZipFile:<init>
		// (Ljava/lang/String;)V
		// 206: astore 13
		// 208: aload_0
		// 209: aload 7
		// 211: aload 6
		// 213: aload 13
		// 215: aload 4
		// 217: invokespecial 402 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;[Ljava/lang/String;)V
		// 220: goto -104 -> 116
		// 223: astore 14
		// 225: ldc_w 390
		// 228: ldc_w 461
		// 231: aload 14
		// 233: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 236: goto -120 -> 116
		// 239: astore 9
		// 241: aconst_null
		// 242: astore 6
		// 244: aconst_null
		// 245: astore 7
		// 247: ldc_w 390
		// 250: ldc_w 461
		// 253: aload 9
		// 255: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 258: aload_0
		// 259: aload 7
		// 261: aload 6
		// 263: aconst_null
		// 264: aload 4
		// 266: invokespecial 402 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;[Ljava/lang/String;)V
		// 269: goto -153 -> 116
		// 272: astore 10
		// 274: ldc_w 390
		// 277: ldc_w 461
		// 280: aload 10
		// 282: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 285: goto -169 -> 116
		// 288: astore 5
		// 290: aconst_null
		// 291: astore 6
		// 293: aconst_null
		// 294: astore 7
		// 296: aload_0
		// 297: aload 7
		// 299: aload 6
		// 301: aconst_null
		// 302: aload 4
		// 304: invokespecial 402 com/alipay/mobile/quinox/bundle/c:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;[Ljava/lang/String;)V
		// 307: aload 5
		// 309: athrow
		// 310: astore 8
		// 312: ldc_w 390
		// 315: ldc_w 461
		// 318: aload 8
		// 320: invokestatic 407 com/alipay/mobile/quinox/utils/d:a
		// (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 323: goto -207 -> 116
		// 326: aload_0
		// 327: invokespecial 463 com/alipay/mobile/quinox/bundle/c:k ()V
		// 330: return
		// 331: astore 5
		// 333: aconst_null
		// 334: astore 6
		// 336: goto -40 -> 296
		// 339: astore 5
		// 341: goto -45 -> 296
		// 344: astore 9
		// 346: aconst_null
		// 347: astore 6
		// 349: goto -102 -> 247
		// 352: astore 9
		// 354: goto -107 -> 247
		// 357: astore_1
		// 358: goto -316 -> 42
		//
		// Exception table:
		// from to target type
		// 157 166 169 java/lang/Exception
		// 208 220 223 java/lang/Exception
		// 136 152 239 java/lang/Exception
		// 185 191 239 java/lang/Exception
		// 258 269 272 java/lang/Exception
		// 136 152 288 finally
		// 185 191 288 finally
		// 296 307 310 java/lang/Exception
		// 191 197 331 finally
		// 197 208 339 finally
		// 247 258 339 finally
		// 191 197 344 java/lang/Exception
		// 197 208 352 java/lang/Exception
		// 0 42 357 java/lang/Exception
	}

	@Override
	public final void a(final List list) {
		((LauncherApplication) this.a).LogInfo("upgrade");
		final HashMap hashMap = new HashMap();
		final HashMap<String, AppBundle> hashMap2 = new HashMap<String, AppBundle>();
		final Iterator<String> iterator = list.iterator();
		while (iterator.hasNext()) {
			final AppBundle g = g(iterator.next());
			hashMap2.put(g.getBundleName(), g);
		}
		hashMap.putAll(this.f());
		hashMap.putAll(hashMap2);
		try {
			this.i.a(hashMap, false);
			this.b(hashMap2);
			this.a(hashMap2);
			this.a(hashMap.values().iterator());
		} catch (Exception ex) {
			((LauncherApplication) this.a).LogError((Throwable) ex,
					"MonitorPoint_DynamicLoad_UpgradeErr");
			throw new RuntimeException(hashMap2 + "'s dependencies error.");
		}
	}

	@Override
	public final void a(final String[] array) {
		int i = 0;
		final ArrayList<String> list = new ArrayList<String>();
		for (final String s : this.f) {
			if (s != null) {
				list.add(s);
			}
		}
		if (array != null) {
			while (i < array.length) {
				final AppBundle h = this.h(array[i]);
				if (h != null) {
					list.add(h.getFullBundleName());
				}
				++i;
			}
		}
		this.f = list.toArray(new String[list.size()]);
	}

	public final Iterator b() {
		ArrayList localArrayList = new ArrayList();
		synchronized (this.h) {
			localArrayList.addAll(this.h.values());
			Collections.sort(localArrayList);
			return localArrayList.iterator();
		}
	}

	public final boolean b(String s) {
		if (this.e != null) {
			final String[] e = this.e;
			for (int length = e.length, i = 0; i < length; ++i) {
				if (e[i].equalsIgnoreCase(s)) {
					return true;
				}
			}
		}
		return false;
	}

	public final AppBundle c(String paramString) {
		Iterator localIterator = b();
		while (localIterator.hasNext()) {
			AppBundle locala = (AppBundle) localIterator.next();
			String[] arrayOfString = locala.getAllComponentNames();
			int j = arrayOfString.length;
			for (int k = 0; k < j; k++)
				if (paramString.equalsIgnoreCase(arrayOfString[k]))
					return locala;
		}
		return null;
	}

	public final String c() {
		return this.c;
	}

	public final String d() {
		return this.d;
	}

	public final String d(String s) {
		while (true) {
			final AppBundle g;
			final String c;
			final HashMap<String, AppBundle> hashMap2;
			synchronized (this) {
				g = g(s);
				c = g.getBundleName();
				final HashMap hashMap = new HashMap();
				hashMap2 = new HashMap<String, AppBundle>();
				hashMap2.put(c, g);
				hashMap.putAll(this.f());
				hashMap.putAll(hashMap2);
				try {
					this.i.a(hashMap, false);
					if (this.i(c)) {
						if (com.alipay.mobile.quinox.utils.e.a(g.getBundleVersion(), this.h(c)
								.getBundleVersion())) {
							this.b(hashMap2);
						}
						return c;
					}
				} catch (Exception ex) {
					((LauncherApplication) this.a).LogError((Throwable) ex,
							"MonitorPoint_DynamicLoad_addExternalErr");
					throw new RuntimeException(g.getFullBundleName() + "'s dependencies error:"
							+ g.getRequireBundleName());
				}
			}
			this.b(hashMap2);
			com.alipay.mobile.quinox.utils.c.a(com.alipay.mobile.quinox.utils.b
					.a(s, this.c));
			this.j().a(g);
			synchronized (this.h) {
				this.h.putAll(hashMap2);
				// monitorexit(this.h)
				((LauncherApplication) this.a).setupResources();
				this.a(this.b());
				return c;
			}
		}
	}

	public final void e() {
		//
		// This method could not be decompiled.
		//
		// Original Bytecode:
		//
		// 0: aload_0
		// 1: getfield
		// com/alipay/mobile/quinox/bundle/c.i:Lcom/alipay/mobile/quinox/bundle/d;
		// 4: invokevirtual com/alipay/mobile/quinox/bundle/d.a:()V
		// 7: aload_0
		// 8: getfield
		// com/alipay/mobile/quinox/bundle/c.a:Landroid/content/Context;
		// 11: checkcast Lcom/alipay/mobile/quinox/LauncherApplication;
		// 14: ldc_w "start"
		// 17: invokevirtual
		// com/alipay/mobile/quinox/LauncherApplication.LogInfo:(Ljava/lang/String;)V
		// 20: aload_0
		// 21: getfield
		// com/alipay/mobile/quinox/bundle/c.i:Lcom/alipay/mobile/quinox/bundle/d;
		// 24: invokevirtual com/alipay/mobile/quinox/bundle/d.b:()Z
		// 27: ifne 48
		// 30: aload_0
		// 31: getfield
		// com/alipay/mobile/quinox/bundle/c.a:Landroid/content/Context;
		// 34: checkcast Lcom/alipay/mobile/quinox/LauncherApplication;
		// 37: invokevirtual
		// com/alipay/mobile/quinox/LauncherApplication.recover:()V
		// 40: aload_0
		// 41: aload_0
		// 42: invokevirtual
		// com/alipay/mobile/quinox/bundle/c.b:()Ljava/util/Iterator;
		// 45: invokespecial
		// com/alipay/mobile/quinox/bundle/c.a:(Ljava/util/Iterator;)V
		// 48: return
		// 49: astore_1
		// 50: ldc_w "BundlesManagerImpl"
		// 53: ldc_w "[verify] recover version error"
		// 56: aload_1
		// 57: invokestatic
		// com/alipay/mobile/quinox/utils/d.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 60: goto 40
		// 63: astore_2
		// 64: ldc_w "BundlesManagerImpl"
		// 67: ldc_w "[verify] write cfg error"
		// 70: aload_2
		// 71: invokestatic
		// com/alipay/mobile/quinox/utils/d.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 74: return
		// Exceptions:
		// Try Handler
		// Start End Start End Type
		// ----- ----- ----- ----- ---------------------
		// 30 40 49 63 Ljava/lang/Exception;
		// 40 48 63 75 Ljava/io/IOException;
		//
		// The error that occurred was:
		//
		// java.lang.IllegalStateException: Expression is linked from several
		// locations: Label_0040:
		// at
		// com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
		// at
		// com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
		// at
		// com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
		// at
		// com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
		// at
		// com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
		// at
		// com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:756)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:654)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:531)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:498)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:140)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:129)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:104)
		// at
		// com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
		// at
		// com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:301)
		// at
		// com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:127)
		//
		//
		// This method could not be decompiled.
		//
		// Original Bytecode:
		//
		// 0: aload_0
		// 1: getfield
		// com/alipay/mobile/quinox/bundle/c.i:Lcom/alipay/mobile/quinox/bundle/d;
		// 4: invokevirtual com/alipay/mobile/quinox/bundle/d.a:()V
		// 7: aload_0
		// 8: getfield
		// com/alipay/mobile/quinox/bundle/c.a:Landroid/content/Context;
		// 11: checkcast Lcom/alipay/mobile/quinox/LauncherApplication;
		// 14: ldc_w "start"
		// 17: invokevirtual
		// com/alipay/mobile/quinox/LauncherApplication.LogInfo:(Ljava/lang/String;)V
		// 20: aload_0
		// 21: getfield
		// com/alipay/mobile/quinox/bundle/c.i:Lcom/alipay/mobile/quinox/bundle/d;
		// 24: invokevirtual com/alipay/mobile/quinox/bundle/d.b:()Z
		// 27: ifne 48
		// 30: aload_0
		// 31: getfield
		// com/alipay/mobile/quinox/bundle/c.a:Landroid/content/Context;
		// 34: checkcast Lcom/alipay/mobile/quinox/LauncherApplication;
		// 37: invokevirtual
		// com/alipay/mobile/quinox/LauncherApplication.recover:()V
		// 40: aload_0
		// 41: aload_0
		// 42: invokevirtual
		// com/alipay/mobile/quinox/bundle/c.b:()Ljava/util/Iterator;
		// 45: invokespecial
		// com/alipay/mobile/quinox/bundle/c.a:(Ljava/util/Iterator;)V
		// 48: return
		// 49: astore_1
		// 50: ldc_w "BundlesManagerImpl"
		// 53: ldc_w "[verify] recover version error"
		// 56: aload_1
		// 57: invokestatic
		// com/alipay/mobile/quinox/utils/d.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 60: goto 40
		// 63: astore_2
		// 64: ldc_w "BundlesManagerImpl"
		// 67: ldc_w "[verify] write cfg error"
		// 70: aload_2
		// 71: invokestatic
		// com/alipay/mobile/quinox/utils/d.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
		// 74: return
		// Exceptions:
		// Try Handler
		// Start End Start End Type
		// ----- ----- ----- ----- ---------------------
		// 30 40 49 63 Ljava/lang/Exception;
		// 40 48 63 75 Ljava/io/IOException;
		//
		// The error that occurred was:
		//
		// java.lang.IllegalStateException: Expression is linked from several
		// locations: Label_0040:
		// at
		// com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
		// at
		// com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
		// at
		// com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
		// at
		// com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
		// at
		// com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
		// at
		// com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:756)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:654)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:531)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:498)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:140)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:129)
		// at
		// com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:104)
		// at
		// com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
		// at
		// com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:301)
		// at
		// com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:127)
		//
		throw new IllegalStateException(
				"An error occurred while decompiling this method.");
	}

	//#e
	@Override
	public final void removeBundle(final String s) {
		// TODO appbundle卸载
		synchronized (this) {
			final AppBundle g = g(s);
			synchronized (this.h) {
				// TODO
				// this.h.remove(g.c());
				// monitorexit(this.h)
				// this.j().a(g.c());
			}
		}
	}

	public final Map f() {
		synchronized (this.h) {
			Map localMap2 = this.h;
			return localMap2;
		}
	}

	public final String[] g() {
		return this.e;
	}

	public final String[] h() {
		return this.f;
	}

	public final Set<AppBundle> getAllBundles() {
		return new HashSet<AppBundle>(l());
	}

	@Override
	public final com.alipay.mobile.quinox.classloader.a j() {
		final ClassLoader classLoader = this.a.getClassLoader();
		if (classLoader instanceof com.alipay.mobile.quinox.classloader.a) {
			return (com.alipay.mobile.quinox.classloader.a) classLoader;
		}
		throw new RuntimeException("classloader error");
	}
}
