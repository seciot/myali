package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.request.FundApplyQuickOpenReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundQuickOpenInputAmountReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundQuickOpenInputCardNoReq;
import com.alipay.kabaoprod.biz.financial.fund.result.FundApplyQuickOpenResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundQuickOpenInputAmountResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundQuickOpenInputCardNoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface FundQuickOpenManager
{
  @OperationType("alipay.kabao.asset.fund.quickopen.apply")
  @CheckLogin
  public abstract FundApplyQuickOpenResult applyFundQuickOpen(FundApplyQuickOpenReq paramFundApplyQuickOpenReq);

  @OperationType("alipay.kabao.asset.fund.quickopen.input.amount")
  @CheckLogin
  public abstract FundQuickOpenInputAmountResult inputTranferInAmount(FundQuickOpenInputAmountReq paramFundQuickOpenInputAmountReq);

  @OperationType("alipay.kabao.asset.fund.quickopen.input.cardno")
  @CheckLogin
  public abstract FundQuickOpenInputCardNoResult inputTranferInCardNo(FundQuickOpenInputCardNoReq paramFundQuickOpenInputCardNoReq);

  @OperationType("alipay.kabao.asset.fund.quickopen.checkcode")
  @CheckLogin
  public abstract FundApplyQuickOpenResult validateCheckCodeAndOpen(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundQuickOpenManager
 * JD-Core Version:    0.6.2
 */