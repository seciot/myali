package com.alipay.android.app.helper;

import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.net.MspClient;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobilesecuritysdk.face.SecurityClientMobile;
import com.ut.device.UTDevice;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class PayHelper
{
  private static PayHelper a = null;
  private Context b;
  private IAlixPay c;
  private ServiceConnection d = new a(this);

  private PayHelper(Context paramContext)
  {
    this.b = paramContext;
  }

  public static final PayHelper a(Context paramContext)
  {
    if (a == null)
    {
      a = new PayHelper(paramContext);
      MspConfig localMspConfig = MspConfig.u();
      GlobalContext.a().a(paramContext, localMspConfig);
      localMspConfig.b("9.0.5");
      localMspConfig.a(AppInfo.getInstance().isDebuggable());
    }
    return a;
  }

  private boolean c()
  {
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    int i;
    try
    {
      PackageInfo localPackageInfo = this.b.getPackageManager().getPackageInfo("com.alipay.android.app", 128);
      if (localPackageInfo == null)
        return false;
      String str = localPackageInfo.versionName;
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      localArrayList1.addAll(Arrays.asList(str.split("\\.")));
      localArrayList2.addAll(Arrays.asList("3.5.2".split("\\.")));
      i = Math.max(localArrayList1.size(), localArrayList2.size());
      while (localArrayList1.size() < i)
        localArrayList1.add("0");
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
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
        if (n > 0)
          break label256;
        return true;
        j++;
        break;
      }
      label256: return false;
      int j = 0;
    }
  }

  private boolean d()
  {
    try
    {
      PackageInfo localPackageInfo = this.b.getPackageManager().getPackageInfo("com.alipay.android.app", 128);
      if (localPackageInfo == null)
        return false;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
      return false;
    }
    return true;
  }

  // ERROR //
  public final String a(String paramString, com.alipay.android.app.IRemoteServiceCallback paramIRemoteServiceCallback)
  {
    // Byte code:
    //   0: new 148	android/content/Intent
    //   3: dup
    //   4: aload_0
    //   5: getfield 29	com/alipay/android/app/helper/PayHelper:b	Landroid/content/Context;
    //   8: ldc 150
    //   10: invokespecial 153	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   13: astore_3
    //   14: aload_0
    //   15: invokespecial 155	com/alipay/android/app/helper/PayHelper:d	()Z
    //   18: ifeq +13 -> 31
    //   21: aload_0
    //   22: invokespecial 157	com/alipay/android/app/helper/PayHelper:c	()Z
    //   25: ifeq +56 -> 81
    //   28: invokestatic 162	com/alipay/android/app/util/LogUtils:g	()V
    //   31: aload_0
    //   32: getfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   35: ifnonnull +17 -> 52
    //   38: aload_0
    //   39: getfield 29	com/alipay/android/app/helper/PayHelper:b	Landroid/content/Context;
    //   42: aload_3
    //   43: aload_0
    //   44: getfield 27	com/alipay/android/app/helper/PayHelper:d	Landroid/content/ServiceConnection;
    //   47: iconst_1
    //   48: invokevirtual 166	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   51: pop
    //   52: iconst_0
    //   53: istore 4
    //   55: aload_0
    //   56: getfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   59: ifnonnull +33 -> 92
    //   62: iload 4
    //   64: bipush 100
    //   66: if_icmpgt +26 -> 92
    //   69: ldc2_w 167
    //   72: invokestatic 174	java/lang/Thread:sleep	(J)V
    //   75: iinc 4 1
    //   78: goto -23 -> 55
    //   81: aload_0
    //   82: getfield 29	com/alipay/android/app/helper/PayHelper:b	Landroid/content/Context;
    //   85: invokestatic 179	com/alipay/android/app/helper/TidHelper:a	(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    //   88: pop
    //   89: goto -58 -> 31
    //   92: aload_0
    //   93: getfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   96: astore 11
    //   98: aload 11
    //   100: ifnonnull +26 -> 126
    //   103: aload_0
    //   104: getfield 29	com/alipay/android/app/helper/PayHelper:b	Landroid/content/Context;
    //   107: aload_0
    //   108: getfield 27	com/alipay/android/app/helper/PayHelper:d	Landroid/content/ServiceConnection;
    //   111: invokevirtual 183	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   114: aconst_null
    //   115: areturn
    //   116: astore 14
    //   118: aload_0
    //   119: aconst_null
    //   120: putfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   123: goto -9 -> 114
    //   126: aload_0
    //   127: getfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   130: aload_2
    //   131: invokeinterface 189 2 0
    //   136: aload_0
    //   137: getfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   140: aload_1
    //   141: invokeinterface 193 2 0
    //   146: astore 12
    //   148: aload 12
    //   150: astore 9
    //   152: ldc 195
    //   154: invokestatic 199	com/alipay/android/mini/util/LogAgent:a	(Ljava/lang/String;)V
    //   157: aload_0
    //   158: getfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   161: aload_2
    //   162: invokeinterface 202 2 0
    //   167: aload_0
    //   168: aconst_null
    //   169: putfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   172: aload_0
    //   173: getfield 29	com/alipay/android/app/helper/PayHelper:b	Landroid/content/Context;
    //   176: aload_0
    //   177: getfield 27	com/alipay/android/app/helper/PayHelper:d	Landroid/content/ServiceConnection;
    //   180: invokevirtual 183	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   183: aload 9
    //   185: areturn
    //   186: astore 13
    //   188: aload_0
    //   189: aconst_null
    //   190: putfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   193: aload 9
    //   195: areturn
    //   196: astore 7
    //   198: aload 7
    //   200: astore 8
    //   202: aconst_null
    //   203: astore 9
    //   205: aload 8
    //   207: invokevirtual 203	java/lang/Exception:printStackTrace	()V
    //   210: aload_0
    //   211: getfield 29	com/alipay/android/app/helper/PayHelper:b	Landroid/content/Context;
    //   214: aload_0
    //   215: getfield 27	com/alipay/android/app/helper/PayHelper:d	Landroid/content/ServiceConnection;
    //   218: invokevirtual 183	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   221: aload 9
    //   223: areturn
    //   224: astore 10
    //   226: aload_0
    //   227: aconst_null
    //   228: putfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   231: aload 9
    //   233: areturn
    //   234: astore 5
    //   236: aload_0
    //   237: getfield 29	com/alipay/android/app/helper/PayHelper:b	Landroid/content/Context;
    //   240: aload_0
    //   241: getfield 27	com/alipay/android/app/helper/PayHelper:d	Landroid/content/ServiceConnection;
    //   244: invokevirtual 183	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   247: aload 5
    //   249: athrow
    //   250: astore 6
    //   252: aload_0
    //   253: aconst_null
    //   254: putfield 32	com/alipay/android/app/helper/PayHelper:c	Lcom/alipay/android/app/IAlixPay;
    //   257: goto -10 -> 247
    //   260: astore 8
    //   262: goto -57 -> 205
    //
    // Exception table:
    //   from	to	target	type
    //   103	114	116	java/lang/Exception
    //   172	183	186	java/lang/Exception
    //   55	62	196	java/lang/Exception
    //   69	75	196	java/lang/Exception
    //   92	98	196	java/lang/Exception
    //   126	148	196	java/lang/Exception
    //   210	221	224	java/lang/Exception
    //   55	62	234	finally
    //   69	75	234	finally
    //   92	98	234	finally
    //   126	148	234	finally
    //   152	172	234	finally
    //   205	210	234	finally
    //   236	247	250	java/lang/Exception
    //   152	172	260	java/lang/Exception
  }

  public final void a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.b.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null);
    while (localNetworkInfo.getType() == 1)
      return;
    MspClient localMspClient = new MspClient(this.b, "http://mclient.alipay.com/test.htm");
    try
    {
      localMspClient.a(null, null);
      return;
    }
    catch (NetErrorException localNetErrorException)
    {
      localNetErrorException.printStackTrace();
    }
  }

  public final String b()
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("tid", TidInfo.g().a());
      localHashMap.put("utdid", UTDevice.getUtdid(this.b));
      String str2 = SecurityClientMobile.a(this.b, localHashMap);
      str1 = str2;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str1 = "";
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.PayHelper
 * JD-Core Version:    0.6.2
 */