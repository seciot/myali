package com.alipay.pushsdk.c.a;

import android.content.Context;
import com.alipay.pushsdk.push.a.o;
import java.util.concurrent.atomic.AtomicBoolean;

public class i
{
  private static final String a = BundlesManagerImpl.getBundle(i.class);
  private static AtomicBoolean b = new AtomicBoolean(false);

  public static void setBundlePath(Context paramContext)
  {
    while (true)
    {
      synchronized (f.k)
      {
        f.i = 1 + f.i;
        long l = System.currentTimeMillis() - f.j;
        BundlesManagerImpl.e(3, AppBundle, "tracelogFlag=" + o.getAllBundles() + ", log count=" + f.i + ", send log duration=" + l);
        if ((!o.getAllBundles()) || (f.i < 30) || (l < 1800000L))
        {
          BundlesManagerImpl.e(4, AppBundle, "checkAndSend is not ready.");
          return;
        }
        if (BundlesManager.get())
          return;
      }
      BundlesManager.set(true);
      new j(paramContext).start();
    }
  }

  // ERROR //
  private static byte[] getBundle(String paramString)
  {
    // Byte code:
    //   0: new 106	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 107	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: new 109	java/util/zip/GZIPOutputStream
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 112	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_2
    //   17: aload_0
    //   18: ldc 114
    //   20: invokevirtual 119	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   23: astore 7
    //   25: iconst_5
    //   26: getstatic 17	com/alipay/pushsdk/c/a/i:a	Ljava/lang/String;
    //   29: new 50	java/lang/StringBuilder
    //   32: dup
    //   33: ldc 121
    //   35: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   38: aload_0
    //   39: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 84	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   48: iconst_4
    //   49: getstatic 17	com/alipay/pushsdk/c/a/i:a	Ljava/lang/String;
    //   52: new 50	java/lang/StringBuilder
    //   55: dup
    //   56: ldc 123
    //   58: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: aload 7
    //   63: arraylength
    //   64: invokevirtual 72	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   67: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokestatic 84	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   73: aload_2
    //   74: aload 7
    //   76: iconst_0
    //   77: aload 7
    //   79: arraylength
    //   80: invokevirtual 127	java/util/zip/GZIPOutputStream:write	([BII)V
    //   83: aload_2
    //   84: invokevirtual 130	java/util/zip/GZIPOutputStream:finish	()V
    //   87: aload_2
    //   88: invokevirtual 133	java/util/zip/GZIPOutputStream:close	()V
    //   91: aload_1
    //   92: invokevirtual 134	java/io/ByteArrayOutputStream:close	()V
    //   95: aload_1
    //   96: invokevirtual 138	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   99: astore 8
    //   101: aload_2
    //   102: invokevirtual 133	java/util/zip/GZIPOutputStream:close	()V
    //   105: aload_1
    //   106: invokevirtual 134	java/io/ByteArrayOutputStream:close	()V
    //   109: aload 8
    //   111: areturn
    //   112: astore 9
    //   114: aload 9
    //   116: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   119: aload 8
    //   121: areturn
    //   122: astore_3
    //   123: aconst_null
    //   124: astore_2
    //   125: aload_3
    //   126: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   129: aload_2
    //   130: ifnull +7 -> 137
    //   133: aload_2
    //   134: invokevirtual 133	java/util/zip/GZIPOutputStream:close	()V
    //   137: aload_1
    //   138: invokevirtual 134	java/io/ByteArrayOutputStream:close	()V
    //   141: aconst_null
    //   142: areturn
    //   143: astore 6
    //   145: aload 6
    //   147: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   150: aconst_null
    //   151: areturn
    //   152: astore 10
    //   154: aconst_null
    //   155: astore_2
    //   156: aload_2
    //   157: ifnull +7 -> 164
    //   160: aload_2
    //   161: invokevirtual 133	java/util/zip/GZIPOutputStream:close	()V
    //   164: aload_1
    //   165: invokevirtual 134	java/io/ByteArrayOutputStream:close	()V
    //   168: aconst_null
    //   169: areturn
    //   170: astore 5
    //   172: aload 5
    //   174: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   177: aconst_null
    //   178: areturn
    //   179: astore 4
    //   181: goto -25 -> 156
    //   184: astore_3
    //   185: goto -60 -> 125
    //
    // Exception table:
    //   from	to	target	type
    //   101	109	112	java/io/IOException
    //   8	17	122	java/io/IOException
    //   133	137	143	java/io/IOException
    //   137	141	143	java/io/IOException
    //   8	17	152	finally
    //   160	164	170	java/io/IOException
    //   164	168	170	java/io/IOException
    //   17	101	179	finally
    //   125	129	179	finally
    //   17	101	184	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.a.i
 * JD-Core Version:    0.6.2
 */