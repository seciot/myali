package com.alipay.kabaoprod.biz.financial.bankcard.api;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface ExpressSignManager
{
  @OperationType("alipay.kabao.asset.bankcard.express.sign")
  @CheckLogin
  public abstract KabaoCommonResult sign(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.api.ExpressSignManager
 * JD-Core Version:    0.6.2
 */