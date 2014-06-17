package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.util.List;

public class FundAssetInfo extends ToString
{
  public List<FundTradeRecord> historyProfit;
  public String previousProfit;
  public String totalAmount;
  public String totalProfit;

  public List<FundTradeRecord> getHistoryProfit()
  {
    return this.historyProfit;
  }

  public String getPreviousProfit()
  {
    return this.previousProfit;
  }

  public String getTotalAmount()
  {
    return this.totalAmount;
  }

  public String getTotalProfit()
  {
    return this.totalProfit;
  }

  public void setHistoryProfit(List<FundTradeRecord> paramList)
  {
    this.historyProfit = paramList;
  }

  public void setPreviousProfit(String paramString)
  {
    this.previousProfit = paramString;
  }

  public void setTotalAmount(String paramString)
  {
    this.totalAmount = paramString;
  }

  public void setTotalProfit(String paramString)
  {
    this.totalProfit = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.FundAssetInfo
 * JD-Core Version:    0.6.2
 */