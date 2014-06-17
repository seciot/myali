package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public abstract class TaobaoBindingService extends ExternalService
{
  public abstract void bindingFinish(MobileSecurityResult paramMobileSecurityResult, boolean paramBoolean);

  public abstract void queryTaobaoBindingByMobile(String paramString);

  public abstract void setBindingCallback(TaobaoBindingCallback paramTaobaoBindingCallback);

  public abstract void setMicroApplication(MicroApplication paramMicroApplication);

  public abstract void setQueryBindingCallback(TaobaoQueryBindingCallback paramTaobaoQueryBindingCallback);

  public abstract MobileSecurityResult taobaoQuickBinding(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.TaobaoBindingService
 * JD-Core Version:    0.6.2
 */