package com.alipay.mobile.quinox.classloader;

import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;

import com.alipay.mobile.quinox.bundle.AppBundle;

public class InitExecutor
{
  private static final ThreadFactory f = new f();
  private ExecutorService a;
  private a b;
  private com.alipay.mobile.quinox.bundle.BundlesManager c;
  private Map d;
  private String e;

  // ERROR //
  public InitExecutor(a parama, com.alipay.mobile.quinox.bundle.BundlesManager paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 31	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aload_1
    //   6: putfield 33	com/alipay/mobile/quinox/classloader/InitExecutor:b	Lcom/alipay/mobile/quinox/classloader/a;
    //   9: aload_0
    //   10: aload_2
    //   11: putfield 35	com/alipay/mobile/quinox/classloader/InitExecutor:c	Lcom/alipay/mobile/quinox/bundle/b;
    //   14: aload_0
    //   15: new 37	java/util/concurrent/ConcurrentHashMap
    //   18: dup
    //   19: invokespecial 38	java/util/concurrent/ConcurrentHashMap:<init>	()V
    //   22: putfield 40	com/alipay/mobile/quinox/classloader/InitExecutor:d	Ljava/util/Map;
    //   25: aload_0
    //   26: invokestatic 43	com/alipay/mobile/quinox/classloader/InitExecutor:c	()Ljava/lang/String;
    //   29: putfield 45	com/alipay/mobile/quinox/classloader/InitExecutor:e	Ljava/lang/String;
    //   32: ldc 47
    //   34: invokestatic 53	java/lang/System:loadLibrary	(Ljava/lang/String;)V
    //   37: return
    //   38: astore_3
    //   39: aconst_null
    //   40: astore 4
    //   42: aload_0
    //   43: invokevirtual 57	java/lang/Object:getClass	()Ljava/lang/Class;
    //   46: invokevirtual 63	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   49: new 65	java/lang/StringBuilder
    //   52: dup
    //   53: ldc 67
    //   55: invokespecial 69	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   58: getstatic 74	java/io/File:separator	Ljava/lang/String;
    //   61: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: getstatic 83	android/os/Build:CPU_ABI	Ljava/lang/String;
    //   67: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: getstatic 74	java/io/File:separator	Ljava/lang/String;
    //   73: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc 85
    //   78: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokevirtual 94	java/lang/ClassLoader:getResource	(Ljava/lang/String;)Ljava/net/URL;
    //   87: astore 8
    //   89: aconst_null
    //   90: astore 4
    //   92: aload 8
    //   94: ifnonnull +203 -> 297
    //   97: aload_0
    //   98: invokevirtual 57	java/lang/Object:getClass	()Ljava/lang/Class;
    //   101: invokevirtual 63	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   104: new 65	java/lang/StringBuilder
    //   107: dup
    //   108: ldc 67
    //   110: invokespecial 69	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: getstatic 74	java/io/File:separator	Ljava/lang/String;
    //   116: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: getstatic 97	android/os/Build:CPU_ABI2	Ljava/lang/String;
    //   122: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: getstatic 74	java/io/File:separator	Ljava/lang/String;
    //   128: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc 85
    //   133: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokevirtual 94	java/lang/ClassLoader:getResource	(Ljava/lang/String;)Ljava/net/URL;
    //   142: astore 9
    //   144: new 99	java/io/BufferedInputStream
    //   147: dup
    //   148: aload 9
    //   150: invokevirtual 105	java/net/URL:openStream	()Ljava/io/InputStream;
    //   153: invokespecial 108	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   156: astore 10
    //   158: aload 10
    //   160: new 71	java/io/File
    //   163: dup
    //   164: new 65	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   171: aload_0
    //   172: getfield 35	com/alipay/mobile/quinox/classloader/InitExecutor:c	Lcom/alipay/mobile/quinox/bundle/b;
    //   175: invokeinterface 113 1 0
    //   180: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: getstatic 74	java/io/File:separator	Ljava/lang/String;
    //   186: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc 85
    //   191: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokespecial 114	java/io/File:<init>	(Ljava/lang/String;)V
    //   200: invokestatic 119	com/alipay/mobile/quinox/utils/c:a	(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    //   203: new 65	java/lang/StringBuilder
    //   206: dup
    //   207: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   210: aload_0
    //   211: getfield 35	com/alipay/mobile/quinox/classloader/InitExecutor:c	Lcom/alipay/mobile/quinox/bundle/b;
    //   214: invokeinterface 113 1 0
    //   219: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: getstatic 74	java/io/File:separator	Ljava/lang/String;
    //   225: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: ldc 85
    //   230: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   236: invokestatic 122	java/lang/System:load	(Ljava/lang/String;)V
    //   239: aload 10
    //   241: invokevirtual 125	java/io/BufferedInputStream:close	()V
    //   244: return
    //   245: astore 12
    //   247: return
    //   248: astore 7
    //   250: new 127	java/lang/RuntimeException
    //   253: dup
    //   254: aload_3
    //   255: invokespecial 130	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   258: athrow
    //   259: astore 5
    //   261: aload 4
    //   263: ifnull +8 -> 271
    //   266: aload 4
    //   268: invokevirtual 125	java/io/BufferedInputStream:close	()V
    //   271: aload 5
    //   273: athrow
    //   274: astore 6
    //   276: goto -5 -> 271
    //   279: astore 5
    //   281: aload 10
    //   283: astore 4
    //   285: goto -24 -> 261
    //   288: astore 11
    //   290: aload 10
    //   292: astore 4
    //   294: goto -44 -> 250
    //   297: aload 8
    //   299: astore 9
    //   301: goto -157 -> 144
    //
    // Exception table:
    //   from	to	target	type
    //   32	37	38	java/lang/Throwable
    //   239	244	245	java/io/IOException
    //   42	89	248	java/lang/Throwable
    //   97	144	248	java/lang/Throwable
    //   144	158	248	java/lang/Throwable
    //   42	89	259	finally
    //   97	144	259	finally
    //   144	158	259	finally
    //   250	259	259	finally
    //   266	271	274	java/io/IOException
    //   158	239	279	finally
    //   158	239	288	java/lang/Throwable
  }

  private static String c()
  {
    try
    {
      String str = (String)Class.forName("android.os.SystemProperties").getDeclaredMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { "dalvik.vm.dexopt-flags", "m=y" });
      return str;
    }
    catch (Exception localException)
    {
      com.alipay.mobile.quinox.utils.d.a("InitExecutor", "get dalvik.vm.dexopt-flags error", localException);
    }
    return "m=y";
  }

  private native void dexopt(String paramString1, String paramString2, String paramString3);

  public final d a(String paramString)
  {
    try
    {
      Future localFuture = (Future)this.d.get(paramString);
      if (localFuture == null)
        return null;
      d locald = (d)localFuture.get();
      return locald;
    }
    catch (InterruptedException localInterruptedException)
    {
      com.alipay.mobile.quinox.utils.d.a("InitExecutor", "create classloader error", localInterruptedException);
      return null;
    }
    catch (ExecutionException localExecutionException)
    {
      while (true)
        com.alipay.mobile.quinox.utils.d.a("InitExecutor", "create classloader error", localExecutionException);
    }
  }

  public final void a()
  {
    this.a = Executors.newFixedThreadPool(5, f);
  }

  public final void a(AppBundle parama)
  {
    Future localFuture = this.a.submit(new g(this, parama));
    this.d.put(parama.getBundleName(), localFuture);
  }

  public final void b()
  {
    this.a.shutdown();
  }

  public final void b(AppBundle parama)
  {
    dexopt(parama.f(), com.alipay.mobile.quinox.utils.b.a(parama.f(), this.c.c()), this.e);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.classloader.InitExecutor
 * JD-Core Version:    0.6.2
 */