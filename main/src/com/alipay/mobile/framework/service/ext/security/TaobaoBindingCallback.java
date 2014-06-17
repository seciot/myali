package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public abstract interface TaobaoBindingCallback
{
  public abstract void quickBindingFail(MobileSecurityResult paramMobileSecurityResult);

  public abstract void quickBindingSuccess(MobileSecurityResult paramMobileSecurityResult);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.TaobaoBindingCallback
 * JD-Core Version:    0.6.2
 */