package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.request.FundApplyTransferOutReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundTransferOutSMSSendReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundTransferOutToBalanceReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundTransferOutToBankCardReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundValidSMSReq;
import com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferToBalanceResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferToCardResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundSendSMSResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundTransferOutResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

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
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundTransferOutManager
 * JD-Core Version:    0.6.2
 */