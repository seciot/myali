package com.alipay.pushsdk.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.c.j;
import com.alipay.pushsdk.push.o;
import java.util.Calendar;

public class a
{
  private static final String g = com.alipay.pushsdk.c.a.c.a(a.class);
  public String a = "";
  public int b = 300;
  public int c = 0;
  public int d = 1;
  public long e;
  public boolean f = true;
  private final int h = 300;
  private final int i = 1;
  private final int j = 10;
  private final int k = 15;
  private Context l;
  private com.alipay.pushsdk.c.b m;
  private Handler n;
  private o o;

  public a(Context paramContext)
  {
    this.l = paramContext;
    this.m = new com.alipay.pushsdk.c.b(this.l);
    this.o = new o(paramContext);
    int i1 = (int)this.m.a("consumeCount");
    if (i1 > 0)
      this.c = i1;
    int i2 = (int)this.m.a("successCount");
    if (i2 > 0)
      this.d = i2;
    this.b = ((int)this.m.a("intervalTime"));
    long l1 = this.m.a("LAST_CONFIG_TIME");
    if (l1 > 0L)
      this.e = l1;
    d.a(d.n, d.C, System.currentTimeMillis(), d.C, 10000L + System.currentTimeMillis(), "ConfigPolicy_init: lastRunTime=" + j.a(this.e) + ", minTime=" + this.b);
    com.alipay.pushsdk.c.a.c.a(3, g, "init() lastRunTime=" + j.a(this.e) + ", curCount=" + this.c + ", maxCount=" + this.d + ", minTime=" + this.b);
  }

  public final void a(String paramString)
  {
    boolean bool1 = this.o.b();
    com.alipay.pushsdk.c.a.c.a(4, g, "toStart() trigger=" + paramString + ", settingStatus:" + bool1);
    NetworkInfo localNetworkInfo;
    if (bool1)
    {
      localNetworkInfo = ((ConnectivityManager)this.l.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo == null)
        break label184;
      if (!com.alipay.pushsdk.c.c.b(this.l))
        break label1001;
    }
    label184: label988: label1001: for (boolean bool2 = true; ; bool2 = false)
    {
      d.a(d.h, d.E, System.currentTimeMillis(), d.C, 10000L + System.currentTimeMillis(), "ConfigPolicy_checkNetState: Network_Type=" + localNetworkInfo.getTypeName() + ", Network_State=" + localNetworkInfo.getState());
      com.alipay.pushsdk.c.a.c.a(4, g, "Network_Type=" + localNetworkInfo.getTypeName() + ", Network_State = " + localNetworkInfo.getState() + ", net=" + bool2);
      if (!bool2);
      while ((!paramString.equals("0")) && (!paramString.equals("13")) && (!paramString.equals("14")))
      {
        return;
        com.alipay.pushsdk.c.a.c.a(3, g, "checkNetState networkInfo is null.");
        bool2 = false;
        break;
      }
      long l1 = System.currentTimeMillis();
      long l2 = this.m.a("DELAY_CONFIG_TIME");
      long l3 = this.m.a("CREATE_CONFIG_TIME");
      if (((l1 - l2) / 1000L >= 60 * (15 * this.d)) && (this.o.c() == true))
      {
        long l7 = 15 * this.d;
        Calendar localCalendar = Calendar.getInstance();
        int i1 = localCalendar.get(11);
        int i2 = localCalendar.get(12);
        long l8 = i2 + i1 * 60 - 60 * this.o.e();
        com.alipay.pushsdk.c.a.c.a(3, g, "checkDelayTime delay=" + l7 + "; hour=" + i1 + " min=" + i2 + "; eslapsedMin=" + l8);
        long l9 = 0L;
        if ((i1 >= this.o.e()) && (l8 < l7))
        {
          long l10 = 1000L * ()(60.0D * (Math.random() * l7));
          long l11 = l10 + localCalendar.getTimeInMillis() - 1000L * (60L * (l8 - 30L));
          this.m.a("DELAY_CONFIG_TIME", l11);
          com.alipay.pushsdk.c.a.c.a(3, g, "checkDelayTime rand=" + l10 + ", expectedTime=" + j.a(l11));
          d.a(d.v, d.B, System.currentTimeMillis(), d.B, 10000L + System.currentTimeMillis(), "ConfigPolicy_checkDelayTime: expectedTime=" + j.a(l11) + ", rand=" + l10 + ", hour=" + i1 + " min=" + i2);
          l9 = l10;
        }
        com.alipay.pushsdk.c.a.c.a(3, g, "checkDelayTime delay=" + l7 + ", rand=" + l9);
      }
      for (long l4 = this.m.a("DELAY_CONFIG_TIME"); ; l4 = l2)
      {
        long l5 = this.m.a("LAST_CONFIG_TIME");
        long l6 = (l1 - l5) / 1000L;
        boolean bool3;
        if (l1 < l4)
          bool3 = false;
        while (true)
        {
          if ((l1 - l3) / 1000L < 1800L);
          for (boolean bool4 = false; ; bool4 = bool3)
          {
            com.alipay.pushsdk.c.a.c.a(4, g, "ConfigPolicy_getPolicy() delayPollTime=" + j.a(l4) + ", lastPollTime=" + j.a(l5) + ", createPollTime=" + j.a(l3) + ", curTime=" + j.a(l1) + ", waitedTime=" + l6 + "s, ret=" + bool4);
            d.a(d.h, d.C, System.currentTimeMillis(), d.C, 10000L + System.currentTimeMillis(), "ConfigPolicy_getPolicy: delayPollTime=" + j.a(l4) + ", createPollTime=" + j.a(l3) + ", curTime=" + j.a(l1) + ", waitedTime=" + l6 + "s, ret=" + bool4);
            if (bool4 != true)
              break;
            this.m.a("CREATE_CONFIG_TIME", System.currentTimeMillis());
            com.alipay.pushsdk.c.a.c.a(3, g, "runConfigRequest start...");
            b localb = new b(this);
            HandlerThread localHandlerThread = new HandlerThread("ConfigReqThread");
            localHandlerThread.start();
            this.n = new Handler(localHandlerThread.getLooper());
            this.n.postDelayed(localb, 10000L);
            return;
            if (l6 / 60L >= this.b)
              break label988;
            bool3 = false;
            break label671;
          }
          bool3 = true;
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a.a
 * JD-Core Version:    0.6.2
 */