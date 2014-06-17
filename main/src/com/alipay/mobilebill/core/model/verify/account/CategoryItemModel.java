package com.alipay.mobilebill.core.model.verify.account;

import java.io.Serializable;
import java.util.List;

public class CategoryItemModel
  implements Serializable
{
  public String categoryName;
  public String totalFee;
  public String totalPercent;
  public List<TradeItemModel> tradeItemInfos;

  public String getCategoryName()
  {
    return this.categoryName;
  }

  public String getTotalFee()
  {
    return this.totalFee;
  }

  public String getTotalPercent()
  {
    return this.totalPercent;
  }

  public List<TradeItemModel> getTradeItemInfos()
  {
    return this.tradeItemInfos;
  }

  public void setCategoryName(String paramString)
  {
    this.categoryName = paramString;
  }

  public void setTotalFee(String paramString)
  {
    this.totalFee = paramString;
  }

  public void setTotalPercent(String paramString)
  {
    this.totalPercent = paramString;
  }

  public void setTradeItemInfos(List<TradeItemModel> paramList)
  {
    this.tradeItemInfos = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.core.model.verify.account.CategoryItemModel
 * JD-Core Version:    0.6.2
 */