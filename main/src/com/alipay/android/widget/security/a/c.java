package com.alipay.android.widget.security.a;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobilesecurity.biz.gw.service.securitywidget.SecurityWidgetFacade;
import com.alipay.mobilesecurity.core.model.mainpage.quickhelp.QuickHelpResp;

public final class c
{
  public final String a = "SecurityWidgetFacadeIml";
  protected RpcService b;
  private SecurityWidgetFacade c;

  public c(ActivityApplication paramActivityApplication)
  {
    this.b = ((RpcService)paramActivityApplication.getMicroApplicationContext().findServiceByInterface(RpcService.class.getName()));
    this.c = ((SecurityWidgetFacade)this.b.getRpcProxy(SecurityWidgetFacade.class));
  }

  public final QuickHelpResp a(String paramString)
  {
    return this.c.getQuickHelp(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.a.c
 * JD-Core Version:    0.6.2
 */