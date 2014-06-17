package com.alipay.kabaoprod.biz.financial.pcredit.api;

import com.alipay.kabaoprod.biz.financial.pcredit.request.ApplyRepayRequest;
import com.alipay.kabaoprod.biz.financial.pcredit.request.SignValidateReq;
import com.alipay.kabaoprod.biz.financial.pcredit.result.ApplyRepayResult;
import com.alipay.kabaoprod.biz.financial.pcredit.result.CheckSignResult;
import com.alipay.kabaoprod.biz.financial.pcredit.result.PcreditSignResult;
import com.alipay.kabaoprod.biz.financial.pcredit.result.QualificationResult;
import com.alipay.kabaoprod.biz.financial.pcredit.result.SignValidateResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface PcreditManager
{
  @OperationType("alipay.kabao.asset.pcredit.applyrepay")
  @CheckLogin
  public abstract ApplyRepayResult applyRepay(ApplyRepayRequest paramApplyRepayRequest);

  @OperationType("alipay.kabao.asset.pcredit.checkIsSigned")
  @CheckLogin
  public abstract CheckSignResult checkIsSigned();

  @OperationType("alipay.kabao.asset.pcredit.qulificationCheck")
  @CheckLogin
  public abstract QualificationResult qualificationCheck();

  @OperationType("alipay.kabao.asset.pcredit.sendsmscode")
  @CheckLogin
  public abstract KabaoCommonResult sendSmsCode();

  @OperationType("alipay.kabao.asset.pcredit.sign")
  @CheckLogin
  public abstract PcreditSignResult sign(String paramString);

  @OperationType("alipay.kabao.asset.pcredit.signValidate")
  @CheckLogin
  public abstract SignValidateResult signValidate(SignValidateReq paramSignValidateReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.api.PcreditManager
 * JD-Core Version:    0.6.2
 */