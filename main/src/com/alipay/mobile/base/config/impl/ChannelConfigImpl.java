package com.alipay.mobile.base.config.impl;

import android.os.Bundle;
import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.util.Properties;

public class ChannelConfigImpl extends ChannelConfig
{
  Properties a = new Properties();
  private String b = "channel.config";
  private MicroApplicationContext c;

  // ERROR //
  public void attachContext(MicroApplicationContext paramMicroApplicationContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: putfield 29	com/alipay/mobile/base/config/impl/ChannelConfigImpl:c	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   7: aload_0
    //   8: new 16	java/util/Properties
    //   11: dup
    //   12: invokespecial 17	java/util/Properties:<init>	()V
    //   15: putfield 19	com/alipay/mobile/base/config/impl/ChannelConfigImpl:a	Ljava/util/Properties;
    //   18: aload_0
    //   19: getfield 19	com/alipay/mobile/base/config/impl/ChannelConfigImpl:a	Ljava/util/Properties;
    //   22: invokevirtual 33	java/util/Properties:isEmpty	()Z
    //   25: ifeq +75 -> 100
    //   28: aload_0
    //   29: getfield 23	com/alipay/mobile/base/config/impl/ChannelConfigImpl:b	Ljava/lang/String;
    //   32: astore 6
    //   34: aload_0
    //   35: getfield 29	com/alipay/mobile/base/config/impl/ChannelConfigImpl:c	Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   38: invokeinterface 39 1 0
    //   43: invokevirtual 45	com/alipay/mobile/framework/AlipayApplication:getBaseContext	()Landroid/content/Context;
    //   46: astore 7
    //   48: new 47	java/io/InputStreamReader
    //   51: dup
    //   52: aload 7
    //   54: invokevirtual 53	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   57: invokevirtual 59	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   60: aload 6
    //   62: invokevirtual 65	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   65: invokespecial 68	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   68: astore 8
    //   70: new 70	java/io/BufferedReader
    //   73: dup
    //   74: aload 8
    //   76: invokespecial 73	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   79: astore 9
    //   81: aload_0
    //   82: getfield 19	com/alipay/mobile/base/config/impl/ChannelConfigImpl:a	Ljava/util/Properties;
    //   85: aload 9
    //   87: invokevirtual 76	java/util/Properties:load	(Ljava/io/Reader;)V
    //   90: aload 8
    //   92: invokevirtual 79	java/io/InputStreamReader:close	()V
    //   95: aload 9
    //   97: invokevirtual 80	java/io/BufferedReader:close	()V
    //   100: aload_0
    //   101: ldc 82
    //   103: invokevirtual 86	com/alipay/mobile/base/config/impl/ChannelConfigImpl:getConfig	(Ljava/lang/String;)Ljava/lang/String;
    //   106: ldc 88
    //   108: invokevirtual 94	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   111: ifeq +182 -> 293
    //   114: ldc 96
    //   116: astore_3
    //   117: invokestatic 102	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   120: aload_3
    //   121: invokevirtual 106	com/alipay/mobile/common/info/AppInfo:setProductID	(Ljava/lang/String;)V
    //   124: ldc 108
    //   126: invokestatic 102	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   129: invokevirtual 112	com/alipay/mobile/common/info/AppInfo:getmChannels	()Ljava/lang/String;
    //   132: invokevirtual 94	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   135: ifeq +82 -> 217
    //   138: invokestatic 114	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   141: invokevirtual 116	com/alipay/mobile/framework/AlipayApplication:getApplicationContext	()Landroid/content/Context;
    //   144: invokestatic 121	com/alipay/mobile/common/utils/CacheSet:getInstance	(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;
    //   147: ldc 123
    //   149: invokevirtual 126	com/alipay/mobile/common/utils/CacheSet:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   152: astore 4
    //   154: aload_0
    //   155: ldc 128
    //   157: invokevirtual 86	com/alipay/mobile/base/config/impl/ChannelConfigImpl:getConfig	(Ljava/lang/String;)Ljava/lang/String;
    //   160: astore 5
    //   162: aload 4
    //   164: invokestatic 133	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   167: ifeq +7 -> 174
    //   170: ldc 108
    //   172: astore 4
    //   174: aload 5
    //   176: invokestatic 133	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   179: ifeq +7 -> 186
    //   182: ldc 108
    //   184: astore 5
    //   186: aload 5
    //   188: ldc 108
    //   190: invokevirtual 94	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   193: ifne +106 -> 299
    //   196: invokestatic 114	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   199: invokestatic 121	com/alipay/mobile/common/utils/CacheSet:getInstance	(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;
    //   202: ldc 123
    //   204: aload 5
    //   206: invokevirtual 137	com/alipay/mobile/common/utils/CacheSet:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   209: invokestatic 102	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   212: aload 5
    //   214: invokevirtual 140	com/alipay/mobile/common/info/AppInfo:setChannels	(Ljava/lang/String;)V
    //   217: return
    //   218: astore 22
    //   220: aconst_null
    //   221: astore 9
    //   223: new 142	java/lang/StringBuilder
    //   226: dup
    //   227: ldc 144
    //   229: invokespecial 146	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   232: aload 6
    //   234: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   240: pop
    //   241: aload_2
    //   242: ifnull +7 -> 249
    //   245: aload_2
    //   246: invokevirtual 79	java/io/InputStreamReader:close	()V
    //   249: aload 9
    //   251: ifnull -151 -> 100
    //   254: aload 9
    //   256: invokevirtual 80	java/io/BufferedReader:close	()V
    //   259: goto -159 -> 100
    //   262: astore 16
    //   264: goto -164 -> 100
    //   267: astore 12
    //   269: aconst_null
    //   270: astore 8
    //   272: aload 8
    //   274: ifnull +8 -> 282
    //   277: aload 8
    //   279: invokevirtual 79	java/io/InputStreamReader:close	()V
    //   282: aload_2
    //   283: ifnull +7 -> 290
    //   286: aload_2
    //   287: invokevirtual 80	java/io/BufferedReader:close	()V
    //   290: aload 12
    //   292: athrow
    //   293: ldc 155
    //   295: astore_3
    //   296: goto -179 -> 117
    //   299: invokestatic 114	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   302: invokestatic 121	com/alipay/mobile/common/utils/CacheSet:getInstance	(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;
    //   305: ldc 123
    //   307: aload 4
    //   309: invokevirtual 137	com/alipay/mobile/common/utils/CacheSet:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   312: invokestatic 102	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   315: aload 4
    //   317: invokevirtual 140	com/alipay/mobile/common/info/AppInfo:setChannels	(Ljava/lang/String;)V
    //   320: return
    //   321: astore 19
    //   323: goto -228 -> 95
    //   326: astore 20
    //   328: goto -228 -> 100
    //   331: astore 17
    //   333: goto -84 -> 249
    //   336: astore 14
    //   338: goto -56 -> 282
    //   341: astore 13
    //   343: goto -53 -> 290
    //   346: astore 12
    //   348: aconst_null
    //   349: astore_2
    //   350: goto -78 -> 272
    //   353: astore 18
    //   355: aload 9
    //   357: astore_2
    //   358: aload 18
    //   360: astore 12
    //   362: goto -90 -> 272
    //   365: astore 11
    //   367: aload_2
    //   368: astore 8
    //   370: aload 9
    //   372: astore_2
    //   373: aload 11
    //   375: astore 12
    //   377: goto -105 -> 272
    //   380: astore 21
    //   382: aload 8
    //   384: astore_2
    //   385: aconst_null
    //   386: astore 9
    //   388: goto -165 -> 223
    //   391: astore 10
    //   393: aload 8
    //   395: astore_2
    //   396: goto -173 -> 223
    //
    // Exception table:
    //   from	to	target	type
    //   48	70	218	java/io/IOException
    //   254	259	262	java/io/IOException
    //   48	70	267	finally
    //   90	95	321	java/io/IOException
    //   95	100	326	java/io/IOException
    //   245	249	331	java/io/IOException
    //   277	282	336	java/io/IOException
    //   286	290	341	java/io/IOException
    //   70	81	346	finally
    //   81	90	353	finally
    //   223	241	365	finally
    //   70	81	380	java/io/IOException
    //   81	90	391	java/io/IOException
  }

  public String getConfig(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return "";
    return this.a.getProperty(paramString);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.config.impl.ChannelConfigImpl
 * JD-Core Version:    0.6.2
 */