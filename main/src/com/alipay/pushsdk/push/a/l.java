package com.alipay.pushsdk.push.a;

import android.content.Context;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.c.b;
import com.alipay.pushsdk.c.j;
import com.alipay.pushsdk.push.o;
import java.util.Calendar;

public class l
{
  private static final String a = c.a(l.class);
  private final int b = 15;
  private final int c = 2;
  private Context d;
  private b e;
  private o f;

  public l(Context paramContext)
  {
    this.d = paramContext;
    this.e = new b(this.d);
    this.f = new o(paramContext);
  }

  public final boolean a()
  {
    long l1 = System.currentTimeMillis();
    long l2 = this.e.a("DELAY_CONNECT_TIME");
    if (((l1 - l2) / 1000L >= 1800L) && (this.f.c() == true))
    {
      Calendar localCalendar = Calendar.getInstance();
      int i = localCalendar.get(11);
      int j = localCalendar.get(12);
      long l4 = j + i * 60 - 60 * this.f.e();
      c.a(3, a, "getDelayTime delay=30; hour=" + i + " min=" + j + "; eslapsedMin=" + l4);
      long l5 = 0L;
      if ((i >= this.f.e()) && (l4 < 30L))
      {
        long l6 = 1000L * ()(60.0D * (30.0D * Math.random()));
        long l7 = l6 + (localCalendar.getTimeInMillis() - 1000L * (l4 * 60L));
        this.e.a("DELAY_CONNECT_TIME", l7);
        c.a(3, a, "getDelayTime rand=" + l6 + ", expectedTime=" + j.a(l7));
        d.a(d.v, d.B, System.currentTimeMillis(), d.B, 10000L + System.currentTimeMillis(), "ConnectionPolicy_getDelayTime: expectedTime=" + j.a(l7) + ", rand=" + l6 + ", hour=" + i + " min=" + j);
        l5 = l6;
      }
      c.a(3, a, "getDelayTime delay=30, rand=" + l5);
    }
    for (long l3 = this.e.a("DELAY_CONNECT_TIME"); ; l3 = l2)
    {
      if (l1 < l3);
      for (boolean bool = false; ; bool = true)
      {
        d.a(d.h, d.C, System.currentTimeMillis(), d.C, 10000L + System.currentTimeMillis(), "ConnectionPolicy_getPolicy: curTime=" + j.a(l1) + ", delayPollTime=" + j.a(l3) + "s, ret=" + bool);
        return bool;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.l
 * JD-Core Version:    0.6.2
 */