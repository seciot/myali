package com.taobao.securityjni;

import android.content.ContextWrapper;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Environment;
import com.taobao.securityjni.a.b;
import com.taobao.securityjni.impl.SESecurity;
import com.taobao.securityjni.test.pubkey.SecurityTestCode;
import com.taobao.securityjni.tools.PhoneInfo;
import com.taobao.securityjni.tools.RetObject;
import com.taobao.securityjni.tools.d;
import com.taobao.securityjni.usertrack.TBSecurityUsertrackProxy;
import com.ut.secbody.SecurityMatrix;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

public final class GlobalInit
{
  private static boolean CHECK_SO_EXIST = false;
  private static final int COP_LOAD_APK_ERROR = 268435456;
  private static final int COP_LOAD_ERROR = 1073741824;
  private static final int COP_LOAD_SUCCESS = 536870912;
  private static final String DATA_DIR = "/data/data/";
  private static final int EXIST_ERROR = 2;
  private static final int HS_P_KEY = 8192;
  private static final int HS_S_KEY = 4096;
  private static volatile boolean INIT_FIRST_OK = false;
  public static final int KIND_ERROR_CODE = 1;
  public static final int KIND_ERROR_EXCEPTION = 2;
  public static final int KIND_ERROR_NOT_CARE = 0;
  private static final int LOAD_ERROR = 1;
  public static volatile int LOAD_FLAG = 0;
  private static final int NEQ_KEY_NULL = 64;
  private static final int PS_KEY_NULL = 32;
  private static final int PS_RK_NULL = 512;
  private static final boolean SECURITY_DEBUG = true;
  private static AtomicBoolean SEDEBUGMODE = new AtomicBoolean(false);
  private static final int ST_KEY_NULL = 16;
  private static final int ST_RK_NULL = 256;
  private static final int SYS_CT_NULL = 128;
  private static ContextWrapper context;
  private static String sAppKey = null;
  private static final SESecurity security = new SESecurity();

  static
  {
    context = null;
    try
    {
      System.loadLibrary("SSECeg-mini-1.2.9.4");
      a.a = 1;
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        LOAD_FLAG = 0x1 | LOAD_FLAG;
        setCheckSoFlag(true);
        com.taobao.securityjni.usertrack.a.a("System.loadLibrary(SSECeg-mini-1.2.9.4)", localThrowable);
      }
    }
  }

  // ERROR //
  private static GlobalInit.a AppFilesDirExists(ContextWrapper paramContextWrapper)
  {
    // Byte code:
    //   0: new 107	com/taobao/securityjni/GlobalInit$a
    //   3: dup
    //   4: iconst_0
    //   5: invokespecial 110	com/taobao/securityjni/GlobalInit$a:<init>	(B)V
    //   8: astore_1
    //   9: aload_1
    //   10: iconst_0
    //   11: putfield 113	com/taobao/securityjni/GlobalInit$a:b	Z
    //   14: aload_0
    //   15: invokevirtual 119	android/content/ContextWrapper:getFilesDir	()Ljava/io/File;
    //   18: astore 5
    //   20: aload 5
    //   22: astore_3
    //   23: aload_3
    //   24: ifnull +30 -> 54
    //   27: aload_3
    //   28: invokevirtual 125	java/io/File:exists	()Z
    //   31: ifne +8 -> 39
    //   34: aload_3
    //   35: invokevirtual 128	java/io/File:mkdir	()Z
    //   38: pop
    //   39: aload_1
    //   40: aload_3
    //   41: invokevirtual 125	java/io/File:exists	()Z
    //   44: putfield 113	com/taobao/securityjni/GlobalInit$a:b	Z
    //   47: aload_1
    //   48: aload_3
    //   49: putfield 131	com/taobao/securityjni/GlobalInit$a:a	Ljava/io/File;
    //   52: aload_1
    //   53: areturn
    //   54: aload_0
    //   55: invokestatic 135	com/taobao/securityjni/GlobalInit:GetPackageDataPath	(Landroid/content/ContextWrapper;)Ljava/lang/String;
    //   58: astore 6
    //   60: new 137	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   67: astore 7
    //   69: aload 7
    //   71: aload 6
    //   73: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc 144
    //   78: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: new 121	java/io/File
    //   85: dup
    //   86: aload 7
    //   88: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokespecial 150	java/io/File:<init>	(Ljava/lang/String;)V
    //   94: astore 9
    //   96: aload 9
    //   98: invokevirtual 128	java/io/File:mkdir	()Z
    //   101: pop
    //   102: aload_1
    //   103: aload 9
    //   105: invokevirtual 125	java/io/File:exists	()Z
    //   108: putfield 113	com/taobao/securityjni/GlobalInit$a:b	Z
    //   111: aload 9
    //   113: astore_3
    //   114: goto -67 -> 47
    //   117: astore_2
    //   118: aconst_null
    //   119: astore_3
    //   120: aload_2
    //   121: astore 4
    //   123: aload 4
    //   125: invokevirtual 153	java/lang/Throwable:printStackTrace	()V
    //   128: goto -81 -> 47
    //   131: astore 4
    //   133: goto -10 -> 123
    //   136: astore 10
    //   138: aload 9
    //   140: astore_3
    //   141: aload 10
    //   143: astore 4
    //   145: goto -22 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   14	20	117	java/lang/Throwable
    //   27	39	131	java/lang/Throwable
    //   39	47	131	java/lang/Throwable
    //   54	96	131	java/lang/Throwable
    //   96	111	136	java/lang/Throwable
  }

  private static void CompatibleLoadKnownSo(ContextWrapper paramContextWrapper, String paramString)
  {
    try
    {
      File localFile = new File(paramString, "libSSECeg-mini-1.2.9.4.so");
      if (GetSecurityDebugMode())
      {
        new StringBuilder().append(LOAD_FLAG).toString();
        new StringBuilder().append(localFile.exists()).toString();
      }
      if (localFile.exists())
      {
        if (((0x1 & LOAD_FLAG) == 1) && (!LoadSoToMem(localFile)))
          LOAD_FLAG = 0x1 | LOAD_FLAG;
        if (!paramString.endsWith("/"))
          paramString = paramString.concat("/");
        com.taobao.securityjni.tools.e.a = paramString;
      }
      if (GetSecurityDebugMode())
        new StringBuilder().append(LOAD_FLAG).toString();
      return;
    }
    finally
    {
    }
  }

  private static void CompatibleSchemeLoadSo(ContextWrapper paramContextWrapper)
  {
    try
    {
      context = (ContextWrapper)paramContextWrapper.getApplicationContext();
      if (((0x1 & LOAD_FLAG) == 1) && ((0x20000000 & LOAD_FLAG) != 536870912) && ((0x40000000 & LOAD_FLAG) != 1073741824))
      {
        boolean bool = LoadSoFromApk(paramContextWrapper);
        if (!bool)
        {
          LOAD_FLAG = 0x10000000 | LOAD_FLAG;
          bool = LoadSoFromAssert(paramContextWrapper);
        }
        if (!bool)
          break label84;
      }
      label84: for (LOAD_FLAG = 0x20000000 | LOAD_FLAG; ; LOAD_FLAG = 0x40000000 | LOAD_FLAG)
        return;
    }
    finally
    {
    }
  }

  // ERROR //
  private static void CopySoToFiles(java.io.InputStream paramInputStream, File paramFile)
  {
    // Byte code:
    //   0: sipush 4096
    //   3: newarray byte
    //   5: astore_2
    //   6: new 206	java/io/FileOutputStream
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 209	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   14: astore_3
    //   15: aload_0
    //   16: aload_2
    //   17: iconst_0
    //   18: sipush 4096
    //   21: invokevirtual 215	java/io/InputStream:read	([BII)I
    //   24: istore 8
    //   26: iload 8
    //   28: ifle +29 -> 57
    //   31: aload_3
    //   32: aload_2
    //   33: iconst_0
    //   34: iload 8
    //   36: invokevirtual 219	java/io/FileOutputStream:write	([BII)V
    //   39: aload_0
    //   40: aload_2
    //   41: iconst_0
    //   42: sipush 4096
    //   45: invokevirtual 215	java/io/InputStream:read	([BII)I
    //   48: istore 9
    //   50: iload 9
    //   52: istore 8
    //   54: goto -28 -> 26
    //   57: aload_3
    //   58: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   61: return
    //   62: astore 4
    //   64: aconst_null
    //   65: astore_3
    //   66: aload 4
    //   68: invokevirtual 153	java/lang/Throwable:printStackTrace	()V
    //   71: aload_3
    //   72: ifnull -11 -> 61
    //   75: aload_3
    //   76: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   79: return
    //   80: astore 7
    //   82: return
    //   83: astore 5
    //   85: aconst_null
    //   86: astore_3
    //   87: aload_3
    //   88: ifnull +7 -> 95
    //   91: aload_3
    //   92: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   95: aload 5
    //   97: athrow
    //   98: astore 10
    //   100: return
    //   101: astore 6
    //   103: goto -8 -> 95
    //   106: astore 5
    //   108: goto -21 -> 87
    //   111: astore 4
    //   113: goto -47 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   6	15	62	java/lang/Throwable
    //   75	79	80	java/lang/Throwable
    //   6	15	83	finally
    //   57	61	98	java/lang/Throwable
    //   91	95	101	java/lang/Throwable
    //   15	26	106	finally
    //   31	50	106	finally
    //   66	71	106	finally
    //   15	26	111	java/lang/Throwable
    //   31	50	111	java/lang/Throwable
  }

  private static boolean ForeverTrue(File paramFile)
  {
    return true;
  }

  private String GetBssidPR(ContextWrapper paramContextWrapper)
  {
    return PhoneInfo.getBssid(paramContextWrapper);
  }

  private String GetCellIdPR(ContextWrapper paramContextWrapper)
  {
    return PhoneInfo.getCellId(paramContextWrapper);
  }

  private static String GetExternalPath()
  {
    return Environment.getExternalStorageDirectory().getAbsolutePath();
  }

  public static String GetGlobalAppKey()
  {
    try
    {
      String str = sAppKey;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private String GetImeiPR(ContextWrapper paramContextWrapper)
  {
    return PhoneInfo.getImei(paramContextWrapper);
  }

  private String GetImsiPR(ContextWrapper paramContextWrapper)
  {
    return PhoneInfo.getImsi(paramContextWrapper);
  }

  private static String GetPackageCodePath(ContextWrapper paramContextWrapper)
  {
    if (paramContextWrapper != null)
      return paramContextWrapper.getPackageCodePath();
    return null;
  }

  private static String GetPackageDataPath(ContextWrapper paramContextWrapper)
  {
    if (paramContextWrapper != null)
      return "/data/data/" + GetPackageName(paramContextWrapper);
    return null;
  }

  private static String GetPackageName(ContextWrapper paramContextWrapper)
  {
    if (paramContextWrapper != null)
      return paramContextWrapper.getPackageName();
    return null;
  }

  private static String GetPackageResPath(ContextWrapper paramContextWrapper)
  {
    if (paramContextWrapper != null)
      return paramContextWrapper.getPackageResourcePath();
    return null;
  }

  public static boolean GetSecurityDebugMode()
  {
    return SEDEBUGMODE.get();
  }

  private String GetSsidPR(ContextWrapper paramContextWrapper)
  {
    return PhoneInfo.getSsid(paramContextWrapper);
  }

  public static void GlobalSecurityInitAsync(ContextWrapper paramContextWrapper)
  {
    if (!INIT_FIRST_OK)
    {
      INIT_FIRST_OK = true;
      CompatibleSchemeLoadSo(paramContextWrapper);
      new Thread(new GlobalInit.b(paramContextWrapper, false, true)).start();
    }
  }

  public static void GlobalSecurityInitAsyncSDK(ContextWrapper paramContextWrapper)
  {
    if (!INIT_FIRST_OK)
    {
      INIT_FIRST_OK = true;
      CompatibleSchemeLoadSo(paramContextWrapper);
      new Thread(new GlobalInit.b(paramContextWrapper, true, false)).start();
    }
  }

  public static void GlobalSecurityInitAsyncSo(ContextWrapper paramContextWrapper)
  {
    if (!INIT_FIRST_OK)
    {
      INIT_FIRST_OK = true;
      CompatibleSchemeLoadSo(paramContextWrapper);
      new Thread(new GlobalInit.b(paramContextWrapper, true, true)).start();
    }
  }

  public static void GlobalSecurityInitAsyncSo(ContextWrapper paramContextWrapper, String paramString)
  {
    if (paramString != null)
    {
      if (!INIT_FIRST_OK)
      {
        INIT_FIRST_OK = true;
        CompatibleLoadKnownSo(paramContextWrapper, paramString);
        new Thread(new GlobalInit.b(paramContextWrapper, true, true)).start();
      }
      return;
    }
    GlobalSecurityInitAsyncSo(paramContextWrapper);
  }

  private static void GlobalSecurityInitJava(ContextWrapper paramContextWrapper, boolean paramBoolean)
  {
    delayQueueInit();
    d.a(new GlobalInit.d((byte)0));
    d.a(new GlobalInit.c(paramBoolean));
    SecurityMatrix.MatrixInitAsync(paramContextWrapper);
    if (GetSecurityDebugMode())
    {
      com.taobao.dp.a.a(paramContextWrapper);
      com.taobao.dp.a.b();
    }
    com.taobao.dp.a.a(paramContextWrapper).a();
  }

  public static void GlobalSecurityInitSync(ContextWrapper paramContextWrapper)
  {
    if (!INIT_FIRST_OK)
    {
      INIT_FIRST_OK = true;
      CompatibleSchemeLoadSo(paramContextWrapper);
      GlobalSecurityInitJava(paramContextWrapper, false);
    }
  }

  public static void GlobalSecurityInitSyncSDK(ContextWrapper paramContextWrapper)
  {
    if (!INIT_FIRST_OK)
    {
      INIT_FIRST_OK = true;
      CompatibleSchemeLoadSo(paramContextWrapper);
      new StaticDataStore(paramContextWrapper).getAppKey();
    }
  }

  public static void GlobalSecurityInitSyncSo(ContextWrapper paramContextWrapper)
  {
    if (!INIT_FIRST_OK)
    {
      INIT_FIRST_OK = true;
      CompatibleSchemeLoadSo(paramContextWrapper);
      new StaticDataStore(paramContextWrapper).getAppKey();
      GlobalSecurityInitJava(paramContextWrapper, true);
    }
  }

  public static void GlobalSecurityInitSyncSo(ContextWrapper paramContextWrapper, String paramString)
  {
    if (paramString != null)
    {
      if (!INIT_FIRST_OK)
      {
        INIT_FIRST_OK = true;
        CompatibleLoadKnownSo(paramContextWrapper, paramString);
        new StaticDataStore(paramContextWrapper).getAppKey();
        GlobalSecurityInitJava(paramContextWrapper, true);
      }
      return;
    }
    GlobalSecurityInitSyncSo(paramContextWrapper);
  }

  // ERROR //
  private static boolean LoadSoFromApk(ContextWrapper paramContextWrapper)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 121	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: invokestatic 342	com/taobao/securityjni/GlobalInit:GetPackageCodePath	(Landroid/content/ContextWrapper;)Ljava/lang/String;
    //   10: invokespecial 150	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: astore_2
    //   14: aload_2
    //   15: invokevirtual 125	java/io/File:exists	()Z
    //   18: ifne +5 -> 23
    //   21: iconst_0
    //   22: ireturn
    //   23: aload_0
    //   24: invokestatic 344	com/taobao/securityjni/GlobalInit:AppFilesDirExists	(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/GlobalInit$a;
    //   27: astore 8
    //   29: aload 8
    //   31: getfield 113	com/taobao/securityjni/GlobalInit$a:b	Z
    //   34: ifeq +199 -> 233
    //   37: new 121	java/io/File
    //   40: dup
    //   41: aload 8
    //   43: getfield 131	com/taobao/securityjni/GlobalInit$a:a	Ljava/io/File;
    //   46: ldc 157
    //   48: invokespecial 347	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   51: astore 9
    //   53: aload 9
    //   55: invokevirtual 125	java/io/File:exists	()Z
    //   58: ifeq +11 -> 69
    //   61: aload 9
    //   63: invokestatic 350	com/taobao/securityjni/GlobalInit:validateSha256	(Ljava/io/File;)Z
    //   66: ifne +281 -> 347
    //   69: aload 9
    //   71: invokevirtual 125	java/io/File:exists	()Z
    //   74: ifeq +9 -> 83
    //   77: aload 9
    //   79: invokevirtual 353	java/io/File:delete	()Z
    //   82: pop
    //   83: new 355	java/util/zip/ZipFile
    //   86: dup
    //   87: aload_2
    //   88: iconst_1
    //   89: invokespecial 358	java/util/zip/ZipFile:<init>	(Ljava/io/File;I)V
    //   92: astore 4
    //   94: new 137	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   101: astore 10
    //   103: aload 10
    //   105: ldc_w 360
    //   108: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: getstatic 365	android/os/Build:CPU_ABI	Ljava/lang/String;
    //   114: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: bipush 47
    //   119: invokevirtual 368	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   122: ldc 157
    //   124: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: pop
    //   128: aload 4
    //   130: aload 10
    //   132: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: invokevirtual 372	java/util/zip/ZipFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   138: astore 12
    //   140: aconst_null
    //   141: astore_1
    //   142: aload 12
    //   144: ifnull +11 -> 155
    //   147: aload 12
    //   149: invokevirtual 377	java/util/zip/ZipEntry:isDirectory	()Z
    //   152: ifeq +51 -> 203
    //   155: getstatic 365	android/os/Build:CPU_ABI	Ljava/lang/String;
    //   158: ldc_w 379
    //   161: invokevirtual 383	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   164: istore 13
    //   166: aconst_null
    //   167: astore_1
    //   168: iload 13
    //   170: ifeq +33 -> 203
    //   173: new 137	java/lang/StringBuilder
    //   176: dup
    //   177: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   180: astore 14
    //   182: aload 14
    //   184: ldc_w 385
    //   187: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: pop
    //   191: aload 4
    //   193: aload 14
    //   195: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: invokevirtual 372	java/util/zip/ZipFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   201: astore 12
    //   203: aconst_null
    //   204: astore_1
    //   205: aload 12
    //   207: ifnull +15 -> 222
    //   210: aload 12
    //   212: invokevirtual 377	java/util/zip/ZipEntry:isDirectory	()Z
    //   215: istore 16
    //   217: iload 16
    //   219: ifeq +24 -> 243
    //   222: aload 4
    //   224: invokevirtual 386	java/util/zip/ZipFile:close	()V
    //   227: iconst_0
    //   228: ireturn
    //   229: astore 19
    //   231: iconst_0
    //   232: ireturn
    //   233: aconst_null
    //   234: invokevirtual 386	java/util/zip/ZipFile:close	()V
    //   237: iconst_0
    //   238: ireturn
    //   239: astore 21
    //   241: iconst_0
    //   242: ireturn
    //   243: aload 4
    //   245: aload 12
    //   247: invokevirtual 390	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   250: astore_1
    //   251: aload_1
    //   252: aload 9
    //   254: invokestatic 392	com/taobao/securityjni/GlobalInit:CopySoToFiles	(Ljava/io/InputStream;Ljava/io/File;)V
    //   257: aload 9
    //   259: invokestatic 173	com/taobao/securityjni/GlobalInit:LoadSoToMem	(Ljava/io/File;)Z
    //   262: istore 17
    //   264: aload_1
    //   265: ifnull +7 -> 272
    //   268: aload_1
    //   269: invokevirtual 393	java/io/InputStream:close	()V
    //   272: aload 4
    //   274: invokevirtual 386	java/util/zip/ZipFile:close	()V
    //   277: iload 17
    //   279: ireturn
    //   280: astore 18
    //   282: iload 17
    //   284: ireturn
    //   285: astore 6
    //   287: aconst_null
    //   288: astore 4
    //   290: aload 6
    //   292: invokevirtual 153	java/lang/Throwable:printStackTrace	()V
    //   295: aload_1
    //   296: ifnull +7 -> 303
    //   299: aload_1
    //   300: invokevirtual 393	java/io/InputStream:close	()V
    //   303: aload 4
    //   305: invokevirtual 386	java/util/zip/ZipFile:close	()V
    //   308: iconst_0
    //   309: ireturn
    //   310: astore 7
    //   312: iconst_0
    //   313: ireturn
    //   314: astore_3
    //   315: aconst_null
    //   316: astore 4
    //   318: aload_1
    //   319: ifnull +7 -> 326
    //   322: aload_1
    //   323: invokevirtual 393	java/io/InputStream:close	()V
    //   326: aload 4
    //   328: invokevirtual 386	java/util/zip/ZipFile:close	()V
    //   331: aload_3
    //   332: athrow
    //   333: astore 5
    //   335: goto -4 -> 331
    //   338: astore_3
    //   339: goto -21 -> 318
    //   342: astore 6
    //   344: goto -54 -> 290
    //   347: aconst_null
    //   348: astore_1
    //   349: aconst_null
    //   350: astore 4
    //   352: goto -95 -> 257
    //
    // Exception table:
    //   from	to	target	type
    //   222	227	229	java/lang/Throwable
    //   233	237	239	java/lang/Throwable
    //   268	272	280	java/lang/Throwable
    //   272	277	280	java/lang/Throwable
    //   23	69	285	java/lang/Throwable
    //   69	83	285	java/lang/Throwable
    //   83	94	285	java/lang/Throwable
    //   299	303	310	java/lang/Throwable
    //   303	308	310	java/lang/Throwable
    //   23	69	314	finally
    //   69	83	314	finally
    //   83	94	314	finally
    //   322	326	333	java/lang/Throwable
    //   326	331	333	java/lang/Throwable
    //   94	140	338	finally
    //   147	155	338	finally
    //   155	166	338	finally
    //   173	203	338	finally
    //   210	217	338	finally
    //   243	257	338	finally
    //   257	264	338	finally
    //   290	295	338	finally
    //   94	140	342	java/lang/Throwable
    //   147	155	342	java/lang/Throwable
    //   155	166	342	java/lang/Throwable
    //   173	203	342	java/lang/Throwable
    //   210	217	342	java/lang/Throwable
    //   243	257	342	java/lang/Throwable
    //   257	264	342	java/lang/Throwable
  }

  // ERROR //
  private static boolean LoadSoFromAssert(ContextWrapper paramContextWrapper)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 399	android/content/ContextWrapper:getAssets	()Landroid/content/res/AssetManager;
    //   4: astore_1
    //   5: aload_0
    //   6: invokestatic 344	com/taobao/securityjni/GlobalInit:AppFilesDirExists	(Landroid/content/ContextWrapper;)Lcom/taobao/securityjni/GlobalInit$a;
    //   9: astore_2
    //   10: aload_2
    //   11: getfield 113	com/taobao/securityjni/GlobalInit$a:b	Z
    //   14: ifeq +44 -> 58
    //   17: aload_2
    //   18: getfield 131	com/taobao/securityjni/GlobalInit$a:a	Ljava/io/File;
    //   21: astore_3
    //   22: new 137	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   29: astore 4
    //   31: getstatic 365	android/os/Build:CPU_ABI	Ljava/lang/String;
    //   34: astore 5
    //   36: aload 5
    //   38: ldc_w 379
    //   41: invokevirtual 383	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   44: ifne +16 -> 60
    //   47: aload 5
    //   49: ldc_w 401
    //   52: invokevirtual 383	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   55: ifne +5 -> 60
    //   58: iconst_0
    //   59: ireturn
    //   60: aload 4
    //   62: ldc_w 403
    //   65: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload 4
    //   71: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: astore 7
    //   76: new 121	java/io/File
    //   79: dup
    //   80: aload_3
    //   81: ldc 157
    //   83: invokespecial 347	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   86: astore 8
    //   88: aload 8
    //   90: invokevirtual 125	java/io/File:exists	()Z
    //   93: ifeq +11 -> 104
    //   96: aload 8
    //   98: invokestatic 350	com/taobao/securityjni/GlobalInit:validateSha256	(Ljava/io/File;)Z
    //   101: ifne +45 -> 146
    //   104: aload 8
    //   106: invokevirtual 125	java/io/File:exists	()Z
    //   109: ifeq +9 -> 118
    //   112: aload 8
    //   114: invokevirtual 353	java/io/File:delete	()Z
    //   117: pop
    //   118: aconst_null
    //   119: astore 9
    //   121: aload_1
    //   122: aload 7
    //   124: invokevirtual 409	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   127: astore 9
    //   129: aload 9
    //   131: aload 8
    //   133: invokestatic 392	com/taobao/securityjni/GlobalInit:CopySoToFiles	(Ljava/io/InputStream;Ljava/io/File;)V
    //   136: aload 9
    //   138: ifnull +8 -> 146
    //   141: aload 9
    //   143: invokevirtual 393	java/io/InputStream:close	()V
    //   146: aload 8
    //   148: invokestatic 173	com/taobao/securityjni/GlobalInit:LoadSoToMem	(Ljava/io/File;)Z
    //   151: ireturn
    //   152: astore 12
    //   154: aload 12
    //   156: invokevirtual 410	java/lang/Exception:printStackTrace	()V
    //   159: aload 9
    //   161: ifnull -15 -> 146
    //   164: aload 9
    //   166: invokevirtual 393	java/io/InputStream:close	()V
    //   169: goto -23 -> 146
    //   172: astore 13
    //   174: goto -28 -> 146
    //   177: astore 10
    //   179: aload 9
    //   181: ifnull +8 -> 189
    //   184: aload 9
    //   186: invokevirtual 393	java/io/InputStream:close	()V
    //   189: aload 10
    //   191: athrow
    //   192: astore 14
    //   194: goto -48 -> 146
    //   197: astore 11
    //   199: goto -10 -> 189
    //
    // Exception table:
    //   from	to	target	type
    //   121	136	152	java/lang/Exception
    //   164	169	172	java/lang/Throwable
    //   121	136	177	finally
    //   154	159	177	finally
    //   141	146	192	java/lang/Throwable
    //   184	189	197	java/lang/Throwable
  }

  private static boolean LoadSoToMem(File paramFile)
  {
    boolean bool1 = ForeverTrue(paramFile);
    boolean bool2 = false;
    if (bool1);
    try
    {
      System.load(paramFile.getAbsolutePath());
      bool2 = true;
      return bool2;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }

  private static final void PubKeyTestSimplify(ContextWrapper paramContextWrapper)
  {
    String str1 = null;
    RetObject localRetObject1 = SecurityTestCode.a();
    if (localRetObject1 == null)
    {
      LOAD_FLAG = 0x10 | LOAD_FLAG;
      return;
    }
    RetObject localRetObject2 = SecurityTestCode.b();
    if (localRetObject2 == null)
    {
      LOAD_FLAG = 0x20 | LOAD_FLAG;
      return;
    }
    String str2;
    if (localRetObject1.rightData == null)
    {
      LOAD_FLAG = 0x100 | LOAD_FLAG;
      str2 = null;
      label58: if (localRetObject2.rightData != null)
        break label193;
      LOAD_FLAG = 0x200 | LOAD_FLAG;
    }
    while (true)
    {
      if (!StringCompare(str2, str1))
        LOAD_FLAG = 0x40 | LOAD_FLAG;
      String str3 = getPKey(paramContextWrapper);
      if ((str3 == null) || ("".equals(str3)))
        break label208;
      String str4 = str3.toLowerCase();
      if ((str2 != null) && (str4.contains(str2.toLowerCase())))
        LOAD_FLAG = 0x1000 | LOAD_FLAG;
      if ((str1 == null) || (!str4.contains(str1.toLowerCase())))
        break;
      LOAD_FLAG = 0x2000 | LOAD_FLAG;
      return;
      str2 = new String(localRetObject1.rightData);
      break label58;
      label193: str1 = new String(localRetObject2.rightData);
    }
    label208: LOAD_FLAG = 0x80 | LOAD_FLAG;
  }

  public static void SetGlobalAppKey(String paramString)
  {
    try
    {
      sAppKey = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void SetSecurityDebugMode(boolean paramBoolean)
  {
    SEDEBUGMODE.getAndSet(paramBoolean);
  }

  private static boolean StringCompare(String paramString1, String paramString2)
  {
    if ((paramString1 == null) && (paramString2 == null));
    do
    {
      return true;
      if ((paramString1 == null) || (paramString2 == null))
        return false;
      if (paramString1.length() != paramString2.length())
        return false;
    }
    while (paramString1.compareToIgnoreCase(paramString2) == 0);
    return false;
  }

  private static final void VerifySoExistence(ContextWrapper paramContextWrapper)
  {
    if (paramContextWrapper == null)
      return;
    String str = GetPackageDataPath(paramContextWrapper);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str).append("/lib/libSSECeg-mini-1.2.9.4.so");
    if (!new File(localStringBuilder.toString()).exists())
    {
      LOAD_FLAG = 0x2 | LOAD_FLAG;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = (localStringBuilder.toString() + " :[File Exists Return False]");
      com.taobao.securityjni.usertrack.a.a(0, "VerifySoExistence", null, null, arrayOfString);
    }
    setCheckSoFlag(false);
  }

  private static void delayQueueInit()
  {
    d.a();
    d.a(new b());
  }

  private static String getPKey(ContextWrapper paramContextWrapper)
  {
    if (paramContextWrapper == null);
    while (true)
    {
      return null;
      try
      {
        String str1 = paramContextWrapper.getPackageName();
        PackageInfo localPackageInfo = paramContextWrapper.getPackageManager().getPackageInfo(str1, 64);
        if (localPackageInfo != null)
        {
          String str2 = localPackageInfo.signatures[0].toCharsString();
          return str2;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
    return null;
  }

  private static void setCheckSoFlag(boolean paramBoolean)
  {
    try
    {
      CHECK_SO_EXIST = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setEnableOutPutExpInfo(boolean paramBoolean)
  {
    TBSecurityUsertrackProxy.setEnableOutPutExpInfo(paramBoolean);
    com.taobao.securityjni.usertrack.a.a(paramBoolean);
  }

  public static void setExpInfoReportKind(int paramInt)
  {
    com.taobao.securityjni.usertrack.a.a(paramInt);
  }

  private static boolean validateSha256(File paramFile)
  {
    return security.SOValidateSha256(paramFile.getAbsolutePath());
  }

  public final native void InitData(ContextWrapper paramContextWrapper);

  public final String getPackageData(ContextWrapper paramContextWrapper, int paramInt)
  {
    if (paramInt == 1)
      return GetPackageCodePath(paramContextWrapper);
    if (paramInt == 2)
      return GetPackageName(paramContextWrapper);
    if (paramInt == 3)
      return GetPackageDataPath(paramContextWrapper);
    if (paramInt == 4)
      return GetPackageResPath(paramContextWrapper);
    if (paramInt == 5)
      return GetExternalPath();
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.GlobalInit
 * JD-Core Version:    0.6.2
 */