package com.alipay.mobilewealth.biz.service.gw.api.mfund;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundApplyTransferInReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundAutoTransferInSetReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundTransferInSuccessReq;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundApplyTransferInResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundAutoTransferInResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundTransferInSuccessResult;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;

public abstract interface FundTransferInManager
{
  @OperationType("alipay.kabao.asset.fund.transferin.once.apply")
  @CheckLogin
  public abstract FundApplyTransferInResult fundApplyTransferIn(FundApplyTransferInReq paramFundApplyTransferInReq);

  @OperationType("alipay.kabao.asset.fund.transferin.auto.set")
  @CheckLogin
  public abstract CommonResult fundAutoTransferInSet(FundAutoTransferInSetReq paramFundAutoTransferInSetReq);

  @OperationType("alipay.kabao.asset.fund.transferin.success")
  @CheckLogin
  public abstract FundTransferInSuccessResult fundTransferInSuccess(FundTransferInSuccessReq paramFundTransferInSuccessReq);

  @OperationType("alipay.kabao.asset.fund.transferin.auto.query")
  @CheckLogin
  public abstract FundAutoTransferInResult queryFundAutoTransferIn(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.mfund.FundTransferInManager
 * JD-Core Version:    0.6.2
 */