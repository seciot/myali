package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.request.FundApplyTransferInReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundAutoTransferInSetReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundTransferInSuccessReq;
import com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferInResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundAutoTransferInResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundTransferInSuccessResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.common.actionintercept.annotation.Promotion;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface FundTransferInManager
{
  @OperationType("alipay.kabao.asset.fund.transferin.once.apply")
  @CheckLogin
  public abstract FundApplyTransferInResult fundApplyTransferIn(FundApplyTransferInReq paramFundApplyTransferInReq);

  @OperationType("alipay.kabao.asset.fund.transferin.auto.set")
  @CheckLogin
  public abstract KabaoCommonResult fundAutoTransferInSet(FundAutoTransferInSetReq paramFundAutoTransferInSetReq);

  @Promotion
  @OperationType("alipay.kabao.asset.fund.transferin.success")
  @CheckLogin
  public abstract FundTransferInSuccessResult fundTransferInSuccess(FundTransferInSuccessReq paramFundTransferInSuccessReq);

  @OperationType("alipay.kabao.asset.fund.transferin.auto.query")
  @CheckLogin
  public abstract FundAutoTransferInResult queryFundAutoTransferIn(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundTransferInManager
 * JD-Core Version:    0.6.2
 */