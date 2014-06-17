package com.alipay.mobilesecurity.biz.gw.service.bind;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoBindingQueryReq;
import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoBindingQueryRes;
import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoQuickBindingReq;

public abstract interface TaobaoBindingFacade
{
  @OperationType("alipay.mobile.security.taobao.binding.query")
  public abstract TaobaoBindingQueryRes queryTaobaoBindingByMobile(TaobaoBindingQueryReq paramTaobaoBindingQueryReq);

  @OperationType("alipay.mobile.security.taobao.binding.quickBinding")
  public abstract MobileSecurityResult taobaoQuickBinding(TaobaoQuickBindingReq paramTaobaoQuickBindingReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.bind.TaobaoBindingFacade
 * JD-Core Version:    0.6.2
 */