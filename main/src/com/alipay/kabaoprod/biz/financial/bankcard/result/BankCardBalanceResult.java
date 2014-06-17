package com.alipay.kabaoprod.biz.financial.bankcard.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class BankCardBalanceResult extends KabaoCommonResult
{
  public String cardBalance;

  public String getCardBalance()
  {
    return this.cardBalance;
  }

  public void setCardBalance(String paramString)
  {
    this.cardBalance = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.result.BankCardBalanceResult
 * JD-Core Version:    0.6.2
 */