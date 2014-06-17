package com.alipay.mobileapp.biz.rpc.taobao.login.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.core.service.login.taobao.model.AlipaySsoLoginReq;
import com.alipay.mobileapp.core.service.login.taobao.model.AlipaySsoLoginRes;

public abstract interface TaobaoLoginFacade
{
  @OperationType("alipay.client.alipaySsoLogin")
  public abstract AlipaySsoLoginRes alipaySsoLogin(AlipaySsoLoginReq paramAlipaySsoLoginReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.taobao.login.facade.TaobaoLoginFacade
 * JD-Core Version:    0.6.2
 */