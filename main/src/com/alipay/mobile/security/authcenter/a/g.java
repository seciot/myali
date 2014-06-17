package com.alipay.mobile.security.authcenter.a;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobileapp.common.service.facade.taobao.binding.model.BindingLoginIdReq;
import com.alipay.mobileapp.common.service.facade.taobao.binding.model.BindingLoginIdRes;
import com.alipay.mobilegw.biz.shared.processer.taobao.BindingLoginIdService;

public final class g
{
  static String a = "UserRegisterBiz";
  private BindingLoginIdService b;

  public g(ActivityApplication paramActivityApplication)
  {
    this.b = ((BindingLoginIdService)((RpcService)paramActivityApplication.getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(BindingLoginIdService.class));
  }

  public final BindingLoginIdRes a(BindingLoginIdReq paramBindingLoginIdReq)
  {
    return this.b.bindingLoginId(paramBindingLoginIdReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.a.g
 * JD-Core Version:    0.6.2
 */