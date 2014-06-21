package com.alipay.pushsdk;

import android.content.Context;
import android.content.Intent;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.j;
import com.alipay.pushsdk.data.NotifierInfo;
import com.alipay.pushsdk.push.NotificationService;
import com.alipay.pushsdk.push.h;
import com.alipay.pushsdk.push.o;

public final class a
{
  private static final String a = BundlesManagerImpl.getBundle(a.class);
  private Context b;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void a()
  {
    o localo = new o(this.b);
    try
    {
      if (localo.a())
        this.b.stopService(new Intent(this.b, NotificationService.class));
      BundlesManagerImpl.e(3, a, "stopService is called.");
      com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.g, com.alipay.pushsdk.c.a.d.D, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.E, 10000L + System.currentTimeMillis(), "ServiceManager_stopService");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a(String paramString)
  {
    Thread localThread = new Thread(new b(this));
    o localo = new o(this.b);
    BundlesManagerImpl.e(3, a, "isNotificationEnabled=" + localo.a() + ", triger=" + paramString);
    if (localo.a())
    {
      com.alipay.pushsdk.c.a.d.a();
      com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.p, com.alipay.pushsdk.c.a.d.C, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.C, 10000L + System.currentTimeMillis(), "ServiceManager_startService: triger=" + paramString);
      com.alipay.pushsdk.c.d.a(this.b).a("cur_triger", paramString);
      localThread.start();
    }
  }

  public final void b()
  {
    NotifierInfo localNotifierInfo = new NotifierInfo();
    localNotifierInfo.a(String.valueOf(System.currentTimeMillis()));
    localNotifierInfo.b("支付宝-默认测试消息默认测试消息");
    localNotifierInfo.c("移动快捷支付接入Push通知的测试消息。目的是通过移动快捷客户端带来支付宝客户端的下载使用。");
    localNotifierInfo.e("{\"type\":\"clientUpgrade\",\"params\":{\"url\":\"http\",\"tip\":\"支付宝钱包7.6新版特性：\\n- 新版情感转账，能说话，带表情\\n- 当面付重要升级，无网络也能购物\"}}");
    localNotifierInfo.f("2");
    localNotifierInfo.g("0");
    long l = System.currentTimeMillis();
    com.alipay.pushsdk.data.b localb = new com.alipay.pushsdk.data.b();
    localb.a("adji8w");
    localb.b(j.a(l));
    localNotifierInfo.a(localb);
    new com.alipay.pushsdk.c.b(this.b).a(localNotifierInfo, this.b.getPackageName() + ".push.action.SHOW_NOTIFICATION");
  }

  public final void b(String paramString)
  {
    h localh = new h(this.b);
    String str = localh.a();
    if (paramString != null)
      if ((!paramString.equals(str)) || (paramString.length() == 0))
        a();
    try
    {
      Thread.sleep(500L);
      localh.a(paramString);
      BundlesManagerImpl.e(3, a, "setUserId=" + paramString);
      if (paramString.length() > 0)
        a("1");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void c(String paramString)
  {
    h localh = new h(this.b);
    String str = localh.a();
    BundlesManagerImpl.e(3, a, "delUserId=" + paramString + ", curUserId=" + str);
    if ((paramString != null) && (paramString.length() > 0) && (paramString.equals(str)))
    {
      a();
      localh.a("");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a
 * JD-Core Version:    0.6.2
 */