package com.alipay.mobile.security.accountmanager.a;

import android.content.Context;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.biz.gw.service.account.AccountManagerFacade;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.account.GetAccountResult;

public final class a
{
  public final String a = "AccountManagerFacadeBiz";
  protected RpcService b;
  protected DeviceService c;
  protected AccountManagerFacade d;
  b e;
  protected Context f;
  String g = "";
  String h = "";
  String i = "";
  String j = "";
  String k = "";
  String l = "";
  protected Tid m = null;
  private Tid n = null;
  private MicroApplicationContext o;

  public a(ActivityApplication paramActivityApplication, b paramb)
  {
    this.o = paramActivityApplication.getMicroApplicationContext();
    this.f = this.o.getApplicationContext();
    this.b = ((RpcService)this.o.findServiceByInterface(RpcService.class.getName()));
    this.c = ((DeviceService)this.o.getExtServiceByInterface(DeviceService.class.getName()));
    this.e = paramb;
    this.d = ((AccountManagerFacade)this.b.getRpcProxy(AccountManagerFacade.class));
    if (this.c != null)
    {
      MspDeviceInfoBean localMspDeviceInfoBean = this.c.queryCertification();
      if ((localMspDeviceInfoBean != null) && (localMspDeviceInfoBean.getTid() != null))
      {
        this.m = new Tid();
        this.m.setClientKey(localMspDeviceInfoBean.getMspkey());
        this.m.setImei(localMspDeviceInfoBean.getImei());
        this.m.setImsi(localMspDeviceInfoBean.getImsi());
        this.m.setTid(localMspDeviceInfoBean.getTid());
        this.m.setVimei(localMspDeviceInfoBean.getVimei());
        this.m.setVimsi(localMspDeviceInfoBean.getVimsi());
      }
    }
    this.n = new TidGetter(this.o).getClientTid();
  }

  public final void a()
  {
    if ((this.n == null) && (this.m == null));
    while (true)
    {
      return;
      if ((this.n == null) && (this.m == null))
        continue;
      try
      {
        GetAccountResult localGetAccountResult = this.d.getAccountList(this.n, this.m);
        if (this.e == null)
          continue;
        this.e.a(1, localGetAccountResult);
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw localRuntimeException;
      }
      finally
      {
        if (this.e != null)
          this.e.a(1, null);
      }
    }
  }

  // ERROR //
  public final void a(String paramString)
  {
    // Byte code:
    //   0: invokestatic 176	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   3: astore_2
    //   4: aload_0
    //   5: getfield 70	com/alipay/mobile/security/accountmanager/a/a:f	Landroid/content/Context;
    //   8: invokestatic 182	com/alipay/mobile/common/info/DeviceInfo:createInstance	(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;
    //   11: astore_3
    //   12: aload_0
    //   13: getfield 54	com/alipay/mobile/security/accountmanager/a/a:n	Lcom/alipay/mobilesecurity/core/model/Tid;
    //   16: ifnonnull +30 -> 46
    //   19: aload_0
    //   20: getfield 52	com/alipay/mobile/security/accountmanager/a/a:m	Lcom/alipay/mobilesecurity/core/model/Tid;
    //   23: ifnonnull +23 -> 46
    //   26: aload_2
    //   27: ifnonnull +19 -> 46
    //   30: aload_3
    //   31: ifnonnull +15 -> 46
    //   34: aload_0
    //   35: getfield 94	com/alipay/mobile/security/accountmanager/a/a:e	Lcom/alipay/mobile/security/accountmanager/a/b;
    //   38: iconst_3
    //   39: aconst_null
    //   40: invokeinterface 168 3 0
    //   45: return
    //   46: aload_0
    //   47: getfield 102	com/alipay/mobile/security/accountmanager/a/a:d	Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;
    //   50: aload_0
    //   51: getfield 54	com/alipay/mobile/security/accountmanager/a/a:n	Lcom/alipay/mobilesecurity/core/model/Tid;
    //   54: aload_0
    //   55: getfield 52	com/alipay/mobile/security/accountmanager/a/a:m	Lcom/alipay/mobilesecurity/core/model/Tid;
    //   58: aload_1
    //   59: aload_2
    //   60: invokevirtual 185	com/alipay/mobile/common/info/AppInfo:getmProductVersion	()Ljava/lang/String;
    //   63: aload_2
    //   64: invokevirtual 188	com/alipay/mobile/common/info/AppInfo:getProductID	()Ljava/lang/String;
    //   67: aload_3
    //   68: invokevirtual 191	com/alipay/mobile/common/info/DeviceInfo:getClientId	()Ljava/lang/String;
    //   71: invokeinterface 195 7 0
    //   76: astore 6
    //   78: aload_0
    //   79: getfield 94	com/alipay/mobile/security/accountmanager/a/a:e	Lcom/alipay/mobile/security/accountmanager/a/b;
    //   82: ifnull -37 -> 45
    //   85: aload_0
    //   86: getfield 94	com/alipay/mobile/security/accountmanager/a/a:e	Lcom/alipay/mobile/security/accountmanager/a/b;
    //   89: iconst_2
    //   90: aload 6
    //   92: invokeinterface 168 3 0
    //   97: return
    //   98: astore 5
    //   100: aload_0
    //   101: getfield 94	com/alipay/mobile/security/accountmanager/a/a:e	Lcom/alipay/mobile/security/accountmanager/a/b;
    //   104: ifnull -59 -> 45
    //   107: aload_0
    //   108: getfield 94	com/alipay/mobile/security/accountmanager/a/a:e	Lcom/alipay/mobile/security/accountmanager/a/b;
    //   111: iconst_2
    //   112: aconst_null
    //   113: invokeinterface 168 3 0
    //   118: return
    //   119: astore 4
    //   121: aload_0
    //   122: getfield 94	com/alipay/mobile/security/accountmanager/a/a:e	Lcom/alipay/mobile/security/accountmanager/a/b;
    //   125: ifnull +14 -> 139
    //   128: aload_0
    //   129: getfield 94	com/alipay/mobile/security/accountmanager/a/a:e	Lcom/alipay/mobile/security/accountmanager/a/b;
    //   132: iconst_2
    //   133: aconst_null
    //   134: invokeinterface 168 3 0
    //   139: aload 4
    //   141: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   46	78	98	com/alipay/mobile/common/rpc/RpcException
    //   46	78	119	finally
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.a.a
 * JD-Core Version:    0.6.2
 */