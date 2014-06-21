package com.ut.device;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.ut.c.g;
import java.io.ByteArrayOutputStream;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.zip.Adler32;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public class b
{
  static String R = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";
  static final Object S = new Object();
  private static a u = null;

  static long a(a parama)
  {
    if (parama != null)
    {
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = parama.h();
      arrayOfObject[1] = parama.getDeviceId();
      arrayOfObject[2] = Long.valueOf(parama.e());
      arrayOfObject[3] = parama.g();
      arrayOfObject[4] = parama.f();
      String str = String.format("%s%s%s%s%s", arrayOfObject);
      if (!g.D(str))
      {
        Adler32 localAdler32 = new Adler32();
        localAdler32.reset();
        localAdler32.update(str.getBytes());
        return localAdler32.getValue();
      }
    }
    return 0L;
  }

  private static a a(Context paramContext)
  {
    a locala = new a();
    if (paramContext != null);
    try
    {
      long l = System.currentTimeMillis();
      String str1 = com.ut.c.d.h(paramContext);
      String str2 = com.ut.c.d.i(paramContext);
      String str3 = d(paramContext);
      locala.e(str1);
      locala.a(str1);
      locala.b(l);
      locala.b(str2);
      locala.r(str3);
      locala.a(a(locala));
      return locala;
    }
    catch (Exception localException)
    {
    }
    return locala;
  }

  static void a(a parama, Context paramContext)
  {
    if ((parama != null) && (paramContext != null) && (parama.e() > 0L) && (b(paramContext) == null))
      b(parama, paramContext);
  }

  static a b(Context paramContext)
  {
    if (paramContext != null)
    {
      com.ut.b.c localc = c.e(paramContext);
      if (localc != null)
      {
        String str1 = localc.getString("EI");
        String str2 = localc.getString("SI");
        String str3 = localc.getString("UTDID");
        String str4 = localc.getString("DID");
        long l1 = localc.getLong("timestamp");
        long l2 = localc.getLong("S");
        if ((!g.D(str1)) && (!g.D(str2)) && (!g.D(str3)) && (!g.D(str4)))
        {
          a locala = new a();
          locala.e(str4);
          locala.a(str1);
          locala.b(str2);
          locala.r(str3);
          locala.b(l1);
          locala.a(l2);
          return locala;
        }
      }
    }
    return null;
  }

  static void b(a parama, Context paramContext)
  {
    if ((paramContext != null) && (parama != null))
    {
      com.ut.b.c localc = c.e(paramContext);
      if ((localc != null) && (!g.D(parama.f())) && (!g.D(parama.g())) && (!g.D(parama.h())) && (!g.D(parama.getDeviceId())))
      {
        localc.clear();
        localc.putString("EI", parama.f());
        localc.putString("SI", parama.g());
        localc.putString("UTDID", parama.h());
        localc.putString("DID", parama.getDeviceId());
        localc.putLong("S", a(parama));
        if (parama.e() > 0L)
          localc.putLong("timestamp", parama.e());
        localc.commit();
      }
    }
  }

  private static a c(Context paramContext)
  {
    if (paramContext != null)
    {
      if (Looper.myLooper() == null)
        Looper.prepare();
      a locala1 = b(paramContext);
      if ((locala1 != null) && (locala1.d() != 0L) && (locala1.d() == a(locala1)))
      {
        d.f(paramContext).t(locala1.h());
        return locala1;
      }
      if (BFoundIt.c() != null)
      {
        a locala5 = BFoundIt.c();
        b(locala5, paramContext);
        return locala5;
      }
      Intent localIntent = new Intent();
      localIntent.putExtra("src", paramContext.getPackageName());
      localIntent.setAction("UT.QueryWhoHasOne");
      paramContext.sendOrderedBroadcast(localIntent, "com.ut.permission.DEVICE_STATE");
      CountDownLatch localCountDownLatch = new CountDownLatch(1);
      BFoundIt.a(localCountDownLatch);
      try
      {
        localCountDownLatch.await(3000L, TimeUnit.MILLISECONDS);
        if (BFoundIt.c() != null)
        {
          a locala4 = BFoundIt.c();
          b(locala4, paramContext);
          return locala4;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
        synchronized (S)
        {
          String str1 = d.f(paramContext).getValue();
          if (!g.D(str1))
          {
            a locala2 = new a();
            long l = System.currentTimeMillis();
            String str2 = com.ut.c.d.h(paramContext);
            String str3 = com.ut.c.d.i(paramContext);
            locala2.e(str2);
            locala2.a(str2);
            locala2.b(l);
            locala2.b(str3);
            locala2.r(str1);
            locala2.a(a(locala2));
            b(locala2, paramContext);
            return locala2;
          }
        }
        a locala3 = a(paramContext);
        if (locala3 != null)
        {
          b(locala3, paramContext);
          return locala3;
        }
      }
    }
    return null;
  }

  private static final String d(Context paramContext)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = (int)(System.currentTimeMillis() / 1000L);
    int j = new Random().nextInt();
    byte[] arrayOfByte1 = com.ut.c.b.getBytes(i);
    byte[] arrayOfByte2 = com.ut.c.b.getBytes(j);
    localByteArrayOutputStream.write(arrayOfByte1, 0, 4);
    localByteArrayOutputStream.write(arrayOfByte2, 0, 4);
    localByteArrayOutputStream.write(1);
    localByteArrayOutputStream.write(0);
    String str = com.ut.c.d.h(paramContext);
    if (g.D(str))
      str = new Random().nextInt();
    localByteArrayOutputStream.write(com.ut.c.b.getBytes(s(str)), 0, 4);
    localByteArrayOutputStream.write(com.ut.c.b.getBytes(s(f(localByteArrayOutputStream.toByteArray()))));
    return com.ut.a.a.a.a.a.getBundle(localByteArrayOutputStream.toByteArray());
  }

  private static String f(byte[] paramArrayOfByte)
  {
    String str = R;
    Mac localMac = Mac.getInstance("HmacSHA1");
    localMac.init(new SecretKeySpec(str.getBytes(), localMac.getAlgorithm()));
    return com.ut.a.a.a.a.a.getBundle(localMac.doFinal(paramArrayOfByte));
  }

  // ERROR //
  public static a getDevice(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 14	com/ut/device/b:u	Lcom/ut/device/a;
    //   6: ifnull +23 -> 29
    //   9: invokestatic 326	com/ut/device/c:j	()Z
    //   12: ifne +8 -> 20
    //   15: aload_0
    //   16: invokestatic 122	com/ut/device/b:b	(Landroid/content/Context;)Lcom/ut/device/a;
    //   19: pop
    //   20: getstatic 14	com/ut/device/b:u	Lcom/ut/device/a;
    //   23: astore_2
    //   24: ldc 2
    //   26: monitorexit
    //   27: aload_2
    //   28: areturn
    //   29: aload_0
    //   30: ifnull +531 -> 561
    //   33: aload_0
    //   34: invokestatic 328	com/ut/device/b:c	(Landroid/content/Context;)Lcom/ut/device/a;
    //   37: astore_3
    //   38: aload_3
    //   39: ifnull +403 -> 442
    //   42: aload_0
    //   43: ldc_w 330
    //   46: invokevirtual 334	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   49: checkcast 336	android/telephony/TelephonyManager
    //   52: astore 5
    //   54: aload 5
    //   56: ifnonnull +8 -> 64
    //   59: aconst_null
    //   60: astore_2
    //   61: goto -37 -> 24
    //   64: aload_3
    //   65: getstatic 341	android/os/Build:MODEL	Ljava/lang/String;
    //   68: invokevirtual 343	com/ut/device/a:f	(Ljava/lang/String;)V
    //   71: aload_0
    //   72: invokevirtual 347	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   75: aload_0
    //   76: invokevirtual 202	android/content/Context:getPackageName	()Ljava/lang/String;
    //   79: iconst_0
    //   80: invokevirtual 353	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   83: astore 18
    //   85: aload 18
    //   87: getfield 358	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   90: astore 19
    //   92: aload 18
    //   94: getfield 362	android/content/pm/PackageInfo:versionCode	I
    //   97: istore 20
    //   99: aload_3
    //   100: new 270	java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   107: iload 20
    //   109: invokevirtual 275	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: invokevirtual 278	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokevirtual 365	com/ut/device/a:o	(Ljava/lang/String;)V
    //   118: aload_3
    //   119: aload 19
    //   121: invokevirtual 368	com/ut/device/a:n	(Ljava/lang/String;)V
    //   124: aload_3
    //   125: getstatic 371	android/os/Build:BRAND	Ljava/lang/String;
    //   128: invokevirtual 374	com/ut/device/a:m	(Ljava/lang/String;)V
    //   131: aload_3
    //   132: ldc_w 376
    //   135: invokevirtual 379	com/ut/device/a:p	(Ljava/lang/String;)V
    //   138: invokestatic 381	com/ut/device/b:i	()Z
    //   141: ifeq +10 -> 151
    //   144: aload_3
    //   145: ldc_w 383
    //   148: invokevirtual 379	com/ut/device/a:p	(Ljava/lang/String;)V
    //   151: aload_3
    //   152: getstatic 388	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   155: invokevirtual 391	com/ut/device/a:q	(Ljava/lang/String;)V
    //   158: new 393	android/content/res/Configuration
    //   161: dup
    //   162: invokespecial 394	android/content/res/Configuration:<init>	()V
    //   165: astore 7
    //   167: aload_0
    //   168: invokevirtual 398	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   171: aload 7
    //   173: invokestatic 404	android/provider/Settings$System:getConfiguration	(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    //   176: aload 7
    //   178: getfield 408	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   181: ifnull +315 -> 496
    //   184: aload_3
    //   185: aload 7
    //   187: getfield 408	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   190: invokevirtual 413	java/util/Locale:getCountry	()Ljava/lang/String;
    //   193: invokevirtual 415	com/ut/device/a:g	(Ljava/lang/String;)V
    //   196: aload_3
    //   197: aload 7
    //   199: getfield 408	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   202: invokevirtual 416	java/util/Locale:toString	()Ljava/lang/String;
    //   205: invokevirtual 418	com/ut/device/a:h	(Ljava/lang/String;)V
    //   208: aload 7
    //   210: getfield 408	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   213: invokestatic 423	java/util/Calendar:getInstance	(Ljava/util/Locale;)Ljava/util/Calendar;
    //   216: astore 16
    //   218: aload 16
    //   220: ifnull +266 -> 486
    //   223: aload 16
    //   225: invokevirtual 427	java/util/Calendar:getTimeZone	()Ljava/util/TimeZone;
    //   228: astore 17
    //   230: aload 17
    //   232: ifnull +238 -> 470
    //   235: aload_3
    //   236: new 270	java/lang/StringBuilder
    //   239: dup
    //   240: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   243: aload 17
    //   245: invokevirtual 432	java/util/TimeZone:getRawOffset	()I
    //   248: ldc_w 433
    //   251: idiv
    //   252: invokevirtual 275	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   255: invokevirtual 278	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   258: invokevirtual 435	com/ut/device/a:i	(Ljava/lang/String;)V
    //   261: new 437	android/util/DisplayMetrics
    //   264: dup
    //   265: invokespecial 438	android/util/DisplayMetrics:<init>	()V
    //   268: astore 8
    //   270: aload_0
    //   271: ldc_w 440
    //   274: invokevirtual 334	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   277: checkcast 442	android/view/WindowManager
    //   280: invokeinterface 446 1 0
    //   285: aload 8
    //   287: invokevirtual 452	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   290: aload 8
    //   292: getfield 455	android/util/DisplayMetrics:widthPixels	I
    //   295: istore 13
    //   297: aload 8
    //   299: getfield 458	android/util/DisplayMetrics:heightPixels	I
    //   302: istore 14
    //   304: aload_3
    //   305: iload 13
    //   307: invokevirtual 460	com/ut/device/a:b	(I)V
    //   310: aload_3
    //   311: iload 14
    //   313: invokevirtual 462	com/ut/device/a:c	(I)V
    //   316: iload 13
    //   318: iload 14
    //   320: if_icmple +24 -> 344
    //   323: iload 13
    //   325: iload 14
    //   327: ixor
    //   328: istore 15
    //   330: iload 14
    //   332: iload 15
    //   334: ixor
    //   335: istore 14
    //   337: iload 15
    //   339: iload 14
    //   341: ixor
    //   342: istore 13
    //   344: aload_3
    //   345: new 270	java/lang/StringBuilder
    //   348: dup
    //   349: invokespecial 271	java/lang/StringBuilder:<init>	()V
    //   352: iload 14
    //   354: invokevirtual 275	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   357: ldc_w 464
    //   360: invokevirtual 467	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: iload 13
    //   365: invokevirtual 275	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   368: invokevirtual 278	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   371: invokevirtual 469	com/ut/device/a:j	(Ljava/lang/String;)V
    //   374: aload_0
    //   375: invokestatic 474	com/ut/c/c:g	(Landroid/content/Context;)[Ljava/lang/String;
    //   378: astore 12
    //   380: aload_3
    //   381: aload 12
    //   383: iconst_0
    //   384: aaload
    //   385: invokevirtual 477	com/ut/device/a:k	(Ljava/lang/String;)V
    //   388: aload 12
    //   390: iconst_0
    //   391: aaload
    //   392: ldc_w 479
    //   395: invokevirtual 483	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   398: ifeq +134 -> 532
    //   401: aload_3
    //   402: aload 12
    //   404: iconst_1
    //   405: aaload
    //   406: invokevirtual 486	com/ut/device/a:l	(Ljava/lang/String;)V
    //   409: aload 5
    //   411: invokevirtual 489	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   414: astore 11
    //   416: aload 11
    //   418: invokestatic 64	com/ut/c/g:D	(Ljava/lang/String;)Z
    //   421: ifeq +8 -> 429
    //   424: ldc_w 491
    //   427: astore 11
    //   429: aload_3
    //   430: aload 11
    //   432: invokevirtual 493	com/ut/device/a:d	(Ljava/lang/String;)V
    //   435: aload_3
    //   436: invokestatic 498	com/ut/c/h:z	()Ljava/lang/String;
    //   439: invokevirtual 500	com/ut/device/a:c	(Ljava/lang/String;)V
    //   442: aload_3
    //   443: putstatic 14	com/ut/device/b:u	Lcom/ut/device/a;
    //   446: aload_3
    //   447: astore_2
    //   448: goto -424 -> 24
    //   451: astore 6
    //   453: aload_3
    //   454: ldc_w 502
    //   457: invokevirtual 365	com/ut/device/a:o	(Ljava/lang/String;)V
    //   460: aload_3
    //   461: ldc_w 502
    //   464: invokevirtual 368	com/ut/device/a:n	(Ljava/lang/String;)V
    //   467: goto -343 -> 124
    //   470: aload_3
    //   471: ldc_w 504
    //   474: invokevirtual 435	com/ut/device/a:i	(Ljava/lang/String;)V
    //   477: goto -216 -> 261
    //   480: astore_1
    //   481: ldc 2
    //   483: monitorexit
    //   484: aload_1
    //   485: athrow
    //   486: aload_3
    //   487: ldc_w 504
    //   490: invokevirtual 435	com/ut/device/a:i	(Ljava/lang/String;)V
    //   493: goto -232 -> 261
    //   496: aload_3
    //   497: ldc_w 502
    //   500: invokevirtual 415	com/ut/device/a:g	(Ljava/lang/String;)V
    //   503: aload_3
    //   504: ldc_w 502
    //   507: invokevirtual 418	com/ut/device/a:h	(Ljava/lang/String;)V
    //   510: aload_3
    //   511: ldc_w 504
    //   514: invokevirtual 435	com/ut/device/a:i	(Ljava/lang/String;)V
    //   517: goto -256 -> 261
    //   520: astore 9
    //   522: aload_3
    //   523: ldc_w 502
    //   526: invokevirtual 469	com/ut/device/a:j	(Ljava/lang/String;)V
    //   529: goto -155 -> 374
    //   532: aload_3
    //   533: ldc_w 502
    //   536: invokevirtual 486	com/ut/device/a:l	(Ljava/lang/String;)V
    //   539: goto -130 -> 409
    //   542: astore 10
    //   544: aload_3
    //   545: ldc_w 502
    //   548: invokevirtual 477	com/ut/device/a:k	(Ljava/lang/String;)V
    //   551: aload_3
    //   552: ldc_w 502
    //   555: invokevirtual 486	com/ut/device/a:l	(Ljava/lang/String;)V
    //   558: goto -149 -> 409
    //   561: aconst_null
    //   562: astore_2
    //   563: goto -539 -> 24
    //   566: astore 4
    //   568: aconst_null
    //   569: astore_2
    //   570: goto -546 -> 24
    //
    // Exception table:
    //   from	to	target	type
    //   71	124	451	android/content/pm/PackageManager$NameNotFoundException
    //   3	20	480	finally
    //   20	24	480	finally
    //   33	38	480	finally
    //   42	54	480	finally
    //   64	71	480	finally
    //   71	124	480	finally
    //   124	151	480	finally
    //   151	218	480	finally
    //   223	230	480	finally
    //   235	261	480	finally
    //   261	316	480	finally
    //   344	374	480	finally
    //   374	409	480	finally
    //   409	424	480	finally
    //   429	442	480	finally
    //   442	446	480	finally
    //   453	467	480	finally
    //   470	477	480	finally
    //   486	493	480	finally
    //   496	517	480	finally
    //   522	529	480	finally
    //   532	539	480	finally
    //   544	558	480	finally
    //   261	316	520	java/lang/Exception
    //   344	374	520	java/lang/Exception
    //   374	409	542	java/lang/Exception
    //   532	539	542	java/lang/Exception
    //   42	54	566	java/lang/SecurityException
    //   64	71	566	java/lang/SecurityException
    //   71	124	566	java/lang/SecurityException
    //   124	151	566	java/lang/SecurityException
    //   151	218	566	java/lang/SecurityException
    //   223	230	566	java/lang/SecurityException
    //   235	261	566	java/lang/SecurityException
    //   261	316	566	java/lang/SecurityException
    //   344	374	566	java/lang/SecurityException
    //   374	409	566	java/lang/SecurityException
    //   409	424	566	java/lang/SecurityException
    //   429	442	566	java/lang/SecurityException
    //   453	467	566	java/lang/SecurityException
    //   470	477	566	java/lang/SecurityException
    //   486	493	566	java/lang/SecurityException
    //   496	517	566	java/lang/SecurityException
    //   522	529	566	java/lang/SecurityException
    //   532	539	566	java/lang/SecurityException
    //   544	558	566	java/lang/SecurityException
  }

  private static boolean i()
  {
    return ((System.getProperty("java.vm.name") != null) && (System.getProperty("java.vm.name").toLowerCase().contains("lemur"))) || (System.getProperty("ro.yunos.version") != null);
  }

  private static int s(String paramString)
  {
    int i = 0;
    if (paramString.length() > 0)
    {
      char[] arrayOfChar = paramString.toCharArray();
      j = 0;
      while (i < arrayOfChar.length)
      {
        j = j * 31 + arrayOfChar[i];
        i++;
      }
    }
    int j = 0;
    return j;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.device.b
 * JD-Core Version:    0.6.2
 */