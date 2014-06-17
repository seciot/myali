package com.alipay.mobileprod.biz.ccb;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileprod.biz.ccb.vo.GetCreditCardAndBankInfoReqVO;
import com.alipay.mobileprod.biz.ccb.vo.GetCreditCardAndBankInfoRespVO;

public abstract interface CreditCardService
{
  @OperationType("alipay.home.ccr.getCreditCardAndBankInfo")
  @CheckLogin
  public abstract GetCreditCardAndBankInfoRespVO getCreditCardAndBankInfo(GetCreditCardAndBankInfoReqVO paramGetCreditCardAndBankInfoReqVO);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccb.CreditCardService
 * JD-Core Version:    0.6.2
 */