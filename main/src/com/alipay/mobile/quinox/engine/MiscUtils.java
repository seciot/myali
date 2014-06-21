package com.alipay.mobile.quinox.engine;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.HashSet;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.util.Log;

public class MiscUtils {
	public static final String TAG = "MiscUtils";

	private static Method getMethod(Object instance, String name,
			Class<?>[] parameterTypes) {
		Class<?> clazz = instance.getClass();
		while (clazz != null) {
			try {
				Method method = clazz.getDeclaredMethod(name, parameterTypes);
				method.setAccessible(true);
				return method;
			} catch (NoSuchMethodException localNoSuchMethodException) {
				localNoSuchMethodException.printStackTrace();
				clazz = clazz.getSuperclass();
			}
		}
		return null;
	}

	// ERROR //
	private static boolean a(InputStream paramInputStream,
			OutputStream paramOutputStream) {
		return false;
		// Byte code:
		// 0: new 45 java/io/BufferedOutputStream
		// 3: dup
		// 4: aload_1
		// 5: invokespecial 48 java/io/BufferedOutputStream:<init>
		// (Ljava/io/OutputStream;)V
		// 8: astore_2
		// 9: new 50 java/io/BufferedInputStream
		// 12: dup
		// 13: aload_0
		// 14: invokespecial 53 java/io/BufferedInputStream:<init>
		// (Ljava/io/InputStream;)V
		// 17: astore_3
		// 18: sipush 4096
		// 21: newarray byte
		// 23: astore 8
		// 25: aload_0
		// 26: aload 8
		// 28: invokevirtual 59 java/io/InputStream:read ([B)I
		// 31: istore 9
		// 33: iload 9
		// 35: iflt +36 -> 71
		// 38: aload_2
		// 39: aload 8
		// 41: iconst_0
		// 42: iload 9
		// 44: invokevirtual 63 java/io/BufferedOutputStream:write ([BII)V
		// 47: goto -22 -> 25
		// 50: astore 6
		// 52: aload_2
		// 53: astore 7
		// 55: aload 6
		// 57: invokevirtual 64 java/io/FileNotFoundException:printStackTrace
		// ()V
		// 60: aload 7
		// 62: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 65: aload_3
		// 66: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 69: iconst_0
		// 70: ireturn
		// 71: aload_2
		// 72: invokevirtual 71 java/io/BufferedOutputStream:flush ()V
		// 75: aload_3
		// 76: invokevirtual 74 java/io/BufferedInputStream:close ()V
		// 79: aload_2
		// 80: invokevirtual 75 java/io/BufferedOutputStream:close ()V
		// 83: aload_2
		// 84: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 87: aload_3
		// 88: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 91: iconst_1
		// 92: ireturn
		// 93: astore 4
		// 95: aconst_null
		// 96: astore_3
		// 97: aconst_null
		// 98: astore_2
		// 99: aload 4
		// 101: invokevirtual 76 java/io/IOException:printStackTrace ()V
		// 104: aload_2
		// 105: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 108: aload_3
		// 109: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 112: iconst_0
		// 113: ireturn
		// 114: astore 5
		// 116: aconst_null
		// 117: astore_3
		// 118: aconst_null
		// 119: astore_2
		// 120: aload_2
		// 121: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 124: aload_3
		// 125: invokestatic 68
		// com/alipay/mobile/quinox/engine/MiscUtils:closeStream
		// (Ljava/io/Closeable;)V
		// 128: aload 5
		// 130: athrow
		// 131: astore 5
		// 133: aconst_null
		// 134: astore_3
		// 135: goto -15 -> 120
		// 138: astore 5
		// 140: goto -20 -> 120
		// 143: astore 5
		// 145: aload 7
		// 147: astore_2
		// 148: goto -28 -> 120
		// 151: astore 4
		// 153: aconst_null
		// 154: astore_3
		// 155: goto -56 -> 99
		// 158: astore 4
		// 160: goto -61 -> 99
		// 163: astore 6
		// 165: aconst_null
		// 166: astore_3
		// 167: aconst_null
		// 168: astore 7
		// 170: goto -115 -> 55
		// 173: astore 6
		// 175: aload_2
		// 176: astore 7
		// 178: aconst_null
		// 179: astore_3
		// 180: goto -125 -> 55
		//
		// Exception table:
		// from to target type
		// 18 25 50 java/io/FileNotFoundException
		// 25 33 50 java/io/FileNotFoundException
		// 38 47 50 java/io/FileNotFoundException
		// 71 83 50 java/io/FileNotFoundException
		// 0 9 93 java/io/IOException
		// 0 9 114 finally
		// 9 18 131 finally
		// 18 25 138 finally
		// 25 33 138 finally
		// 38 47 138 finally
		// 71 83 138 finally
		// 99 104 138 finally
		// 55 60 143 finally
		// 9 18 151 java/io/IOException
		// 18 25 158 java/io/IOException
		// 25 33 158 java/io/IOException
		// 38 47 158 java/io/IOException
		// 71 83 158 java/io/IOException
		// 0 9 163 java/io/FileNotFoundException
		// 9 18 173 java/io/FileNotFoundException
	}

	private static boolean a(final Signature[] array, final Signature[] array2) {
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

	@SuppressWarnings("unused")
	private static Certificate[] a(final JarFile jarFile,
			final JarEntry jarEntry, final byte[] array) {
		try {
			final InputStream inputStream = jarFile.getInputStream(jarEntry);
			while (inputStream.read(array, 0, array.length) != -1) {
			}
			inputStream.close();
			Certificate[] certificates = null;
			if (jarEntry != null) {
				certificates = jarEntry.getCertificates();
			}
			return certificates;
		} catch (IOException ex) {
			Log.w("MiscUtils", "Exception reading " + jarEntry.getName()
					+ " in " + jarFile.getName(), (Throwable) ex);
			return null;
		} catch (RuntimeException ex2) {
			Log.w("MiscUtils", "Exception reading " + jarEntry.getName()
					+ " in " + jarFile.getName(), (Throwable) ex2);
			return null;
		}
	}

	public static Object callActivityOnMethod(final Activity activity,
			final String methodName, final Class<?>[] parameterTypes,
			final Object[] args) {
		if (activity != null) {
			try {
				final Method method = getMethod(activity, methodName,
						parameterTypes);
				if (method != null) {
					if (args == null) {
						return method.invoke(activity, new Object[0]);
					}
					return method.invoke(activity, args);
				}
			} catch (IllegalArgumentException ex) {
				ex.printStackTrace();
				return null;
			} catch (IllegalAccessException ex2) {
				ex2.printStackTrace();
				return null;
			} catch (InvocationTargetException ex3) {
				ex3.printStackTrace();
				return null;
			}
		}
		return null;
	}

	public static void closeStream(final Closeable closeable) {
		if (closeable == null) {
			return;
		}
		try {
			closeable.close();
		} catch (IOException ex) {
			Log.e("IOUtil", new StringBuilder().append(ex).toString());
		}
	}

	public static boolean copyFile(final String s, final String s2) {
		if (s != null && s2 != null) {
			final File file = new File(s);
			if (file.exists()) {
				try {
					final File file2 = new File(s2);
					if (!file2.exists()) {
						file2.createNewFile();
					}
					return a(new FileInputStream(file), new FileOutputStream(
							file2));
				} catch (IOException ex) {
					ex.printStackTrace();
					return false;
				}
			}
		}
		return false;
	}

	public static boolean copyToFile(final InputStream inputStream,
			final File file) {
		try {
			if (file.exists()) {
				file.delete();
			}
			final FileOutputStream fileOutputStream = new FileOutputStream(file);
			try {
				final byte[] array = new byte[4096];
				while (true) {
					final int read = inputStream.read(array);
					if (read < 0) {
						break;
					}
					fileOutputStream.write(array, 0, read);
				}
			} finally {
				fileOutputStream.close();
			}
			return true;
		} catch (IOException ex) {
			return false;
		}
	}

	public static boolean fileFromAssets(final String s,
			final AssetManager assetManager, final String s2) {
		if (s == null || assetManager == null || s2 == null) {
			return false;
		}
		try {
			final File file = new File(s2);
			if (!file.exists()) {
				file.createNewFile();
			}
			return a(assetManager.open(s), new FileOutputStream(file));
		} catch (IOException ex) {
			ex.printStackTrace();
			return false;
		}
	}

	public static ClassLoader getBootClassLoader(ClassLoader parent) {
		while (!parent.getClass().getSimpleName()
				.equalsIgnoreCase("BootClassLoader")) {
			parent = parent.getParent();
		}
		return parent;
	}

	public static Signature[] getPackageSignatures(final Context context,
			final String s) {
		try {
			return context.getPackageManager().getPackageInfo(s, 64).signatures;
		} catch (PackageManager.NameNotFoundException ex) {
			ex.printStackTrace();
			return null;
		}
	}

	public static Object newInstance(String className, ClassLoader classLoader) {
		try {
			Object localObject = classLoader.loadClass(className).newInstance();
			return localObject;
		} catch (ClassNotFoundException localClassNotFoundException) {
			localClassNotFoundException.printStackTrace();
			return null;
		} catch (InstantiationException localInstantiationException) {
			localInstantiationException.printStackTrace();
			return null;
		} catch (IllegalAccessException localIllegalAccessException) {
			localIllegalAccessException.printStackTrace();
			return null;
		}
	}

	public static void reportFail(final Context context, final Throwable t) {
		String string;
		if (t == null) {
			string = null;
		} else {
			final StringWriter stringWriter = new StringWriter();
			final PrintWriter printWriter = new PrintWriter(stringWriter);
			Throwable t2 = t.getCause();
			if (t2 == null) {
				t.printStackTrace(printWriter);
			}
			while (t2 != null) {
				t2.printStackTrace(printWriter);
				t2 = t2.getCause();
			}
			printWriter.close();
			string = stringWriter.toString();
		}
		if (string != null) {
			t.printStackTrace();
		}
	}

	public static boolean verifyApk(Signature[] paramArrayOfSignature,
			String paramString) {
		Certificate[] arrayOfCertificate = verifyMD5AndLoadCertificates(paramString);
		if (arrayOfCertificate == null)
			return false;
		Signature[] arrayOfSignature = null;
		if (arrayOfCertificate != null) {
			int i = arrayOfCertificate.length;
			arrayOfSignature = null;
			if (i > 0) {
				int j = arrayOfCertificate.length;
				arrayOfSignature = new Signature[arrayOfCertificate.length];
				int k = 0;
				while (true)
					if (k < j)
						try {
							arrayOfSignature[k] = new Signature(
									arrayOfCertificate[k].getEncoded());
							k++;
						} catch (CertificateEncodingException localCertificateEncodingException) {
							while (true)
								localCertificateEncodingException
										.printStackTrace();
						}
			}
		}
		return a(paramArrayOfSignature, arrayOfSignature);
	}

	// ERROR //
	public static Certificate[] verifyMD5AndLoadCertificates(String paramString) {
		return null;
		// Byte code:
		// 0: new 92 java/util/jar/JarFile
		// 3: dup
		// 4: aload_0
		// 5: invokespecial 304 java/util/jar/JarFile:<init>
		// (Ljava/lang/String;)V
		// 8: astore_1
		// 9: sipush 8192
		// 12: newarray byte
		// 14: astore 5
		// 16: aload_1
		// 17: ldc_w 306
		// 20: invokevirtual 310 java/util/jar/JarFile:getJarEntry
		// (Ljava/lang/String;)Ljava/util/jar/JarEntry;
		// 23: astore 6
		// 25: aload_1
		// 26: aload 6
		// 28: aload 5
		// 30: invokestatic 312 com/alipay/mobile/quinox/engine/MiscUtils:a
		// (Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
		// 33: astore 7
		// 35: aload 7
		// 37: astore_3
		// 38: aload_3
		// 39: ifnonnull +36 -> 75
		// 42: ldc 8
		// 44: new 108 java/lang/StringBuilder
		// 47: dup
		// 48: ldc_w 314
		// 51: invokespecial 113 java/lang/StringBuilder:<init>
		// (Ljava/lang/String;)V
		// 54: aload 6
		// 56: invokevirtual 117 java/util/jar/JarEntry:getName
		// ()Ljava/lang/String;
		// 59: invokevirtual 121 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 62: ldc_w 316
		// 65: invokevirtual 121 java/lang/StringBuilder:append
		// (Ljava/lang/String;)Ljava/lang/StringBuilder;
		// 68: invokevirtual 127 java/lang/StringBuilder:toString
		// ()Ljava/lang/String;
		// 71: invokestatic 163 android/util/Log:e
		// (Ljava/lang/String;Ljava/lang/String;)I
		// 74: pop
		// 75: aload_1
		// 76: invokevirtual 317 java/util/jar/JarFile:close ()V
		// 79: aload_3
		// 80: areturn
		// 81: astore_2
		// 82: aconst_null
		// 83: astore_3
		// 84: aload_2
		// 85: astore 4
		// 87: aload 4
		// 89: invokevirtual 76 java/io/IOException:printStackTrace ()V
		// 92: aload_3
		// 93: areturn
		// 94: astore 4
		// 96: goto -9 -> 87
		//
		// Exception table:
		// from to target type
		// 0 35 81 java/io/IOException
		// 42 75 94 java/io/IOException
		// 75 79 94 java/io/IOException
	}
}
