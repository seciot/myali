package com.alipay.kabaoprod.biz.financial.bankcard.api;

import com.alipay.kabaoprod.biz.financial.bankcard.request.InputElementReq;
import com.alipay.kabaoprod.biz.financial.bankcard.result.InputElementResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface ExpressCheckManager
{
  @OperationType("alipay.kabao.asset.bankcard.express.getInputElement")
  @CheckLogin
  public abstract InputElementResult getInputElement(InputElementReq paramInputElementReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.api.ExpressCheckManager
 * JD-Core Version:    0.6.2
 */