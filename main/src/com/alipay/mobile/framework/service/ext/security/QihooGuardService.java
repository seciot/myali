package com.alipay.mobile.framework.service.ext.security;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.qihoo360.contacts.service.ITxlUiService;
import java.util.Iterator;
import java.util.List;

public class QihooGuardService
{
  private static String a = "QihooGuardService";
  private static ServiceConnection b = null;
  private static ITxlUiService c = null;
  private static final Uri d = Uri.parse("content://com.qihoo360.mobilesafe.contacts.msgguard/zfbqb");
  private static Context e = null;
  private static long f = System.currentTimeMillis();
  private static Handler g = new b();

  private static String a(String paramString)
  {
    int i = 0;
    int j = 0;
    if (i < paramString.length())
    {
      if (j == 6)
      {
        String str = (String)paramString.subSequence(i - 6, i);
        LogCatLog.e(a, "校验码为：" + str);
        return str;
      }
      if (Character.isDigit(paramString.charAt(i)))
        j++;
      while (true)
      {
        i++;
        break;
        j = 0;
      }
    }
    return null;
  }

  private static void a()
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext();
    e = localAlipayApplication;
    if (localAlipayApplication == null);
    do
    {
      do
        return;
      while (b != null);
      b = new a();
    }
    while (e.bindService(new Intent("com.qihoo360.mobilesafe.contacts.service.TxlUiService"), b, 1));
    if (b != null)
      e.unbindService(b);
    b = null;
    c = null;
  }

  public static boolean isOtherVersionQihoo360Installed()
  {
    AlipayApplication.getInstance().getMicroApplicationContext().showProgressDialog("");
    Iterator localIterator = e.getPackageManager().getInstalledApplications(0).iterator();
    while (localIterator.hasNext())
      if (((ApplicationInfo)localIterator.next()).packageName.startsWith("com.qihoo360.mobilesafe"))
      {
        AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
        LogCatLog.i(a, "isOtherVersionQihoo360Installed(): true!");
        return true;
      }
    AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
    LogCatLog.i(a, "isOtherVersionQihoo360Installed(): false!");
    return false;
  }

  public static boolean isQihooGuardOpened()
  {
    try
    {
      a();
      if (c == null)
        return false;
      boolean bool = c.isSmsGuardOpen();
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public static boolean isQihooInstalled()
  {
    try
    {
      e.getPackageManager().getApplicationInfo("com.qihoo360.mobilesafe", 0);
      LogCatLog.i(a, "isQihooInstalled(): true!");
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  public static boolean isSupportSmsGuard()
  {
    boolean bool1 = isQihooInstalled();
    boolean bool2 = false;
    if (bool1);
    try
    {
      PackageInfo localPackageInfo = e.getPackageManager().getPackageInfo("com.qihoo360.mobilesafe", 0);
      LogCatLog.i(a, "当前安装的360的versionCode为：" + localPackageInfo.versionCode);
      LogCatLog.i(a, "当前安装的360的versionName为：" + localPackageInfo.versionName);
      int i = localPackageInfo.versionCode;
      bool2 = false;
      if (i >= 174)
      {
        LogCatLog.i(a, "isSupportSmsGuard(): true!");
        bool2 = true;
      }
      return bool2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  public static void openQihooApp()
  {
    try
    {
      a();
      if (c == null)
        return;
      LogCatLog.i(a, "openSmsGuardSetupUI");
      c.openSmsGuardSetupUI();
      AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void openQihooDownload()
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("URL", "http://d.alipay.com/360down/download.htm");
      localBundle.putBoolean("ShowCloseButton", false);
      AlipayApplication.getInstance().getMicroApplicationContext().startApp(null, "20000111", localBundle);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  // ERROR //
  public static String readQihooSMS()
  {
    // Byte code:
    //   0: invokestatic 270	com/alipay/mobile/framework/service/ext/security/QihooGuardService:isQihooGuardOpened	()Z
    //   3: ifne +7 -> 10
    //   6: aconst_null
    //   7: astore_2
    //   8: aload_2
    //   9: areturn
    //   10: getstatic 40	com/alipay/mobile/framework/service/ext/security/QihooGuardService:e	Landroid/content/Context;
    //   13: invokevirtual 274	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   16: getstatic 38	com/alipay/mobile/framework/service/ext/security/QihooGuardService:d	Landroid/net/Uri;
    //   19: aconst_null
    //   20: ldc_w 276
    //   23: aconst_null
    //   24: ldc_w 278
    //   27: invokevirtual 284	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore 6
    //   32: aload 6
    //   34: astore 5
    //   36: aload 5
    //   38: ifnull +357 -> 395
    //   41: aconst_null
    //   42: astore 7
    //   44: aload 5
    //   46: invokeinterface 289 1 0
    //   51: ifeq +277 -> 328
    //   54: aload 5
    //   56: iconst_0
    //   57: invokeinterface 293 2 0
    //   62: astore 9
    //   64: aload 5
    //   66: iconst_1
    //   67: invokeinterface 293 2 0
    //   72: astore 10
    //   74: aload 5
    //   76: iconst_2
    //   77: invokeinterface 297 2 0
    //   82: lstore 11
    //   84: lload 11
    //   86: getstatic 48	com/alipay/mobile/framework/service/ext/security/QihooGuardService:f	J
    //   89: lcmp
    //   90: ifgt +63 -> 153
    //   93: getstatic 24	com/alipay/mobile/framework/service/ext/security/QihooGuardService:a	Ljava/lang/String;
    //   96: new 69	java/lang/StringBuilder
    //   99: dup
    //   100: ldc_w 299
    //   103: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   106: aload 9
    //   108: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: ldc_w 301
    //   114: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload 10
    //   119: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: ldc_w 303
    //   125: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: lload 11
    //   130: invokevirtual 306	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   133: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokestatic 190	com/alipay/mobile/common/logging/LogCatLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   139: aload 5
    //   141: ifnull +10 -> 151
    //   144: aload 5
    //   146: invokeinterface 309 1 0
    //   151: aconst_null
    //   152: areturn
    //   153: lload 11
    //   155: putstatic 48	com/alipay/mobile/framework/service/ext/security/QihooGuardService:f	J
    //   158: getstatic 24	com/alipay/mobile/framework/service/ext/security/QihooGuardService:a	Ljava/lang/String;
    //   161: new 69	java/lang/StringBuilder
    //   164: dup
    //   165: ldc_w 311
    //   168: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   171: aload 9
    //   173: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: ldc_w 313
    //   179: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: aload 10
    //   184: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: ldc_w 315
    //   190: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: lload 11
    //   195: invokevirtual 306	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   198: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokestatic 190	com/alipay/mobile/common/logging/LogCatLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   204: invokestatic 46	java/lang/System:currentTimeMillis	()J
    //   207: lload 11
    //   209: lsub
    //   210: ldc2_w 316
    //   213: lcmp
    //   214: ifle +57 -> 271
    //   217: getstatic 24	com/alipay/mobile/framework/service/ext/security/QihooGuardService:a	Ljava/lang/String;
    //   220: new 69	java/lang/StringBuilder
    //   223: dup
    //   224: ldc_w 319
    //   227: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   230: aload 10
    //   232: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: invokestatic 190	com/alipay/mobile/common/logging/LogCatLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   241: goto -197 -> 44
    //   244: astore 8
    //   246: aload 5
    //   248: astore_3
    //   249: aload 7
    //   251: astore_2
    //   252: aload 8
    //   254: astore_1
    //   255: aload_1
    //   256: invokevirtual 205	java/lang/Exception:printStackTrace	()V
    //   259: aload_3
    //   260: ifnull -252 -> 8
    //   263: aload_3
    //   264: invokeinterface 309 1 0
    //   269: aload_2
    //   270: areturn
    //   271: aload 10
    //   273: invokestatic 321	com/alipay/mobile/framework/service/ext/security/QihooGuardService:a	(Ljava/lang/String;)Ljava/lang/String;
    //   276: astore 13
    //   278: aload 13
    //   280: astore_2
    //   281: aload_2
    //   282: ifnull +40 -> 322
    //   285: getstatic 24	com/alipay/mobile/framework/service/ext/security/QihooGuardService:a	Ljava/lang/String;
    //   288: new 69	java/lang/StringBuilder
    //   291: dup
    //   292: ldc_w 323
    //   295: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   298: aload_2
    //   299: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: invokestatic 326	com/alipay/mobile/common/logging/LogCatLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   308: aload 5
    //   310: ifnull -302 -> 8
    //   313: aload 5
    //   315: invokeinterface 309 1 0
    //   320: aload_2
    //   321: areturn
    //   322: aload_2
    //   323: astore 7
    //   325: goto -281 -> 44
    //   328: aload 7
    //   330: astore_2
    //   331: aload 5
    //   333: ifnull -325 -> 8
    //   336: aload 5
    //   338: invokeinterface 309 1 0
    //   343: aload_2
    //   344: areturn
    //   345: astore 4
    //   347: aconst_null
    //   348: astore 5
    //   350: aload 5
    //   352: ifnull +10 -> 362
    //   355: aload 5
    //   357: invokeinterface 309 1 0
    //   362: aload 4
    //   364: athrow
    //   365: astore 4
    //   367: goto -17 -> 350
    //   370: astore 4
    //   372: aload_3
    //   373: astore 5
    //   375: goto -25 -> 350
    //   378: astore_0
    //   379: aload_0
    //   380: astore_1
    //   381: aconst_null
    //   382: astore_2
    //   383: aconst_null
    //   384: astore_3
    //   385: goto -130 -> 255
    //   388: astore_1
    //   389: aload 5
    //   391: astore_3
    //   392: goto -137 -> 255
    //   395: aconst_null
    //   396: astore_2
    //   397: goto -66 -> 331
    //
    // Exception table:
    //   from	to	target	type
    //   44	139	244	java/lang/Exception
    //   153	241	244	java/lang/Exception
    //   271	278	244	java/lang/Exception
    //   10	32	345	finally
    //   44	139	365	finally
    //   153	241	365	finally
    //   271	278	365	finally
    //   285	308	365	finally
    //   255	259	370	finally
    //   10	32	378	java/lang/Exception
    //   285	308	388	java/lang/Exception
  }

  public static void waitForConnecting(Handler paramHandler)
  {
    try
    {
      LogCatLog.i(a, "waitForConnecting");
      if (paramHandler == null)
        paramHandler = g;
      long l = System.currentTimeMillis();
      while (c == null)
        if (System.currentTimeMillis() - l >= 15000L)
        {
          Message localMessage2 = new Message();
          localMessage2.what = 2;
          paramHandler.sendMessage(localMessage2);
          return;
        }
      Message localMessage1 = new Message();
      localMessage1.what = 1;
      paramHandler.sendMessage(localMessage1);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.QihooGuardService
 * JD-Core Version:    0.6.2
 */