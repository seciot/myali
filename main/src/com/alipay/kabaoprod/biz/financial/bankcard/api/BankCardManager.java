package com.alipay.kabaoprod.biz.financial.bankcard.api;

import com.alipay.kabaoprod.biz.financial.bankcard.request.BankCardBalanceReq;
import com.alipay.kabaoprod.biz.financial.bankcard.request.BankCardDetailReq;
import com.alipay.kabaoprod.biz.financial.bankcard.request.CancelBankCardReq;
import com.alipay.kabaoprod.biz.financial.bankcard.request.CcrRemindSetReq;
import com.alipay.kabaoprod.biz.financial.bankcard.result.BankCardBalanceResult;
import com.alipay.kabaoprod.biz.financial.bankcard.result.BankCardDetailResult;
import com.alipay.kabaoprod.biz.financial.bankcard.result.BankCardListResult;
import com.alipay.kabaoprod.biz.financial.bankcard.result.CcrRemindResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface BankCardManager
{
  @OperationType("alipay.kabao.asset.bankcard.cancel")
  @CheckLogin
  public abstract KabaoCommonResult cancelCard(CancelBankCardReq paramCancelBankCardReq);

  @OperationType("alipay.kabao.asset.bankcard.balance.query")
  @CheckLogin
  public abstract BankCardBalanceResult queryCardBalance(BankCardBalanceReq paramBankCardBalanceReq);

  @OperationType("alipay.kabao.asset.bankcard.detail.query")
  @CheckLogin
  public abstract BankCardDetailResult queryCardDetail(BankCardDetailReq paramBankCardDetailReq);

  @OperationType("alipay.kabao.asset.bankcard.list.query")
  @CheckLogin
  public abstract BankCardListResult queryCardList();

  @OperationType("alipay.kabao.asset.bankcard.ccr.remid")
  @CheckLogin
  public abstract CcrRemindResult setCcrRemid(CcrRemindSetReq paramCcrRemindSetReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.api.BankCardManager
 * JD-Core Version:    0.6.2
 */