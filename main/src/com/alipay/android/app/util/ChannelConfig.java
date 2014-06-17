package com.alipay.android.app.util;

import java.util.Properties;

public class ChannelConfig
{
  Properties a = new Properties();
  private String b = "channel.config";

  public final String a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return "";
    return this.a.getProperty(paramString);
  }

  // ERROR //
  public final void a(com.alipay.mobile.framework.MicroApplicationContext paramMicroApplicationContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: new 14	java/util/Properties
    //   6: dup
    //   7: invokespecial 15	java/util/Properties:<init>	()V
    //   10: putfield 17	com/alipay/android/app/util/ChannelConfig:a	Ljava/util/Properties;
    //   13: aload_0
    //   14: getfield 17	com/alipay/android/app/util/ChannelConfig:a	Ljava/util/Properties;
    //   17: invokevirtual 40	java/util/Properties:isEmpty	()Z
    //   20: ifeq +70 -> 90
    //   23: aload_0
    //   24: getfield 21	com/alipay/android/app/util/ChannelConfig:b	Ljava/lang/String;
    //   27: astore_3
    //   28: aload_1
    //   29: invokeinterface 46 1 0
    //   34: invokevirtual 52	com/alipay/mobile/framework/AlipayApplication:getBaseContext	()Landroid/content/Context;
    //   37: astore 4
    //   39: new 54	java/io/InputStreamReader
    //   42: dup
    //   43: aload 4
    //   45: invokevirtual 60	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   48: invokevirtual 66	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   51: aload_3
    //   52: invokevirtual 72	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   55: invokespecial 75	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   58: astore 5
    //   60: new 77	java/io/BufferedReader
    //   63: dup
    //   64: aload 5
    //   66: invokespecial 80	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   69: astore 6
    //   71: aload_0
    //   72: getfield 17	com/alipay/android/app/util/ChannelConfig:a	Ljava/util/Properties;
    //   75: aload 6
    //   77: invokevirtual 83	java/util/Properties:load	(Ljava/io/Reader;)V
    //   80: aload 5
    //   82: invokevirtual 86	java/io/InputStreamReader:close	()V
    //   85: aload 6
    //   87: invokevirtual 87	java/io/BufferedReader:close	()V
    //   90: return
    //   91: astore 19
    //   93: aconst_null
    //   94: astore 6
    //   96: new 89	java/lang/StringBuilder
    //   99: dup
    //   100: ldc 91
    //   102: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: aload_3
    //   106: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: pop
    //   113: aload_2
    //   114: ifnull +7 -> 121
    //   117: aload_2
    //   118: invokevirtual 86	java/io/InputStreamReader:close	()V
    //   121: aload 6
    //   123: ifnull -33 -> 90
    //   126: aload 6
    //   128: invokevirtual 87	java/io/BufferedReader:close	()V
    //   131: return
    //   132: astore 13
    //   134: return
    //   135: astore 9
    //   137: aconst_null
    //   138: astore 5
    //   140: aload 5
    //   142: ifnull +8 -> 150
    //   145: aload 5
    //   147: invokevirtual 86	java/io/InputStreamReader:close	()V
    //   150: aload_2
    //   151: ifnull +7 -> 158
    //   154: aload_2
    //   155: invokevirtual 87	java/io/BufferedReader:close	()V
    //   158: aload 9
    //   160: athrow
    //   161: astore 16
    //   163: goto -78 -> 85
    //   166: astore 17
    //   168: return
    //   169: astore 14
    //   171: goto -50 -> 121
    //   174: astore 11
    //   176: goto -26 -> 150
    //   179: astore 10
    //   181: goto -23 -> 158
    //   184: astore 9
    //   186: aconst_null
    //   187: astore_2
    //   188: goto -48 -> 140
    //   191: astore 15
    //   193: aload 6
    //   195: astore_2
    //   196: aload 15
    //   198: astore 9
    //   200: goto -60 -> 140
    //   203: astore 8
    //   205: aload_2
    //   206: astore 5
    //   208: aload 6
    //   210: astore_2
    //   211: aload 8
    //   213: astore 9
    //   215: goto -75 -> 140
    //   218: astore 18
    //   220: aload 5
    //   222: astore_2
    //   223: aconst_null
    //   224: astore 6
    //   226: goto -130 -> 96
    //   229: astore 7
    //   231: aload 5
    //   233: astore_2
    //   234: goto -138 -> 96
    //
    // Exception table:
    //   from	to	target	type
    //   39	60	91	java/io/IOException
    //   126	131	132	java/io/IOException
    //   39	60	135	finally
    //   80	85	161	java/io/IOException
    //   85	90	166	java/io/IOException
    //   117	121	169	java/io/IOException
    //   145	150	174	java/io/IOException
    //   154	158	179	java/io/IOException
    //   60	71	184	finally
    //   71	80	191	finally
    //   96	113	203	finally
    //   60	71	218	java/io/IOException
    //   71	80	229	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.ChannelConfig
 * JD-Core Version:    0.6.2
 */