package com.alipay.mobile.command.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Proxy;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.alipay.mobile.command.manager.RuntimeInfoManager;
import com.alipay.mobile.command.model.SeriMetaResult;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.apache.http.HttpHost;

public class CommandUtil
{
  private static final String[] a = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };
  private static SharedPreferences b = CommandConfig.getContext().getSharedPreferences("trigger_time_share", 0);
  private static final Map<String, Object> c = new HashMap();

  private static NetworkInfo a()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)CommandConfig.getContext().getSystemService("connectivity");
    if (localConnectivityManager != null)
      return localConnectivityManager.getActiveNetworkInfo();
    return null;
  }

  // ERROR //
  private static <T> SeriMetaResult<T> a(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 87	com/alipay/mobile/command/model/SeriMetaResult
    //   5: dup
    //   6: invokespecial 88	com/alipay/mobile/command/model/SeriMetaResult:<init>	()V
    //   9: astore_2
    //   10: aload_0
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: invokevirtual 94	java/io/File:exists	()Z
    //   18: ifne +5 -> 23
    //   21: aload_2
    //   22: areturn
    //   23: aload_2
    //   24: iconst_1
    //   25: invokevirtual 98	com/alipay/mobile/command/model/SeriMetaResult:setHasMetaFile	(Z)V
    //   28: new 100	java/io/FileInputStream
    //   31: dup
    //   32: aload_0
    //   33: invokespecial 103	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   36: astore_3
    //   37: new 105	java/io/ObjectInputStream
    //   40: dup
    //   41: aload_3
    //   42: invokespecial 108	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   45: astore 4
    //   47: aload_2
    //   48: aload 4
    //   50: invokevirtual 112	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   53: invokevirtual 116	com/alipay/mobile/command/model/SeriMetaResult:setMeta	(Ljava/lang/Object;)V
    //   56: aload_2
    //   57: iconst_1
    //   58: invokevirtual 119	com/alipay/mobile/command/model/SeriMetaResult:setReadSuccess	(Z)V
    //   61: aload 4
    //   63: invokevirtual 122	java/io/ObjectInputStream:close	()V
    //   66: aload_3
    //   67: invokevirtual 123	java/io/FileInputStream:close	()V
    //   70: aload_2
    //   71: areturn
    //   72: astore 12
    //   74: iconst_1
    //   75: anewarray 4	java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: ldc 125
    //   82: aastore
    //   83: pop
    //   84: aload_2
    //   85: areturn
    //   86: astore 15
    //   88: aconst_null
    //   89: astore 4
    //   91: aload_0
    //   92: iconst_1
    //   93: invokestatic 129	com/alipay/mobile/command/util/CommandUtil:delFile	(Ljava/io/File;Z)V
    //   96: iconst_1
    //   97: anewarray 4	java/lang/Object
    //   100: dup
    //   101: iconst_0
    //   102: ldc 125
    //   104: aastore
    //   105: pop
    //   106: aload_2
    //   107: iconst_0
    //   108: invokevirtual 119	com/alipay/mobile/command/model/SeriMetaResult:setReadSuccess	(Z)V
    //   111: aload 4
    //   113: ifnull +8 -> 121
    //   116: aload 4
    //   118: invokevirtual 122	java/io/ObjectInputStream:close	()V
    //   121: aload_1
    //   122: ifnull -101 -> 21
    //   125: aload_1
    //   126: invokevirtual 123	java/io/FileInputStream:close	()V
    //   129: aload_2
    //   130: areturn
    //   131: astore 10
    //   133: iconst_1
    //   134: anewarray 4	java/lang/Object
    //   137: dup
    //   138: iconst_0
    //   139: ldc 125
    //   141: aastore
    //   142: pop
    //   143: aload_2
    //   144: areturn
    //   145: astore 6
    //   147: aconst_null
    //   148: astore 4
    //   150: aload 4
    //   152: ifnull +8 -> 160
    //   155: aload 4
    //   157: invokevirtual 122	java/io/ObjectInputStream:close	()V
    //   160: aload_1
    //   161: ifnull +7 -> 168
    //   164: aload_1
    //   165: invokevirtual 123	java/io/FileInputStream:close	()V
    //   168: aload 6
    //   170: athrow
    //   171: astore 7
    //   173: iconst_1
    //   174: anewarray 4	java/lang/Object
    //   177: dup
    //   178: iconst_0
    //   179: ldc 125
    //   181: aastore
    //   182: pop
    //   183: goto -15 -> 168
    //   186: astore 6
    //   188: aload_3
    //   189: astore_1
    //   190: aconst_null
    //   191: astore 4
    //   193: goto -43 -> 150
    //   196: astore 6
    //   198: aload_3
    //   199: astore_1
    //   200: goto -50 -> 150
    //   203: astore 6
    //   205: goto -55 -> 150
    //   208: astore 14
    //   210: aload_3
    //   211: astore_1
    //   212: aconst_null
    //   213: astore 4
    //   215: goto -124 -> 91
    //   218: astore 5
    //   220: aload_3
    //   221: astore_1
    //   222: goto -131 -> 91
    //
    // Exception table:
    //   from	to	target	type
    //   61	70	72	java/lang/Exception
    //   28	37	86	java/lang/Exception
    //   116	121	131	java/lang/Exception
    //   125	129	131	java/lang/Exception
    //   28	37	145	finally
    //   155	160	171	java/lang/Exception
    //   164	168	171	java/lang/Exception
    //   37	47	186	finally
    //   47	61	196	finally
    //   91	111	203	finally
    //   37	47	208	java/lang/Exception
    //   47	61	218	java/lang/Exception
  }

  private static String a(CommandUtil.ExtFileBasePathEnum paramExtFileBasePathEnum)
  {
    String str1 = Environment.getExternalStorageState();
    String str2 = null;
    String str3;
    if (str1 != null)
    {
      boolean bool = Environment.getExternalStorageState().equals("mounted");
      str2 = null;
      if (bool)
      {
        str3 = "ext_store_path" + paramExtFileBasePathEnum.name();
        str2 = (String)c.get(str3);
        if (str2 == null)
        {
          str2 = Environment.getExternalStorageDirectory().getPath() + File.separatorChar + RuntimeInfoManager.getInstance().baseDir();
          switch (CommandUtil.1.b[paramExtFileBasePathEnum.ordinal()])
          {
          default:
          case 1:
          case 2:
          case 3:
          case 4:
          }
        }
      }
    }
    while (true)
    {
      c.put(str3, str2);
      return str2;
      str2 = str2 + File.separatorChar + "ext";
      continue;
      str2 = str2 + File.separatorChar + "cmd";
      continue;
      str2 = str2 + File.separatorChar + "dynamic";
      continue;
      str2 = str2 + File.separatorChar + "dmeta";
    }
  }

  private static String a(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      int j = paramArrayOfByte[i];
      if (j < 0)
        j += 256;
      int k = j / 16;
      int m = j % 16;
      localStringBuffer.append(a[k] + a[m]);
    }
    return localStringBuffer.toString();
  }

  // ERROR //
  private static boolean a(java.io.InputStream paramInputStream, java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: new 227	java/io/BufferedOutputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 230	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   8: astore_2
    //   9: new 232	java/io/BufferedInputStream
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 233	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_3
    //   18: sipush 4096
    //   21: newarray byte
    //   23: astore 8
    //   25: aload_0
    //   26: aload 8
    //   28: invokevirtual 239	java/io/InputStream:read	([B)I
    //   31: istore 9
    //   33: iload 9
    //   35: iflt +36 -> 71
    //   38: aload_2
    //   39: aload 8
    //   41: iconst_0
    //   42: iload 9
    //   44: invokevirtual 243	java/io/BufferedOutputStream:write	([BII)V
    //   47: goto -22 -> 25
    //   50: astore 6
    //   52: aload_2
    //   53: astore 7
    //   55: aload 6
    //   57: invokevirtual 246	java/io/FileNotFoundException:printStackTrace	()V
    //   60: aload 7
    //   62: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   65: aload_3
    //   66: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   69: iconst_0
    //   70: ireturn
    //   71: aload_2
    //   72: invokevirtual 253	java/io/BufferedOutputStream:flush	()V
    //   75: aload_3
    //   76: invokevirtual 254	java/io/BufferedInputStream:close	()V
    //   79: aload_2
    //   80: invokevirtual 255	java/io/BufferedOutputStream:close	()V
    //   83: aload_2
    //   84: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   87: aload_3
    //   88: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   91: iconst_1
    //   92: ireturn
    //   93: astore 4
    //   95: aconst_null
    //   96: astore_3
    //   97: aconst_null
    //   98: astore_2
    //   99: aload 4
    //   101: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   104: aload_2
    //   105: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   108: aload_3
    //   109: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   112: iconst_0
    //   113: ireturn
    //   114: astore 5
    //   116: aconst_null
    //   117: astore_3
    //   118: aconst_null
    //   119: astore_2
    //   120: aload_2
    //   121: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   124: aload_3
    //   125: invokestatic 250	com/alipay/mobile/command/util/CommandUtil:closeStream	(Ljava/io/Closeable;)V
    //   128: aload 5
    //   130: athrow
    //   131: astore 5
    //   133: aconst_null
    //   134: astore_3
    //   135: goto -15 -> 120
    //   138: astore 5
    //   140: goto -20 -> 120
    //   143: astore 5
    //   145: aload 7
    //   147: astore_2
    //   148: goto -28 -> 120
    //   151: astore 4
    //   153: aconst_null
    //   154: astore_3
    //   155: goto -56 -> 99
    //   158: astore 4
    //   160: goto -61 -> 99
    //   163: astore 6
    //   165: aconst_null
    //   166: astore_3
    //   167: aconst_null
    //   168: astore 7
    //   170: goto -115 -> 55
    //   173: astore 6
    //   175: aload_2
    //   176: astore 7
    //   178: aconst_null
    //   179: astore_3
    //   180: goto -125 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   18	25	50	java/io/FileNotFoundException
    //   25	33	50	java/io/FileNotFoundException
    //   38	47	50	java/io/FileNotFoundException
    //   71	83	50	java/io/FileNotFoundException
    //   0	9	93	java/io/IOException
    //   0	9	114	finally
    //   9	18	131	finally
    //   18	25	138	finally
    //   25	33	138	finally
    //   38	47	138	finally
    //   71	83	138	finally
    //   99	104	138	finally
    //   55	60	143	finally
    //   9	18	151	java/io/IOException
    //   18	25	158	java/io/IOException
    //   25	33	158	java/io/IOException
    //   38	47	158	java/io/IOException
    //   71	83	158	java/io/IOException
    //   0	9	163	java/io/FileNotFoundException
    //   9	18	173	java/io/FileNotFoundException
  }

  public static boolean checkFileInMd5(String paramString, File paramFile)
  {
    if ((paramString == null) || (paramFile == null) || (!paramFile.exists()));
    while (!paramString.equalsIgnoreCase(genFileMd5sum(paramFile)))
      return false;
    return true;
  }

  public static void closeStream(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      new Object[] { ",close stream error." };
    }
  }

  public static boolean copyFile(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null));
    File localFile1;
    do
    {
      return false;
      localFile1 = new File(paramString1);
    }
    while (!localFile1.exists());
    try
    {
      File localFile2 = new File(paramString2);
      if (!localFile2.exists())
        localFile2.createNewFile();
      boolean bool = a(new FileInputStream(localFile1), new FileOutputStream(localFile2));
      return bool;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return false;
  }

  public static boolean createFileDirIfAbsent(File paramFile, boolean paramBoolean)
  {
    boolean bool1 = false;
    if (paramFile == null)
      return bool1;
    if (!paramBoolean);
    while (true)
    {
      try
      {
        if (paramFile.getParentFile().exists())
        {
          bool1 = true;
          if (bool1)
            break;
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = "file:";
          arrayOfObject[1] = paramFile;
          arrayOfObject[2] = ",创建目录结构:";
          arrayOfObject[3] = Boolean.valueOf(bool1);
          break;
        }
      }
      finally
      {
      }
      bool1 = paramFile.getParentFile().mkdirs();
      continue;
      if (paramFile.exists())
      {
        bool1 = true;
      }
      else
      {
        boolean bool2 = paramFile.mkdirs();
        bool1 = bool2;
      }
    }
  }

  // ERROR //
  public static void decoderBase64File(String paramString, File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokevirtual 94	java/io/File:exists	()Z
    //   6: ifne +12 -> 18
    //   9: aload_1
    //   10: iconst_0
    //   11: invokestatic 306	com/alipay/mobile/command/util/CommandUtil:createFileDirIfAbsent	(Ljava/io/File;Z)Z
    //   14: ifne +4 -> 18
    //   17: return
    //   18: aload_0
    //   19: iconst_0
    //   20: invokestatic 312	android/util/Base64:decode	(Ljava/lang/String;I)[B
    //   23: astore 13
    //   25: new 279	java/io/FileOutputStream
    //   28: dup
    //   29: aload_1
    //   30: invokespecial 280	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   33: astore 4
    //   35: aload 4
    //   37: aload 13
    //   39: invokevirtual 315	java/io/FileOutputStream:write	([B)V
    //   42: aload 4
    //   44: invokevirtual 316	java/io/FileOutputStream:close	()V
    //   47: return
    //   48: astore 15
    //   50: iconst_1
    //   51: anewarray 4	java/lang/Object
    //   54: dup
    //   55: iconst_0
    //   56: ldc_w 318
    //   59: aastore
    //   60: pop
    //   61: return
    //   62: astore 8
    //   64: iconst_1
    //   65: anewarray 4	java/lang/Object
    //   68: dup
    //   69: iconst_0
    //   70: ldc_w 320
    //   73: aastore
    //   74: pop
    //   75: aload_2
    //   76: ifnull +83 -> 159
    //   79: aload_2
    //   80: invokevirtual 316	java/io/FileOutputStream:close	()V
    //   83: return
    //   84: astore 10
    //   86: iconst_1
    //   87: anewarray 4	java/lang/Object
    //   90: dup
    //   91: iconst_0
    //   92: ldc_w 318
    //   95: aastore
    //   96: pop
    //   97: return
    //   98: astore_3
    //   99: aconst_null
    //   100: astore 4
    //   102: aload_3
    //   103: astore 5
    //   105: aload 4
    //   107: ifnull +8 -> 115
    //   110: aload 4
    //   112: invokevirtual 316	java/io/FileOutputStream:close	()V
    //   115: aload 5
    //   117: athrow
    //   118: astore 6
    //   120: iconst_1
    //   121: anewarray 4	java/lang/Object
    //   124: dup
    //   125: iconst_0
    //   126: ldc_w 318
    //   129: aastore
    //   130: pop
    //   131: goto -16 -> 115
    //   134: astore 5
    //   136: goto -31 -> 105
    //   139: astore 12
    //   141: aload_2
    //   142: astore 4
    //   144: aload 12
    //   146: astore 5
    //   148: goto -43 -> 105
    //   151: astore 14
    //   153: aload 4
    //   155: astore_2
    //   156: goto -92 -> 64
    //   159: return
    //
    // Exception table:
    //   from	to	target	type
    //   42	47	48	java/io/IOException
    //   2	17	62	java/lang/Throwable
    //   18	35	62	java/lang/Throwable
    //   79	83	84	java/io/IOException
    //   2	17	98	finally
    //   18	35	98	finally
    //   110	115	118	java/io/IOException
    //   35	42	134	finally
    //   64	75	139	finally
    //   35	42	151	java/lang/Throwable
  }

  public static void delDynamicUpAppSource()
  {
    try
    {
      new Object[] { "clear walletUpdate source" };
      delFile(getMetaPath(CommandUtil.ExtFileBasePathEnum.DOWNLOAD_SOURCE_META, "walletupdate.config"), false);
      delFile(new File(getDownLoadFilePath(CommandUtil.ExtFileBasePathEnum.DYNAMIC_UP)), true);
      return;
    }
    catch (Throwable localThrowable)
    {
      new Object[] { "clear dynamic resource error." };
    }
  }

  public static void delFile(File paramFile, boolean paramBoolean)
  {
    if ((paramFile == null) || (!paramFile.exists()));
    do
    {
      do
      {
        return;
        if (paramFile.isDirectory())
          break;
      }
      while (paramFile.delete());
      throw new RuntimeException("del exception");
      File[] arrayOfFile = paramFile.listFiles();
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        delFile(arrayOfFile[j], true);
    }
    while ((!paramBoolean) || (paramFile.delete()));
    throw new RuntimeException("del exception");
  }

  public static String fetchCommandClassPath(String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = CommandConfig.getContext().getPackageManager().getPackageArchiveInfo(paramString, 128);
      if (localPackageInfo != null)
        return localPackageInfo.applicationInfo.metaData.getString("class_path");
      throw new RuntimeException("get package Error.");
    }
    catch (Throwable localThrowable)
    {
      new Object[] { "load apk:", paramString };
    }
    return null;
  }

  public static String fetchConnectedNetType()
  {
    String str = "-1";
    if (isNetConnected())
    {
      NetworkInfo localNetworkInfo = a();
      if (localNetworkInfo != null)
        str = localNetworkInfo.getType() + "#" + localNetworkInfo.getSubtype();
    }
    new Object[] { "网络状况:", str };
    return str;
  }

  public static long fetchCurrnetMiniTimeInIntervalModel()
  {
    return 10L * ((10L + System.currentTimeMillis() / 60000L) / 10L);
  }

  // ERROR //
  public static String fetchJsFileNameFromApk(File paramFile)
  {
    // Byte code:
    //   0: new 428	java/util/zip/ZipFile
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 429	java/util/zip/ZipFile:<init>	(Ljava/io/File;)V
    //   8: astore_1
    //   9: aload_1
    //   10: invokevirtual 433	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   13: astore 6
    //   15: aload 6
    //   17: invokeinterface 438 1 0
    //   22: ifeq +67 -> 89
    //   25: aload 6
    //   27: invokeinterface 441 1 0
    //   32: checkcast 443	java/util/zip/ZipEntry
    //   35: invokevirtual 446	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   38: astore 8
    //   40: aload 8
    //   42: ifnull -27 -> 15
    //   45: aload 8
    //   47: ldc_w 448
    //   50: invokevirtual 452	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   53: iconst_m1
    //   54: if_icmpeq -39 -> 15
    //   57: aload 8
    //   59: ldc_w 454
    //   62: invokevirtual 457	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   65: istore 9
    //   67: iload 9
    //   69: ifeq -54 -> 15
    //   72: aload_1
    //   73: invokevirtual 458	java/util/zip/ZipFile:close	()V
    //   76: aload 8
    //   78: areturn
    //   79: astore 10
    //   81: aload 10
    //   83: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   86: aload 8
    //   88: areturn
    //   89: aload_1
    //   90: invokevirtual 458	java/util/zip/ZipFile:close	()V
    //   93: ldc_w 460
    //   96: areturn
    //   97: astore 7
    //   99: aload 7
    //   101: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   104: goto -11 -> 93
    //   107: astore_2
    //   108: aconst_null
    //   109: astore_1
    //   110: aload_2
    //   111: invokevirtual 461	java/lang/Exception:printStackTrace	()V
    //   114: aload_1
    //   115: ifnull -22 -> 93
    //   118: aload_1
    //   119: invokevirtual 458	java/util/zip/ZipFile:close	()V
    //   122: goto -29 -> 93
    //   125: astore 5
    //   127: aload 5
    //   129: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   132: goto -39 -> 93
    //   135: astore_3
    //   136: aconst_null
    //   137: astore_1
    //   138: aload_1
    //   139: ifnull +7 -> 146
    //   142: aload_1
    //   143: invokevirtual 458	java/util/zip/ZipFile:close	()V
    //   146: aload_3
    //   147: athrow
    //   148: astore 4
    //   150: aload 4
    //   152: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   155: goto -9 -> 146
    //   158: astore_3
    //   159: goto -21 -> 138
    //   162: astore_2
    //   163: goto -53 -> 110
    //
    // Exception table:
    //   from	to	target	type
    //   72	76	79	java/io/IOException
    //   89	93	97	java/io/IOException
    //   0	9	107	java/lang/Exception
    //   118	122	125	java/io/IOException
    //   0	9	135	finally
    //   142	146	148	java/io/IOException
    //   9	15	158	finally
    //   15	40	158	finally
    //   45	67	158	finally
    //   110	114	158	finally
    //   9	15	162	java/lang/Exception
    //   15	40	162	java/lang/Exception
    //   45	67	162	java/lang/Exception
  }

  // ERROR //
  public static String fetchJsInfo(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 215	java/lang/StringBuffer
    //   5: dup
    //   6: invokespecial 216	java/lang/StringBuffer:<init>	()V
    //   9: astore_2
    //   10: new 428	java/util/zip/ZipFile
    //   13: dup
    //   14: aload_0
    //   15: invokespecial 429	java/util/zip/ZipFile:<init>	(Ljava/io/File;)V
    //   18: astore_3
    //   19: aload_3
    //   20: invokevirtual 433	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   23: astore 11
    //   25: aconst_null
    //   26: astore 12
    //   28: aload 11
    //   30: invokeinterface 438 1 0
    //   35: ifeq +131 -> 166
    //   38: aload 11
    //   40: invokeinterface 441 1 0
    //   45: checkcast 443	java/util/zip/ZipEntry
    //   48: astore 15
    //   50: new 464	java/io/BufferedReader
    //   53: dup
    //   54: new 466	java/io/InputStreamReader
    //   57: dup
    //   58: aload_3
    //   59: aload 15
    //   61: invokevirtual 470	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   64: invokespecial 471	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   67: invokespecial 474	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   70: astore_1
    //   71: aload 15
    //   73: invokevirtual 446	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   76: astore 16
    //   78: aload 16
    //   80: ifnull +80 -> 160
    //   83: aload 16
    //   85: ldc_w 448
    //   88: invokevirtual 452	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   91: iconst_m1
    //   92: if_icmpeq +68 -> 160
    //   95: aload 16
    //   97: ldc_w 454
    //   100: invokevirtual 457	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   103: ifeq +57 -> 160
    //   106: aload_1
    //   107: invokevirtual 477	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   110: astore 17
    //   112: aload 17
    //   114: ifnull +46 -> 160
    //   117: aload_2
    //   118: aload 17
    //   120: invokevirtual 219	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   123: pop
    //   124: goto -18 -> 106
    //   127: astore 7
    //   129: aload_3
    //   130: astore 8
    //   132: aload 7
    //   134: invokevirtual 461	java/lang/Exception:printStackTrace	()V
    //   137: aload 8
    //   139: ifnull +8 -> 147
    //   142: aload 8
    //   144: invokevirtual 458	java/util/zip/ZipFile:close	()V
    //   147: aload_1
    //   148: ifnull +7 -> 155
    //   151: aload_1
    //   152: invokevirtual 478	java/io/BufferedReader:close	()V
    //   155: aload_2
    //   156: invokevirtual 220	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   159: areturn
    //   160: aload_1
    //   161: astore 12
    //   163: goto -135 -> 28
    //   166: aload_3
    //   167: invokevirtual 458	java/util/zip/ZipFile:close	()V
    //   170: aload 12
    //   172: ifnull -17 -> 155
    //   175: aload 12
    //   177: invokevirtual 478	java/io/BufferedReader:close	()V
    //   180: goto -25 -> 155
    //   183: astore 14
    //   185: aload 14
    //   187: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   190: goto -35 -> 155
    //   193: astore 13
    //   195: aload 13
    //   197: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   200: goto -30 -> 170
    //   203: astore 10
    //   205: aload 10
    //   207: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   210: goto -63 -> 147
    //   213: astore 9
    //   215: aload 9
    //   217: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   220: goto -65 -> 155
    //   223: astore 4
    //   225: aconst_null
    //   226: astore_3
    //   227: aload_3
    //   228: ifnull +7 -> 235
    //   231: aload_3
    //   232: invokevirtual 458	java/util/zip/ZipFile:close	()V
    //   235: aload_1
    //   236: ifnull +7 -> 243
    //   239: aload_1
    //   240: invokevirtual 478	java/io/BufferedReader:close	()V
    //   243: aload 4
    //   245: athrow
    //   246: astore 6
    //   248: aload 6
    //   250: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   253: goto -18 -> 235
    //   256: astore 5
    //   258: aload 5
    //   260: invokevirtual 256	java/io/IOException:printStackTrace	()V
    //   263: goto -20 -> 243
    //   266: astore 4
    //   268: goto -41 -> 227
    //   271: astore 4
    //   273: aload 12
    //   275: astore_1
    //   276: goto -49 -> 227
    //   279: astore 4
    //   281: aload 8
    //   283: astore_3
    //   284: goto -57 -> 227
    //   287: astore 7
    //   289: aconst_null
    //   290: astore_1
    //   291: aconst_null
    //   292: astore 8
    //   294: goto -162 -> 132
    //   297: astore 7
    //   299: aload 12
    //   301: astore_1
    //   302: aload_3
    //   303: astore 8
    //   305: goto -173 -> 132
    //
    // Exception table:
    //   from	to	target	type
    //   19	25	127	java/lang/Exception
    //   71	78	127	java/lang/Exception
    //   83	106	127	java/lang/Exception
    //   106	112	127	java/lang/Exception
    //   117	124	127	java/lang/Exception
    //   175	180	183	java/io/IOException
    //   166	170	193	java/io/IOException
    //   142	147	203	java/io/IOException
    //   151	155	213	java/io/IOException
    //   10	19	223	finally
    //   231	235	246	java/io/IOException
    //   239	243	256	java/io/IOException
    //   19	25	266	finally
    //   71	78	266	finally
    //   83	106	266	finally
    //   106	112	266	finally
    //   117	124	266	finally
    //   28	71	271	finally
    //   132	137	279	finally
    //   10	19	287	java/lang/Exception
    //   28	71	297	java/lang/Exception
  }

  public static File fetchPathBaseExtDir(String paramString)
  {
    String str1 = "base_path" + paramString;
    File localFile1 = (File)c.get(str1);
    String str2;
    if ((localFile1 == null) || (!localFile1.exists()))
    {
      str2 = a(CommandUtil.ExtFileBasePathEnum.EXT);
      if (TextUtils.isEmpty(str2))
        localFile1 = null;
    }
    else
    {
      return localFile1;
    }
    String[] arrayOfString;
    if (!TextUtils.isEmpty(paramString))
    {
      arrayOfString = paramString.trim().split(":");
      if ((arrayOfString[0].toLowerCase(Locale.getDefault()).equals("sd")) && (arrayOfString.length == 2))
        if (arrayOfString[1].startsWith("/"))
          arrayOfString[1] = arrayOfString[1].substring(1);
    }
    for (paramString = str2 + File.separatorChar + arrayOfString[1]; ; paramString = str2)
    {
      File localFile2 = new File(paramString);
      if (!createFileDirIfAbsent(localFile2, true))
      {
        new Object[] { "fail to creat ", paramString };
        return null;
      }
      c.put(str1, localFile2);
      return localFile2;
    }
  }

  // ERROR //
  public static String genFileMd5sum(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +10 -> 11
    //   4: aload_0
    //   5: invokevirtual 94	java/io/File:exists	()Z
    //   8: ifne +5 -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: sipush 1024
    //   16: newarray byte
    //   18: astore_1
    //   19: new 100	java/io/FileInputStream
    //   22: dup
    //   23: aload_0
    //   24: invokespecial 103	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   27: astore_2
    //   28: ldc_w 527
    //   31: invokestatic 532	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   34: astore 10
    //   36: aload_2
    //   37: aload_1
    //   38: invokevirtual 239	java/io/InputStream:read	([B)I
    //   41: istore 11
    //   43: iload 11
    //   45: ifle +53 -> 98
    //   48: aload 10
    //   50: aload_1
    //   51: iconst_0
    //   52: iload 11
    //   54: invokevirtual 535	java/security/MessageDigest:update	([BII)V
    //   57: goto -21 -> 36
    //   60: astore 6
    //   62: iconst_1
    //   63: anewarray 4	java/lang/Object
    //   66: dup
    //   67: iconst_0
    //   68: ldc_w 537
    //   71: aastore
    //   72: pop
    //   73: aload_2
    //   74: ifnull -63 -> 11
    //   77: aload_2
    //   78: invokevirtual 538	java/io/InputStream:close	()V
    //   81: aconst_null
    //   82: areturn
    //   83: astore 8
    //   85: iconst_1
    //   86: anewarray 4	java/lang/Object
    //   89: dup
    //   90: iconst_0
    //   91: ldc_w 540
    //   94: aastore
    //   95: pop
    //   96: aconst_null
    //   97: areturn
    //   98: aload 10
    //   100: invokevirtual 544	java/security/MessageDigest:digest	()[B
    //   103: invokestatic 546	com/alipay/mobile/command/util/CommandUtil:a	([B)Ljava/lang/String;
    //   106: astore 12
    //   108: aload_2
    //   109: invokevirtual 538	java/io/InputStream:close	()V
    //   112: aload 12
    //   114: areturn
    //   115: astore 13
    //   117: iconst_1
    //   118: anewarray 4	java/lang/Object
    //   121: dup
    //   122: iconst_0
    //   123: ldc_w 540
    //   126: aastore
    //   127: pop
    //   128: aload 12
    //   130: areturn
    //   131: astore 16
    //   133: aconst_null
    //   134: astore_2
    //   135: aload 16
    //   137: astore_3
    //   138: aload_2
    //   139: ifnull +7 -> 146
    //   142: aload_2
    //   143: invokevirtual 538	java/io/InputStream:close	()V
    //   146: aload_3
    //   147: athrow
    //   148: astore 4
    //   150: iconst_1
    //   151: anewarray 4	java/lang/Object
    //   154: dup
    //   155: iconst_0
    //   156: ldc_w 540
    //   159: aastore
    //   160: pop
    //   161: goto -15 -> 146
    //   164: astore_3
    //   165: goto -27 -> 138
    //   168: astore 15
    //   170: aconst_null
    //   171: astore_2
    //   172: goto -110 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   28	36	60	java/lang/Exception
    //   36	43	60	java/lang/Exception
    //   48	57	60	java/lang/Exception
    //   98	108	60	java/lang/Exception
    //   77	81	83	java/io/IOException
    //   108	112	115	java/io/IOException
    //   19	28	131	finally
    //   142	146	148	java/io/IOException
    //   28	36	164	finally
    //   36	43	164	finally
    //   48	57	164	finally
    //   62	73	164	finally
    //   98	108	164	finally
    //   19	28	168	java/lang/Exception
  }

  public static String genObjectMd5sum(Object paramObject)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramObject.toString().getBytes());
      String str = a(localMessageDigest.digest());
      return str;
    }
    catch (Exception localException)
    {
      localException = localException;
      new Object[] { "exception when md5" };
      return null;
    }
    finally
    {
    }
  }

  public static String genObjectMd5sum(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      String str = a(localMessageDigest.digest());
      return str;
    }
    catch (Exception localException)
    {
      localException = localException;
      new Object[] { "exception when md5" };
      return null;
    }
    finally
    {
    }
  }

  public static String genUniqueId()
  {
    return UUID.randomUUID().toString().replace("-", "");
  }

  public static String getDownLoadFilePath(CommandUtil.ExtFileBasePathEnum paramExtFileBasePathEnum)
  {
    return a(paramExtFileBasePathEnum) + File.separatorChar + "download";
  }

  public static String getExceptionMsg(Throwable paramThrowable)
  {
    if (paramThrowable == null)
      return null;
    try
    {
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      Throwable localThrowable2 = paramThrowable.getCause();
      if (localThrowable2 == null)
        paramThrowable.printStackTrace(localPrintWriter);
      while (localThrowable2 != null)
      {
        localThrowable2.printStackTrace(localPrintWriter);
        localThrowable2 = localThrowable2.getCause();
      }
      localPrintWriter.close();
      String str = localStringWriter.toString();
      return str;
    }
    catch (Throwable localThrowable1)
    {
    }
    return "";
  }

  public static Field getField(Class<?> paramClass, String paramString)
  {
    for (Field localField : paramClass.getDeclaredFields())
    {
      if (!localField.isAccessible())
        localField.setAccessible(true);
      if (localField.getName().equals(paramString))
        return localField;
    }
    return null;
  }

  public static String getImei(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
      {
        String str1 = localTelephonyManager.getDeviceId();
        str2 = str1;
        localObject = str2;
        if (TextUtils.isEmpty((CharSequence)localObject))
          localObject = "000000000000000";
        return localObject;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localObject = null;
        continue;
        String str2 = null;
      }
    }
  }

  public static File getMetaPath(CommandUtil.ExtFileBasePathEnum paramExtFileBasePathEnum, String paramString)
  {
    String str1 = "meta_path" + paramExtFileBasePathEnum.name() + paramString;
    File localFile = (File)c.get(str1);
    if (localFile == null)
    {
      String str2 = a(paramExtFileBasePathEnum) + File.separatorChar + "meta";
      localFile = new File(str2 + File.separatorChar + paramString);
      c.put(str1, localFile);
    }
    return localFile;
  }

  public static HttpHost getProxy()
  {
    NetworkInfo localNetworkInfo = a();
    HttpHost localHttpHost = null;
    if (localNetworkInfo != null)
    {
      boolean bool = localNetworkInfo.isAvailable();
      localHttpHost = null;
      if (bool)
      {
        int i = localNetworkInfo.getType();
        localHttpHost = null;
        if (i == 0)
        {
          String str = Proxy.getDefaultHost();
          int j = Proxy.getDefaultPort();
          localHttpHost = null;
          if (str != null)
            localHttpHost = new HttpHost(str, j);
        }
      }
    }
    return localHttpHost;
  }

  public static String getResolution()
  {
    DisplayMetrics localDisplayMetrics = CommandConfig.getContext().getResources().getDisplayMetrics();
    return localDisplayMetrics.widthPixels + "*" + localDisplayMetrics.heightPixels;
  }

  public static SharedPreferences getSp()
  {
    return b;
  }

  public static boolean isInMainThread()
  {
    return (Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper());
  }

  public static boolean isInWallet()
  {
    return ("com.eg.android.AlipayGphone".equalsIgnoreCase(CommandConfig.getContext().getPackageName())) || ("com.eg.android.AlipayGphoneRC".equalsIgnoreCase(CommandConfig.getContext().getPackageName()));
  }

  public static boolean isNeedDoDurTimeTask(SharedPreferences paramSharedPreferences, String paramString, long paramLong)
  {
    long l1 = 0L;
    if (paramSharedPreferences.contains(paramString))
      l1 = paramSharedPreferences.getLong(paramString, l1);
    long l2 = System.currentTimeMillis();
    if (l2 - l1 > paramLong)
    {
      paramSharedPreferences.edit().putLong(paramString, l2).commit();
      return true;
    }
    return false;
  }

  public static boolean isNetConnected()
  {
    NetworkInfo localNetworkInfo = a();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED);
  }

  public static <T> SeriMetaResult<T> readDownLoadSourceMeta(String paramString)
  {
    return a(getMetaPath(CommandUtil.ExtFileBasePathEnum.DOWNLOAD_SOURCE_META, paramString));
  }

  public static <T> SeriMetaResult<T> readMeta(CommandUtil.MetaTypeEnum paramMetaTypeEnum)
  {
    try
    {
      int i = CommandUtil.1.a[paramMetaTypeEnum.ordinal()];
      Object localObject3;
      Object localObject2;
      switch (i)
      {
      default:
        localObject3 = null;
        return localObject3;
      case 1:
        localObject2 = getMetaPath(CommandUtil.ExtFileBasePathEnum.CMD, "commandMeta.config");
      case 2:
      case 3:
      }
      while (true)
      {
        localObject3 = a((File)localObject2);
        break;
        localObject2 = getMetaPath(CommandUtil.ExtFileBasePathEnum.CMD, "taskMeta.config");
        continue;
        File localFile = getMetaPath(CommandUtil.ExtFileBasePathEnum.CMD, "taskRuntimeMeta.config");
        localObject2 = localFile;
      }
    }
    finally
    {
    }
  }

  public static <T> T specifyProperty(T paramT1, T paramT2)
  {
    if (paramT1 == null)
      return paramT2;
    return paramT1;
  }

  public static <T> boolean writeDownLoadSourceMeta(String paramString, T paramT)
  {
    return writeMeta(getMetaPath(CommandUtil.ExtFileBasePathEnum.DOWNLOAD_SOURCE_META, paramString), paramT);
  }

  // ERROR //
  public static <T> boolean writeMeta(File paramFile, T paramT)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_1
    //   3: istore_3
    //   4: aload_0
    //   5: iconst_0
    //   6: invokestatic 306	com/alipay/mobile/command/util/CommandUtil:createFileDirIfAbsent	(Ljava/io/File;Z)Z
    //   9: ifne +5 -> 14
    //   12: iconst_0
    //   13: ireturn
    //   14: new 279	java/io/FileOutputStream
    //   17: dup
    //   18: aload_0
    //   19: invokespecial 280	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   22: astore 4
    //   24: new 746	java/io/ObjectOutputStream
    //   27: dup
    //   28: aload 4
    //   30: invokespecial 747	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   33: astore 5
    //   35: aload 5
    //   37: aload_1
    //   38: invokevirtual 750	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   41: aload 5
    //   43: invokevirtual 751	java/io/ObjectOutputStream:flush	()V
    //   46: aload 5
    //   48: invokevirtual 752	java/io/ObjectOutputStream:close	()V
    //   51: aload 4
    //   53: invokevirtual 316	java/io/FileOutputStream:close	()V
    //   56: iload_3
    //   57: ireturn
    //   58: astore 13
    //   60: iload_3
    //   61: anewarray 4	java/lang/Object
    //   64: iconst_0
    //   65: ldc_w 754
    //   68: aastore
    //   69: goto -13 -> 56
    //   72: astore 15
    //   74: aconst_null
    //   75: astore 5
    //   77: iconst_1
    //   78: anewarray 4	java/lang/Object
    //   81: dup
    //   82: iconst_0
    //   83: ldc_w 756
    //   86: aastore
    //   87: pop
    //   88: aload 5
    //   90: ifnull +8 -> 98
    //   93: aload 5
    //   95: invokevirtual 752	java/io/ObjectOutputStream:close	()V
    //   98: aload_2
    //   99: ifnull +7 -> 106
    //   102: aload_2
    //   103: invokevirtual 316	java/io/FileOutputStream:close	()V
    //   106: iconst_0
    //   107: istore_3
    //   108: goto -52 -> 56
    //   111: astore 8
    //   113: iload_3
    //   114: anewarray 4	java/lang/Object
    //   117: iconst_0
    //   118: ldc_w 754
    //   121: aastore
    //   122: iconst_0
    //   123: istore_3
    //   124: goto -68 -> 56
    //   127: astore 10
    //   129: aconst_null
    //   130: astore 4
    //   132: aload_2
    //   133: ifnull +7 -> 140
    //   136: aload_2
    //   137: invokevirtual 752	java/io/ObjectOutputStream:close	()V
    //   140: aload 4
    //   142: ifnull +8 -> 150
    //   145: aload 4
    //   147: invokevirtual 316	java/io/FileOutputStream:close	()V
    //   150: aload 10
    //   152: athrow
    //   153: astore 11
    //   155: iload_3
    //   156: anewarray 4	java/lang/Object
    //   159: iconst_0
    //   160: ldc_w 754
    //   163: aastore
    //   164: goto -14 -> 150
    //   167: astore 10
    //   169: aconst_null
    //   170: astore_2
    //   171: goto -39 -> 132
    //   174: astore 12
    //   176: aload 5
    //   178: astore_2
    //   179: aload 12
    //   181: astore 10
    //   183: goto -51 -> 132
    //   186: astore 9
    //   188: aload_2
    //   189: astore 4
    //   191: aload 5
    //   193: astore_2
    //   194: aload 9
    //   196: astore 10
    //   198: goto -66 -> 132
    //   201: astore 14
    //   203: aload 4
    //   205: astore_2
    //   206: aconst_null
    //   207: astore 5
    //   209: goto -132 -> 77
    //   212: astore 6
    //   214: aload 4
    //   216: astore_2
    //   217: goto -140 -> 77
    //
    // Exception table:
    //   from	to	target	type
    //   46	56	58	java/lang/Exception
    //   14	24	72	java/lang/Exception
    //   93	98	111	java/lang/Exception
    //   102	106	111	java/lang/Exception
    //   14	24	127	finally
    //   136	140	153	java/lang/Exception
    //   145	150	153	java/lang/Exception
    //   24	35	167	finally
    //   35	46	174	finally
    //   77	88	186	finally
    //   24	35	201	java/lang/Exception
    //   35	46	212	java/lang/Exception
  }

  public static <T> boolean writerMeta(CommandUtil.MetaTypeEnum paramMetaTypeEnum, T paramT)
  {
    try
    {
      int i = CommandUtil.1.a[paramMetaTypeEnum.ordinal()];
      boolean bool;
      Object localObject2;
      switch (i)
      {
      default:
        bool = false;
        return bool;
      case 1:
        localObject2 = getMetaPath(CommandUtil.ExtFileBasePathEnum.CMD, "commandMeta.config");
      case 2:
      case 3:
      }
      while (true)
      {
        bool = writeMeta((File)localObject2, paramT);
        break;
        localObject2 = getMetaPath(CommandUtil.ExtFileBasePathEnum.CMD, "taskMeta.config");
        continue;
        File localFile = getMetaPath(CommandUtil.ExtFileBasePathEnum.CMD, "taskRuntimeMeta.config");
        localObject2 = localFile;
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.CommandUtil
 * JD-Core Version:    0.6.2
 */