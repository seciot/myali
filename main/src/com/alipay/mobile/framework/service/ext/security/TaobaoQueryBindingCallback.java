package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoBindingQueryRes;

public abstract interface TaobaoQueryBindingCallback
{
  public abstract void queryBindingFail(TaobaoBindingQueryRes paramTaobaoBindingQueryRes);

  public abstract void queryBindingSuccess(TaobaoBindingQueryRes paramTaobaoBindingQueryRes);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.TaobaoQueryBindingCallback
 * JD-Core Version:    0.6.2
 */