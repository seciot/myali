package com.alipay.mobile.authorization.biz;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobileapp.biz.rpc.appauth.facade.AuthSignReq;
import com.alipay.mobileapp.biz.rpc.appauth.facade.AuthSignRes;
import com.alipay.mobileapp.biz.rpc.appauth.facade.MobileAppAuthServiceFacade;

public class AuthorizationBizImpl
  implements AuthorizationBiz
{
  private RpcService a = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());

  public final AuthSignRes a(AuthSignReq paramAuthSignReq)
  {
    return ((MobileAppAuthServiceFacade)this.a.getRpcProxy(MobileAppAuthServiceFacade.class)).authSign(paramAuthSignReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.biz.AuthorizationBizImpl
 * JD-Core Version:    0.6.2
 */