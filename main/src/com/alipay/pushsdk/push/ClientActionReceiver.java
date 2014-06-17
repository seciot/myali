package com.alipay.pushsdk.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.c.a.e;
import com.alipay.pushsdk.push.a.m;

public class ClientActionReceiver extends BroadcastReceiver
{
  public static int a = 300;
  private static final String b = com.alipay.pushsdk.c.a.c.a(ClientActionReceiver.class);
  private NotificationService c;

  public ClientActionReceiver(NotificationService paramNotificationService)
  {
    this.c = paramNotificationService;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    if (str1 == null);
    boolean bool1;
    o localo1;
    label428: j localj;
    label551: label714: String str2;
    do
    {
      do
      {
        do
        {
          String str3;
          do
          {
            return;
            com.alipay.pushsdk.c.a.c.a(3, b, "onReceive() action=" + str1);
            NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if (localNetworkInfo != null)
              com.alipay.pushsdk.c.a.c.a(3, b, "onReceive() networkInfo.isConnected()=" + localNetworkInfo.isConnected());
            bool1 = com.alipay.pushsdk.c.c.b(paramContext);
            localo1 = new o(paramContext);
            com.alipay.pushsdk.c.a.c.a(4, b, "isNotificationEnabled=" + localo1.a() + ", isNetConnected=" + bool1);
            d.a(d.v, d.B, System.currentTimeMillis(), d.E, 0L + System.currentTimeMillis(), "ClientActionReceiver_onReceive getAction:" + str1);
            if (str1.equals(this.c.getPackageName() + ".push.action.KEEPLIVE"))
            {
              this.c.d().u();
              e.a("30", "41", "3");
              return;
            }
            if (!str1.equals("android.intent.action.SCREEN_ON"))
              break;
            str3 = new h(paramContext).a();
          }
          while ((str3 == null) || (str3.length() <= 0));
          new Thread(new a(this, "15"), "ClientActionReceiver Triger Runnable").start();
          return;
          if (str1.equals(this.c.getPackageName() + ".push.action.CONNECT"))
          {
            if ((localo1.a()) && (localo1.f()));
            for (boolean bool4 = true; ; bool4 = false)
            {
              d.a(d.m, d.B, System.currentTimeMillis(), d.w, 0L, "ClientActionReceiver_PushConnect:settingStatus=" + bool4);
              com.alipay.pushsdk.c.a.c.a(4, b, "run settingStatus=" + bool4);
              if (!bool4)
                break;
              if ((!bool1) && (p.a() >= 0))
                break label428;
              this.c.d().b();
              e.a("30", "11", "1");
              return;
            }
            e.a("30", "10", "6");
            return;
          }
        }
        while (!str1.equals(this.c.getPackageName() + ".push.action.CHECK"));
        this.c.a(1000 * a);
        m localm = this.c.d().d();
        boolean bool2 = false;
        if (localm != null)
          bool2 = this.c.d().d().a();
        o localo2 = new o(this.c);
        boolean bool3;
        int i;
        if ((localo2.a()) && (localo2.f()))
        {
          bool3 = true;
          com.alipay.pushsdk.c.a.c.a(3, b, "checkPushStatus linkStatus=" + bool2 + ", settingStatus=" + bool3);
          if (bool3 != bool2)
            break label714;
          i = 0;
        }
        while (true)
        {
          com.alipay.pushsdk.c.a.c.a(4, b, "PushCheck checkPushStatus=" + i);
          d.a(d.l, d.A, System.currentTimeMillis(), d.B, System.currentTimeMillis(), "ClientActionReceiver_PushCheck:curStatus=" + i);
          localj = this.c.d();
          switch (i)
          {
          default:
            return;
          case -1:
            localj.c();
            e.a("16", "20", "7");
            return;
            bool3 = false;
            break label551;
            if (bool3)
              i = 1;
            else
              i = -1;
            break;
          case 0:
          case 1:
          }
        }
      }
      while (!localj.r());
      localj.u();
      e.a("16", "41", "3");
      return;
      str2 = localj.e();
    }
    while ((str2 == null) || (str2.length() <= 0) || (!localo1.a()) || (!bool1));
    long l1 = com.alipay.pushsdk.push.a.o.d();
    if (l1 > 0L)
    {
      long l2 = System.currentTimeMillis() - l1;
      long l3 = 1000 * com.alipay.pushsdk.push.a.o.c() - l2;
      d.a(d.l, d.B, System.currentTimeMillis(), d.E, System.currentTimeMillis(), "ClientActionReceiver_onReceive:curWaitTime=" + l3);
      if (l3 <= 0L)
      {
        localj.c();
        localj.b();
        e.a("16", "31", "1");
        return;
      }
      e.a("16", "30", "5");
      return;
    }
    localj.b();
    e.a("16", "01", "1");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.ClientActionReceiver
 * JD-Core Version:    0.6.2
 */