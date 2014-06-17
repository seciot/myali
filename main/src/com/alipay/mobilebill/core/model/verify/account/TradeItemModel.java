package com.alipay.mobilebill.core.model.verify.account;

import java.io.Serializable;

public class TradeItemModel
  implements Serializable
{
  public String amount;
  public String traderName;

  public String getAmount()
  {
    return this.amount;
  }

  public String getTraderName()
  {
    return this.traderName;
  }

  public void setAmount(String paramString)
  {
    this.amount = paramString;
  }

  public void setTraderName(String paramString)
  {
    this.traderName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.core.model.verify.account.TradeItemModel
 * JD-Core Version:    0.6.2
 */