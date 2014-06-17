package com.alipay.mobilegw.biz.shared.processer.taobao;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.common.service.facade.taobao.binding.model.BindingLoginIdReq;
import com.alipay.mobileapp.common.service.facade.taobao.binding.model.BindingLoginIdRes;

public abstract interface BindingLoginIdService
{
  @OperationType("alipay.user.taobao.bindingLoginId")
  public abstract BindingLoginIdRes bindingLoginId(BindingLoginIdReq paramBindingLoginIdReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.taobao.BindingLoginIdService
 * JD-Core Version:    0.6.2
 */