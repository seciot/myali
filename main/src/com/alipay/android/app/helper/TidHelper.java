package com.alipay.android.app.helper;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.android.app.util.FrameUtils;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.RequestWrapper;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.logging.LogCatLog;
import com.ut.device.UTDevice;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

public class TidHelper
{
  private static TidInfo a = null;
  private static int b = 0;
  private static Object c = new Object();
  private static boolean d;

  public static Tid a()
  {
    TidInfo localTidInfo = TidInfo.g();
    Tid localTid = new Tid();
    localTid.setTid(localTidInfo.a());
    localTid.setTidSeed(localTidInfo.b());
    localTid.setTimestamp(localTidInfo.c());
    return localTid;
  }

  public static Tid a(Context paramContext)
  {
    try
    {
      Object localObject2 = h(paramContext);
      if ((((Tid)localObject2).isEmpty()) && (Looper.myLooper() != Looper.getMainLooper()))
      {
        i(paramContext);
        Tid localTid = a();
        localObject2 = localTid;
      }
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public static String b()
  {
    MspConfig.u();
    return MspConfig.v();
  }

  public static String b(Context paramContext)
  {
    try
    {
      Tid localTid = a(paramContext);
      if (localTid.isEmpty());
      String str;
      for (Object localObject2 = ""; ; localObject2 = str)
      {
        return localObject2;
        str = localTid.getTid();
      }
    }
    finally
    {
    }
  }

  public static String c()
  {
    MspConfig.u();
    return MspConfig.w();
  }

  public static boolean c(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
      throw new Exception("不能在主线程重置TID");
    TidInfo.h();
    new c(paramContext).start();
    return !TextUtils.isEmpty(i(paramContext));
  }

  public static String d(Context paramContext)
  {
    GlobalContext.a().a(paramContext, MspConfig.u());
    return DeviceInfo.a(paramContext).c();
  }

  public static String e(Context paramContext)
  {
    GlobalContext.a().a(paramContext, MspConfig.u());
    return DeviceInfo.a(paramContext).b();
  }

  public static boolean f(Context paramContext)
  {
    GlobalContext.a().a(paramContext, MspConfig.u());
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    int i;
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.alipay.android.app", 128);
      if (localPackageInfo == null)
        return false;
      String str = localPackageInfo.versionName;
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      localArrayList1.addAll(Arrays.asList(str.split("\\.")));
      localArrayList2.addAll(Arrays.asList("3.5.3".split("\\.")));
      i = Math.max(localArrayList1.size(), localArrayList2.size());
      while (localArrayList1.size() < i)
        localArrayList1.add("0");
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      LogCatLog.v("msp", localNameNotFoundException.getMessage());
      return false;
    }
    while (localArrayList2.size() < i)
      localArrayList2.add("0");
    while (true)
    {
      int k;
      int m;
      if (j < i)
        if (Integer.parseInt((String)localArrayList1.get(j)) != Integer.parseInt((String)localArrayList2.get(j)))
        {
          k = Integer.parseInt((String)localArrayList1.get(j));
          m = Integer.parseInt((String)localArrayList2.get(j));
        }
      for (int n = k - m; ; n = 0)
      {
        if (n >= 0)
          break label268;
        return false;
        j++;
        break;
      }
      label268: return true;
      int j = 0;
    }
  }

  private static Tid h(Context paramContext)
  {
    GlobalContext.a().a(paramContext, MspConfig.u());
    if (!d);
    try
    {
      InputStream localInputStream = paramContext.getAssets().open("msp.properties");
      GlobalConstant.loadProperties(paramContext, localInputStream, true);
      localInputStream.close();
      GlobalConstant.convertProperties(paramContext);
      if (AppInfo.getInstance().isDebuggable())
      {
        Cursor localCursor = paramContext.getContentResolver().query(Uri.parse("content://com.alipay.setting/SafePayServerUrl"), null, null, null, null);
        if ((localCursor != null) && (localCursor.getCount() > 0))
        {
          if (localCursor.moveToFirst())
          {
            String str = localCursor.getString(0);
            GlobalConstant.HTTP_URL = str;
            if (TextUtils.equals(str, "https://mclientpre.alipay.com/gateway.do"))
              GlobalConstant.PRE = true;
          }
          localCursor.close();
        }
      }
      d = true;
      a = null;
      b localb = new b(paramContext);
      if ((f(paramContext)) && (b == 0))
        new Thread(localb).start();
    }
    catch (Exception localException)
    {
      synchronized (c)
      {
        try
        {
          c.wait(5000L);
          if (a != null)
          {
            Tid localTid = new Tid();
            localTid.setTid(a.a());
            localTid.setTidSeed(a.b());
            localTid.setTimestamp(a.c());
            a.a(paramContext);
            return localTid;
            localException = localException;
            LogUtils.a(localException);
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
      }
    }
    return a();
  }

  private static String i(Context paramContext)
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      localJSONObject1.put("utdid", UTDevice.getUtdid(paramContext));
      localJSONObject1.put("user_agent", MspConfig.u().a(null));
      Request localRequest = FrameUtils.a(localJSONObject1);
      JSONObject localJSONObject2 = new RequestWrapper(new InteractionData()).a(paramContext, localRequest, new Response());
      Object localObject = null;
      if (localJSONObject2 != null)
      {
        String str1 = localJSONObject2.optString("tid", "");
        String str2 = localJSONObject2.optString("clientkey", "");
        if (TextUtils.isEmpty(str2))
          str2 = MspConfig.u().t();
        TidInfo.a(str1, str2, System.currentTimeMillis()).a(paramContext);
        localObject = str1;
      }
      return localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  // ERROR //
  private static TidInfo j(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: invokevirtual 266	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   6: ldc_w 391
    //   9: invokestatic 274	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   12: iconst_3
    //   13: anewarray 166	java/lang/String
    //   16: dup
    //   17: iconst_0
    //   18: ldc_w 371
    //   21: aastore
    //   22: dup
    //   23: iconst_1
    //   24: ldc_w 393
    //   27: aastore
    //   28: dup
    //   29: iconst_2
    //   30: ldc_w 395
    //   33: aastore
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: invokevirtual 280	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   40: astore 5
    //   42: aload 5
    //   44: astore 4
    //   46: aload 4
    //   48: ifnull +164 -> 212
    //   51: aload 4
    //   53: invokeinterface 288 1 0
    //   58: ifeq +154 -> 212
    //   61: aload 4
    //   63: iconst_0
    //   64: invokeinterface 292 2 0
    //   69: astore 8
    //   71: aload 4
    //   73: iconst_1
    //   74: invokeinterface 292 2 0
    //   79: astore 9
    //   81: lconst_0
    //   82: lstore 10
    //   84: aload 4
    //   86: iconst_2
    //   87: invokeinterface 292 2 0
    //   92: astore 12
    //   94: aload 12
    //   96: invokestatic 117	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   99: ifne +10 -> 109
    //   102: aload 12
    //   104: invokestatic 401	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   107: lstore 10
    //   109: aload 8
    //   111: aload 9
    //   113: lload 10
    //   115: invokestatic 388	com/alipay/android/app/tid/TidInfo:a	(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/android/app/tid/TidInfo;
    //   118: astore 6
    //   120: aload 6
    //   122: ifnull +30 -> 152
    //   125: aload 6
    //   127: invokevirtual 403	com/alipay/android/app/tid/TidInfo:e	()Z
    //   130: istore 7
    //   132: iload 7
    //   134: ifne +18 -> 152
    //   137: aload 4
    //   139: ifnull +10 -> 149
    //   142: aload 4
    //   144: invokeinterface 305 1 0
    //   149: aload 6
    //   151: areturn
    //   152: aload 4
    //   154: ifnull +10 -> 164
    //   157: aload 4
    //   159: invokeinterface 305 1 0
    //   164: aconst_null
    //   165: areturn
    //   166: astore_3
    //   167: aconst_null
    //   168: astore 4
    //   170: aload_3
    //   171: invokevirtual 389	java/lang/Exception:printStackTrace	()V
    //   174: aload 4
    //   176: ifnull +10 -> 186
    //   179: aload 4
    //   181: invokeinterface 305 1 0
    //   186: aconst_null
    //   187: areturn
    //   188: astore_2
    //   189: aload_1
    //   190: ifnull +9 -> 199
    //   193: aload_1
    //   194: invokeinterface 305 1 0
    //   199: aload_2
    //   200: athrow
    //   201: astore_2
    //   202: aload 4
    //   204: astore_1
    //   205: goto -16 -> 189
    //   208: astore_3
    //   209: goto -39 -> 170
    //   212: aconst_null
    //   213: astore 6
    //   215: goto -95 -> 120
    //
    // Exception table:
    //   from	to	target	type
    //   2	42	166	java/lang/Exception
    //   2	42	188	finally
    //   51	81	201	finally
    //   84	109	201	finally
    //   109	120	201	finally
    //   125	132	201	finally
    //   170	174	201	finally
    //   51	81	208	java/lang/Exception
    //   84	109	208	java/lang/Exception
    //   109	120	208	java/lang/Exception
    //   125	132	208	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.TidHelper
 * JD-Core Version:    0.6.2
 */