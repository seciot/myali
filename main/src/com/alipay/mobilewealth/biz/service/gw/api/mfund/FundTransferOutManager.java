package com.alipay.mobilewealth.biz.service.gw.api.mfund;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundApplyTransferOutReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundTransferOutSMSSendReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundTransferOutToBalanceReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundTransferOutToBankCardReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundValidSMSReq;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundApplyTransferToBalanceResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundApplyTransferToCardResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundSendSMSResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundTransferOutResult;

public abstract interface FundTransferOutManager
{
  @OperationType("alipay.kabao.asset.fund.transferout.balance.apply")
  @CheckLogin
  public abstract FundApplyTransferToBalanceResult fundApplyTransferToBalance(FundApplyTransferOutReq paramFundApplyTransferOutReq);

  @OperationType("alipay.kabao.asset.fund.transferout.bankcard.apply")
  @CheckLogin
  public abstract FundApplyTransferToCardResult fundApplyTransferToCard(FundApplyTransferOutReq paramFundApplyTransferOutReq);

  @OperationType("alipay.kabao.asset.fund.transfeout.sms.send")
  @CheckLogin
  public abstract FundSendSMSResult fundTransferOutSendSMS(FundTransferOutSMSSendReq paramFundTransferOutSMSSendReq);

  @OperationType("alipay.kabao.asset.fund.transferout.sms.valid")
  @CheckLogin
  public abstract FundTransferOutResult fundTransferOutValidSMS(FundValidSMSReq paramFundValidSMSReq);

  @OperationType("alipay.kabao.asset.fund.transferout.balance")
  @CheckLogin
  public abstract FundTransferOutResult fundTransferToBalance(FundTransferOutToBalanceReq paramFundTransferOutToBalanceReq);

  @OperationType("alipay.kabao.asset.fund.transferout.bankcard")
  @CheckLogin
  public abstract FundTransferOutResult fundTransferToCard(FundTransferOutToBankCardReq paramFundTransferOutToBankCardReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.mfund.FundTransferOutManager
 * JD-Core Version:    0.6.2
 */