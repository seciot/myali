package com.alipay.mobile.discoverywidget.a.a;

import com.alipay.kabaoprod.biz.mwallet.pass.manager.PassManager;
import com.alipay.kabaoprod.biz.mwallet.pass.request.HomePageWidgetReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.IndexWidgetResult;
import com.alipay.mobile.discoverywidget.a.b;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;

public final class a
  implements BundlesManager
{
  PassManager a;

  public a(MicroApplicationContext paramMicroApplicationContext)
  {
    this.a = ((PassManager)((RpcService)paramMicroApplicationContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(PassManager.class));
  }

  public final IndexWidgetResult a(HomePageWidgetReq paramHomePageWidgetReq)
  {
    return this.a.getHomePageWidgetInfo(paramHomePageWidgetReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverywidget.a.a.a
 * JD-Core Version:    0.6.2
 */