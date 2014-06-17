package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.FundInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.Map;

public class FundAssetsInfoResult extends KabaoCommonResult
{
  public Map<String, String> extraInfo;
  public FundInfo fundInfo;
  public String previousDate;
  public String previousProfit;
  public String totalAmount;
  public String totalProfit;

  public Map<String, String> getExtraInfo()
  {
    return this.extraInfo;
  }

  public FundInfo getFundInfo()
  {
    return this.fundInfo;
  }

  public String getPreviousDate()
  {
    return this.previousDate;
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

  public void setExtraInfo(Map<String, String> paramMap)
  {
    this.extraInfo = paramMap;
  }

  public void setFundInfo(FundInfo paramFundInfo)
  {
    this.fundInfo = paramFundInfo;
  }

  public void setPreviousDate(String paramString)
  {
    this.previousDate = paramString;
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
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundAssetsInfoResult
 * JD-Core Version:    0.6.2
 */