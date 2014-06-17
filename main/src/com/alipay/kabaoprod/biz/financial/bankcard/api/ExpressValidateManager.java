package com.alipay.kabaoprod.biz.financial.bankcard.api;

import com.alipay.kabaoprod.biz.financial.bankcard.request.SignValidateReq;
import com.alipay.kabaoprod.biz.financial.bankcard.result.ValidateSignResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface ExpressValidateManager
{
  @OperationType("alipay.kabao.asset.bankcard.express.resendCheckCode")
  @CheckLogin
  public abstract KabaoCommonResult resendCheckCode(String paramString);

  @OperationType("alipay.kabao.asset.bankcard.express.signValidate")
  @CheckLogin
  public abstract ValidateSignResult signValidate(SignValidateReq paramSignValidateReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.api.ExpressValidateManager
 * JD-Core Version:    0.6.2
 */