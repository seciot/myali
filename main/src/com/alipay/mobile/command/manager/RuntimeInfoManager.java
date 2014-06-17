package com.alipay.mobile.command.manager;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.alipay.mobile.command.util.CommandUtil;

public class RuntimeInfoManager
{
  private static RuntimeInfoManager f = new RuntimeInfoManager();
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private SharedPreferences g;
  private String h;

  // ERROR //
  private RuntimeInfoManager()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 27	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: ldc 29
    //   7: putfield 31	com/alipay/mobile/command/manager/RuntimeInfoManager:a	Ljava/lang/String;
    //   10: aload_0
    //   11: ldc 33
    //   13: putfield 35	com/alipay/mobile/command/manager/RuntimeInfoManager:b	Ljava/lang/String;
    //   16: aload_0
    //   17: ldc 37
    //   19: putfield 39	com/alipay/mobile/command/manager/RuntimeInfoManager:c	Ljava/lang/String;
    //   22: aload_0
    //   23: ldc 41
    //   25: putfield 43	com/alipay/mobile/command/manager/RuntimeInfoManager:d	Ljava/lang/String;
    //   28: aload_0
    //   29: ldc 45
    //   31: putfield 47	com/alipay/mobile/command/manager/RuntimeInfoManager:e	Ljava/lang/String;
    //   34: aload_0
    //   35: invokestatic 53	com/alipay/mobile/command/util/CommandConfig:getContext	()Landroid/content/Context;
    //   38: ldc 55
    //   40: iconst_0
    //   41: invokevirtual 61	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   44: putfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   47: aload_0
    //   48: ldc 65
    //   50: putfield 67	com/alipay/mobile/command/manager/RuntimeInfoManager:h	Ljava/lang/String;
    //   53: aload_0
    //   54: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   57: ldc 69
    //   59: invokeinterface 75 2 0
    //   64: ifeq +20 -> 84
    //   67: aload_0
    //   68: aload_0
    //   69: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   72: ldc 69
    //   74: ldc 29
    //   76: invokeinterface 79 3 0
    //   81: putfield 31	com/alipay/mobile/command/manager/RuntimeInfoManager:a	Ljava/lang/String;
    //   84: aload_0
    //   85: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   88: ldc 81
    //   90: invokeinterface 75 2 0
    //   95: ifeq +22 -> 117
    //   98: aload_0
    //   99: aload_0
    //   100: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   103: ldc 81
    //   105: aload_0
    //   106: getfield 35	com/alipay/mobile/command/manager/RuntimeInfoManager:b	Ljava/lang/String;
    //   109: invokeinterface 79 3 0
    //   114: putfield 35	com/alipay/mobile/command/manager/RuntimeInfoManager:b	Ljava/lang/String;
    //   117: aload_0
    //   118: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   121: ldc 83
    //   123: invokeinterface 75 2 0
    //   128: ifeq +22 -> 150
    //   131: aload_0
    //   132: aload_0
    //   133: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   136: ldc 83
    //   138: aload_0
    //   139: getfield 39	com/alipay/mobile/command/manager/RuntimeInfoManager:c	Ljava/lang/String;
    //   142: invokeinterface 79 3 0
    //   147: putfield 39	com/alipay/mobile/command/manager/RuntimeInfoManager:c	Ljava/lang/String;
    //   150: aload_0
    //   151: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   154: ldc 85
    //   156: invokeinterface 75 2 0
    //   161: ifeq +22 -> 183
    //   164: aload_0
    //   165: aload_0
    //   166: getfield 63	com/alipay/mobile/command/manager/RuntimeInfoManager:g	Landroid/content/SharedPreferences;
    //   169: ldc 85
    //   171: aload_0
    //   172: getfield 47	com/alipay/mobile/command/manager/RuntimeInfoManager:e	Ljava/lang/String;
    //   175: invokeinterface 79 3 0
    //   180: putfield 47	com/alipay/mobile/command/manager/RuntimeInfoManager:e	Ljava/lang/String;
    //   183: invokestatic 89	com/alipay/mobile/command/util/CommandConfig:isDebug	()Z
    //   186: ifeq +94 -> 280
    //   189: aconst_null
    //   190: astore_1
    //   191: aload_0
    //   192: ldc 29
    //   194: putfield 43	com/alipay/mobile/command/manager/RuntimeInfoManager:d	Ljava/lang/String;
    //   197: new 91	java/io/BufferedReader
    //   200: dup
    //   201: new 93	java/io/FileReader
    //   204: dup
    //   205: new 95	java/io/File
    //   208: dup
    //   209: new 97	java/lang/StringBuilder
    //   212: dup
    //   213: invokespecial 98	java/lang/StringBuilder:<init>	()V
    //   216: invokestatic 104	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   219: invokevirtual 108	java/io/File:getPath	()Ljava/lang/String;
    //   222: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: getstatic 116	java/io/File:separatorChar	C
    //   228: invokevirtual 119	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   231: ldc 121
    //   233: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokespecial 127	java/io/File:<init>	(Ljava/lang/String;)V
    //   242: invokespecial 130	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   245: invokespecial 133	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   248: astore_2
    //   249: aload_0
    //   250: aload_2
    //   251: invokevirtual 136	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   254: invokevirtual 141	java/lang/String:trim	()Ljava/lang/String;
    //   257: putfield 43	com/alipay/mobile/command/manager/RuntimeInfoManager:d	Ljava/lang/String;
    //   260: aload_2
    //   261: invokevirtual 144	java/io/BufferedReader:close	()V
    //   264: aload_0
    //   265: getfield 43	com/alipay/mobile/command/manager/RuntimeInfoManager:d	Ljava/lang/String;
    //   268: invokestatic 150	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   271: ifeq +9 -> 280
    //   274: aload_0
    //   275: ldc 152
    //   277: putfield 43	com/alipay/mobile/command/manager/RuntimeInfoManager:d	Ljava/lang/String;
    //   280: aload_0
    //   281: new 97	java/lang/StringBuilder
    //   284: dup
    //   285: invokespecial 98	java/lang/StringBuilder:<init>	()V
    //   288: aload_0
    //   289: getfield 67	com/alipay/mobile/command/manager/RuntimeInfoManager:h	Ljava/lang/String;
    //   292: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: ldc 154
    //   297: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: invokestatic 53	com/alipay/mobile/command/util/CommandConfig:getContext	()Landroid/content/Context;
    //   303: invokevirtual 157	android/content/Context:getPackageName	()Ljava/lang/String;
    //   306: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   312: putfield 67	com/alipay/mobile/command/manager/RuntimeInfoManager:h	Ljava/lang/String;
    //   315: aload_0
    //   316: invokevirtual 160	com/alipay/mobile/command/manager/RuntimeInfoManager:dumpInfo	()V
    //   319: return
    //   320: astore 9
    //   322: aconst_null
    //   323: astore_2
    //   324: aload_2
    //   325: ifnull -61 -> 264
    //   328: aload_2
    //   329: invokevirtual 144	java/io/BufferedReader:close	()V
    //   332: goto -68 -> 264
    //   335: astore 4
    //   337: goto -73 -> 264
    //   340: astore 6
    //   342: aload_1
    //   343: ifnull +7 -> 350
    //   346: aload_1
    //   347: invokevirtual 144	java/io/BufferedReader:close	()V
    //   350: aload 6
    //   352: athrow
    //   353: astore 8
    //   355: goto -91 -> 264
    //   358: astore 7
    //   360: goto -10 -> 350
    //   363: astore 5
    //   365: aload_2
    //   366: astore_1
    //   367: aload 5
    //   369: astore 6
    //   371: goto -29 -> 342
    //   374: astore_3
    //   375: goto -51 -> 324
    //
    // Exception table:
    //   from	to	target	type
    //   197	249	320	java/lang/Exception
    //   328	332	335	java/io/IOException
    //   197	249	340	finally
    //   260	264	353	java/io/IOException
    //   346	350	358	java/io/IOException
    //   249	260	363	finally
    //   249	260	374	java/lang/Exception
  }

  private String a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if ((!paramString2.equalsIgnoreCase(paramString3)) && (!TextUtils.isEmpty(paramString3)))
      {
        this.g.edit().putString(paramString1, paramString3).commit();
        return paramString3;
      }
    }
    catch (Exception localException)
    {
      new Object[] { "update RuntimeInfo error. tag:", paramString1 };
      dumpInfo();
    }
    return null;
  }

  public static RuntimeInfoManager getInstance()
  {
    return f;
  }

  public String baseDir()
  {
    return this.h;
  }

  public void dumpInfo()
  {
    Object[] arrayOfObject = new Object[9];
    arrayOfObject[0] = "RuntimeInfoManager [currentUserId=";
    arrayOfObject[1] = this.a;
    arrayOfObject[2] = ", channel=";
    arrayOfObject[3] = this.b;
    arrayOfObject[4] = ", productVersion=";
    arrayOfObject[5] = this.c;
    arrayOfObject[6] = ", rpcUrl=";
    arrayOfObject[7] = this.d;
    arrayOfObject[8] = "]";
  }

  public String getChannel()
  {
    return this.b;
  }

  public String getCurrentUserId()
  {
    return this.a;
  }

  public String getProductId()
  {
    return this.e;
  }

  public String getProductVersion()
  {
    if (!CommandUtil.isInWallet())
      return "";
    return this.c;
  }

  public String getRpcUrl()
  {
    return this.d;
  }

  public void updateChannel(String paramString)
  {
    String str = a("channel", this.b, paramString);
    if (str != null)
      this.b = str;
  }

  public void updateCurrentUseId(String paramString)
  {
    String str = a("userId", this.a, paramString);
    if (str != null)
      this.a = str;
  }

  public void updateProductId(String paramString)
  {
    String str = a("productId", this.e, paramString);
    if (str != null)
      this.e = str;
  }

  public void updateProductVersion(String paramString)
  {
    String str = a("productVersion", this.c, paramString);
    if (str != null)
      this.c = str;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.RuntimeInfoManager
 * JD-Core Version:    0.6.2
 */