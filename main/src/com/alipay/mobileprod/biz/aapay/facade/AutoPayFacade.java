package com.alipay.mobileprod.biz.aapay.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.aapay.model.client.AutoPayResult;

public abstract interface AutoPayFacade
{
  @OperationType("alipay.mobileprod.aapay.autoPay")
  @CheckLogin
  public abstract AutoPayResult pay(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.aapay.facade.AutoPayFacade
 * JD-Core Version:    0.6.2
 */