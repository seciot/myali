package com.alipay.mobilewealth.biz.service.gw.api.bank;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.bank.BankCardBalanceReq;
import com.alipay.mobilewealth.biz.service.gw.request.bank.CcrRemindSetReq;
import com.alipay.mobilewealth.biz.service.gw.request.bank.RemoveBankCardReq;
import com.alipay.mobilewealth.biz.service.gw.result.bank.BankCardBalanceResult;
import com.alipay.mobilewealth.biz.service.gw.result.bank.CcrRemindResult;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;

public abstract interface BankCardOperationManager
{
  @OperationType("alipay.kabao.asset.bankcard.balance.query")
  @CheckLogin
  public abstract BankCardBalanceResult queryCardBalance(BankCardBalanceReq paramBankCardBalanceReq);

  @OperationType("alipay.wealth.bankcard.remove")
  @CheckLogin
  public abstract CommonResult removeBankCard(RemoveBankCardReq paramRemoveBankCardReq);

  @OperationType("alipay.kabao.asset.bankcard.ccr.remid")
  @CheckLogin
  public abstract CcrRemindResult setCcrRemid(CcrRemindSetReq paramCcrRemindSetReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.bank.BankCardOperationManager
 * JD-Core Version:    0.6.2
 */