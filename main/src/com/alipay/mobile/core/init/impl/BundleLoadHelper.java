package com.alipay.mobile.core.init.impl;

import com.alipay.mobile.core.ApplicationManager;
import com.alipay.mobile.core.app.impl.LocalBroadcastManagerWrapper;
import com.alipay.mobile.core.init.BootLoader;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.interfaces.InterfaceManager;
import com.alipay.mobile.framework.service.ext.ExternalServiceManager;
import java.util.Iterator;
import java.util.Set;

public class BundleLoadHelper
{
  private BootLoader a;
  private MicroApplicationContext b;
  private ApplicationManager c;
  private ExternalServiceManager d;
  private InterfaceManager e;
  LocalBroadcastManagerWrapper mLocalBroadcastManagerWrapper;

  public BundleLoadHelper(BootLoader paramBootLoader)
  {
    this.a = paramBootLoader;
    this.b = this.a.getContext();
    this.c = ((ApplicationManager)this.b.findServiceByInterface(ApplicationManager.class.getName()));
    this.d = ((ExternalServiceManager)this.b.findServiceByInterface(ExternalServiceManager.class.getName()));
    this.mLocalBroadcastManagerWrapper = ((LocalBroadcastManagerWrapper)this.b.findServiceByInterface(LocalBroadcastManagerWrapper.class.getName()));
    this.e = this.b.getInterfaceManager();
  }

  public void loadBundle(BundleContext paramBundleContext, String paramString)
  {
    ClassLoader localClassLoader = paramBundleContext.findClassLoaderByBundleName(paramString);
    Set localSet = paramBundleContext.findPackagesByBundleName(paramString);
    if (localSet == null);
    while (true)
    {
      return;
      Iterator localIterator = localSet.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        try
        {
          if (str.trim().length() > 0)
            loadBundle(localClassLoader, str);
        }
        catch (Throwable localThrowable)
        {
          new StringBuilder("bundleName:").append(paramString).toString();
        }
      }
    }
  }

  // ERROR //
  public void loadBundle(ClassLoader paramClassLoader, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: new 105	java/lang/StringBuilder
    //   4: dup
    //   5: aload_2
    //   6: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   9: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: ldc 127
    //   14: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   20: invokevirtual 133	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   23: invokevirtual 136	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   26: checkcast 138	com/alipay/mobile/framework/BaseMetaInfo
    //   29: astore 29
    //   31: aload 29
    //   33: aload_1
    //   34: invokevirtual 142	com/alipay/mobile/framework/BaseMetaInfo:setClassLoader	(Ljava/lang/ClassLoader;)V
    //   37: aload 29
    //   39: astore 6
    //   41: aload 6
    //   43: ifnonnull +30 -> 73
    //   46: return
    //   47: astore_3
    //   48: aconst_null
    //   49: astore 4
    //   51: new 105	java/lang/StringBuilder
    //   54: dup
    //   55: invokespecial 143	java/lang/StringBuilder:<init>	()V
    //   58: aload_3
    //   59: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: pop
    //   66: aload 4
    //   68: astore 6
    //   70: goto -29 -> 41
    //   73: aload 6
    //   75: invokevirtual 150	com/alipay/mobile/framework/BaseMetaInfo:getApplications	()Ljava/util/List;
    //   78: astore 7
    //   80: aload 7
    //   82: ifnull +56 -> 138
    //   85: aload 7
    //   87: invokeinterface 155 1 0
    //   92: ifle +46 -> 138
    //   95: aload_0
    //   96: getfield 47	com/alipay/mobile/core/init/impl/BundleLoadHelper:c	Lcom/alipay/mobile/core/ApplicationManager;
    //   99: aload 7
    //   101: invokeinterface 159 2 0
    //   106: ldc 161
    //   108: aload_2
    //   109: invokevirtual 165	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   112: ifeq +26 -> 138
    //   115: aload 6
    //   117: invokevirtual 168	com/alipay/mobile/framework/BaseMetaInfo:getEntry	()Ljava/lang/String;
    //   120: astore 28
    //   122: aload 28
    //   124: ifnull +14 -> 138
    //   127: aload_0
    //   128: getfield 47	com/alipay/mobile/core/init/impl/BundleLoadHelper:c	Lcom/alipay/mobile/core/ApplicationManager;
    //   131: aload 28
    //   133: invokeinterface 171 2 0
    //   138: aload 6
    //   140: invokevirtual 174	com/alipay/mobile/framework/BaseMetaInfo:getServices	()Ljava/util/List;
    //   143: astore 8
    //   145: aload 8
    //   147: ifnull +32 -> 179
    //   150: aload 8
    //   152: invokeinterface 155 1 0
    //   157: ifle +22 -> 179
    //   160: aload 8
    //   162: invokeinterface 175 1 0
    //   167: astore 26
    //   169: aload 26
    //   171: invokeinterface 87 1 0
    //   176: ifne +146 -> 322
    //   179: aload 6
    //   181: invokevirtual 178	com/alipay/mobile/framework/BaseMetaInfo:getBroadcastReceivers	()Ljava/util/List;
    //   184: astore 9
    //   186: aload 9
    //   188: ifnull +32 -> 220
    //   191: aload 9
    //   193: invokeinterface 155 1 0
    //   198: ifle +22 -> 220
    //   201: aload 9
    //   203: invokeinterface 175 1 0
    //   208: astore 16
    //   210: aload 16
    //   212: invokeinterface 87 1 0
    //   217: ifne +134 -> 351
    //   220: aload 6
    //   222: getfield 182	com/alipay/mobile/framework/BaseMetaInfo:interfaces	Ljava/util/List;
    //   225: astore 10
    //   227: aload 10
    //   229: ifnull -183 -> 46
    //   232: aload 10
    //   234: invokeinterface 155 1 0
    //   239: ifle -193 -> 46
    //   242: aload 10
    //   244: invokeinterface 175 1 0
    //   249: astore 11
    //   251: aload 11
    //   253: invokeinterface 87 1 0
    //   258: ifeq -212 -> 46
    //   261: aload 11
    //   263: invokeinterface 91 1 0
    //   268: checkcast 184	com/alipay/mobile/framework/interfaces/InterfaceDescription
    //   271: astore 12
    //   273: aload 12
    //   275: invokevirtual 187	com/alipay/mobile/framework/interfaces/InterfaceDescription:getClassName	()Ljava/lang/String;
    //   278: ifnull -27 -> 251
    //   281: aload 12
    //   283: invokevirtual 191	com/alipay/mobile/framework/interfaces/InterfaceDescription:getClassLoader	()Ljava/lang/ClassLoader;
    //   286: aload 12
    //   288: invokevirtual 187	com/alipay/mobile/framework/interfaces/InterfaceDescription:getClassName	()Ljava/lang/String;
    //   291: invokevirtual 133	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   294: invokevirtual 136	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   297: checkcast 193	com/alipay/mobile/framework/interfaces/RouterInterface
    //   300: astore 14
    //   302: aload 14
    //   304: ifnull -53 -> 251
    //   307: aload_0
    //   308: getfield 61	com/alipay/mobile/core/init/impl/BundleLoadHelper:e	Lcom/alipay/mobile/framework/interfaces/InterfaceManager;
    //   311: aload 12
    //   313: aload 14
    //   315: invokevirtual 199	com/alipay/mobile/framework/interfaces/InterfaceManager:registerInterface	(Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;Lcom/alipay/mobile/framework/interfaces/RouterInterface;)Z
    //   318: pop
    //   319: goto -68 -> 251
    //   322: aload 26
    //   324: invokeinterface 91 1 0
    //   329: checkcast 201	com/alipay/mobile/framework/service/ServiceDescription
    //   332: astore 27
    //   334: aload 27
    //   336: ifnull -167 -> 169
    //   339: aload_0
    //   340: getfield 51	com/alipay/mobile/core/init/impl/BundleLoadHelper:d	Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;
    //   343: aload 27
    //   345: invokevirtual 205	com/alipay/mobile/framework/service/ext/ExternalServiceManager:registerExtnernalService	(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    //   348: goto -179 -> 169
    //   351: aload 16
    //   353: invokeinterface 91 1 0
    //   358: checkcast 207	com/alipay/mobile/framework/msg/BroadcastReceiverDescription
    //   361: astore 17
    //   363: aload 17
    //   365: invokevirtual 208	com/alipay/mobile/framework/msg/BroadcastReceiverDescription:getClassName	()Ljava/lang/String;
    //   368: ifnonnull +28 -> 396
    //   371: new 105	java/lang/StringBuilder
    //   374: dup
    //   375: ldc 210
    //   377: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   380: aload_2
    //   381: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: ldc 212
    //   386: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   392: pop
    //   393: goto -183 -> 210
    //   396: aload 17
    //   398: invokevirtual 216	com/alipay/mobile/framework/msg/BroadcastReceiverDescription:getMsgCode	()[Ljava/lang/String;
    //   401: ifnull +12 -> 413
    //   404: aload 17
    //   406: invokevirtual 216	com/alipay/mobile/framework/msg/BroadcastReceiverDescription:getMsgCode	()[Ljava/lang/String;
    //   409: arraylength
    //   410: ifgt +30 -> 440
    //   413: new 105	java/lang/StringBuilder
    //   416: dup
    //   417: aload 17
    //   419: invokevirtual 208	com/alipay/mobile/framework/msg/BroadcastReceiverDescription:getClassName	()Ljava/lang/String;
    //   422: invokestatic 125	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   425: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   428: ldc 218
    //   430: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   436: pop
    //   437: goto -227 -> 210
    //   440: aload 17
    //   442: invokevirtual 219	com/alipay/mobile/framework/msg/BroadcastReceiverDescription:getClassLoader	()Ljava/lang/ClassLoader;
    //   445: aload 17
    //   447: invokevirtual 208	com/alipay/mobile/framework/msg/BroadcastReceiverDescription:getClassName	()Ljava/lang/String;
    //   450: invokevirtual 133	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   453: invokevirtual 136	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   456: checkcast 221	android/content/BroadcastReceiver
    //   459: astore 20
    //   461: aload 20
    //   463: ifnull -253 -> 210
    //   466: new 223	android/content/IntentFilter
    //   469: dup
    //   470: invokespecial 224	android/content/IntentFilter:<init>	()V
    //   473: astore 21
    //   475: aload 17
    //   477: invokevirtual 216	com/alipay/mobile/framework/msg/BroadcastReceiverDescription:getMsgCode	()[Ljava/lang/String;
    //   480: astore 22
    //   482: aload 22
    //   484: arraylength
    //   485: istore 23
    //   487: iconst_0
    //   488: istore 24
    //   490: iload 24
    //   492: iload 23
    //   494: if_icmplt +25 -> 519
    //   497: aload_0
    //   498: getfield 55	com/alipay/mobile/core/init/impl/BundleLoadHelper:mLocalBroadcastManagerWrapper	Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
    //   501: aload 20
    //   503: aload 21
    //   505: invokevirtual 228	com/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    //   508: goto -298 -> 210
    //   511: astore 19
    //   513: aconst_null
    //   514: astore 20
    //   516: goto -55 -> 461
    //   519: aload 21
    //   521: aload 22
    //   523: iload 24
    //   525: aaload
    //   526: invokevirtual 231	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   529: iinc 24 1
    //   532: goto -42 -> 490
    //   535: astore 13
    //   537: aconst_null
    //   538: astore 14
    //   540: goto -238 -> 302
    //   543: astore 30
    //   545: aload 29
    //   547: astore 4
    //   549: aload 30
    //   551: astore_3
    //   552: goto -501 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   0	31	47	java/lang/Exception
    //   440	461	511	java/lang/InstantiationException
    //   281	302	535	java/lang/InstantiationException
    //   31	37	543	java/lang/Exception
  }

  public void loadBundleDefinitions()
  {
    BundleContext localBundleContext = AlipayApplication.getInstance().getBundleContext();
    Iterator localIterator = localBundleContext.getAllBundleNames().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str = (String)localIterator.next();
      if (!localBundleContext.isLazyBundleByBundleName(str))
        loadBundle(localBundleContext, str);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.init.impl.BundleLoadHelper
 * JD-Core Version:    0.6.2
 */