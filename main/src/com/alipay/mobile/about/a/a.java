package com.alipay.mobile.about.a;

import com.alipay.mobile.about.service.m;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileapp.common.service.facade.version.ClientVersionServiceFacade;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;
import com.alipay.mobileapp.common.service.facade.version.model.ClientVersionServiceReq;

public final class a
{
  private RpcService a = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());
  private AuthService b = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
  private ClientVersionServiceFacade c = (ClientVersionServiceFacade)this.a.getRpcProxy(ClientVersionServiceFacade.class);

  public final ClientUpdateCheckRes a()
  {
    ClientVersionServiceReq localClientVersionServiceReq = m.a();
    if ((this.b != null) && (this.b.isLogin()))
    {
      UserInfo localUserInfo = this.b.getUserInfo();
      if (localUserInfo != null)
        localClientVersionServiceReq.setUserId(localUserInfo.getUserId());
    }
    return this.c.versionUpdateCheck(localClientVersionServiceReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.a.a
 * JD-Core Version:    0.6.2
 */