package com.alipay.barcodeprod.biz.service.impl.gw.paipai.account;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface AccountPayFacade
{
  @OperationType("com.alipay.barcodeprod.paipai.accountCode")
  public abstract AccountCodeCreateTradeRes createTrade(AccountCodeCreateTradeReq paramAccountCodeCreateTradeReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.barcodeprod.biz.service.impl.gw.paipai.account.AccountPayFacade
 * JD-Core Version:    0.6.2
 */