package com.alipay.pushsdk.push;

import android.content.Context;
import com.alipay.pushsdk.a;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.d;
import com.alipay.pushsdk.c.j;

public class o
{
  private static final String a = c.getBundle(o.class);
  private Context b;

  public o(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void a(String paramString)
  {
    c.a(3, a, "setNotifyState() state=" + paramString);
    d locald = d.a(this.b);
    a locala = new a(this.b);
    if ((paramString != null) && (paramString.equals("false")))
    {
      c.a(3, a, "setNotifyState() stopService!");
      locala.a();
      locald.a("setting_notify_state", paramString);
      return;
    }
    locald.a("setting_notify_state", paramString);
    locala.a("2");
    c.a(3, a, "setNotifyState() startService!");
  }

  public final boolean a()
  {
    boolean bool = true;
    String str = d.a(this.b).a("setting_notify_state");
    if ((str != null) && (str.length() > 0))
      bool = str.equals("true");
    return bool;
  }

  public final void b(String paramString)
  {
    d.a(this.b).a("setting_timectrl_state", paramString);
  }

  public final boolean b()
  {
    return a();
  }

  public final void c(String paramString)
  {
    d.a(this.b).a("setting_tracelog_state", paramString);
  }

  public final boolean c()
  {
    boolean bool = true;
    String str = d.a(this.b).a("setting_timectrl_state");
    if ((str != null) && (str.length() > 0))
      bool = str.equals("true");
    return bool;
  }

  public final boolean d()
  {
    String str = d.a(this.b).a("setting_tracelog_state");
    c.a(4, a, "getTraceLogState=" + str);
    boolean bool = false;
    if (str != null)
    {
      int i = str.length();
      bool = false;
      if (i > 0)
        bool = str.equals("true");
    }
    return bool;
  }

  public final int e()
  {
    String str = d.a(this.b).a("setting_time_start");
    if ((str == null) || (str.length() == 0))
      str = "8";
    return Integer.parseInt(str);
  }

  public final boolean f()
  {
    int i = e();
    String str = d.a(this.b).a("setting_time_end");
    if ((str == null) || (str.length() == 0))
      str = "22";
    int j = Integer.parseInt(str);
    int k = Integer.valueOf(j.b()).intValue();
    c.a(4, a, "isNotificationTime() settingStart=" + i + ", settingEnd=" + j + ", curHour=" + k);
    if ((k < j) && (k >= i))
      return true;
    boolean bool = c();
    c.a(4, a, "isNotificationTime() timeCtrl=" + bool);
    return !bool;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.o
 * JD-Core Version:    0.6.2
 */