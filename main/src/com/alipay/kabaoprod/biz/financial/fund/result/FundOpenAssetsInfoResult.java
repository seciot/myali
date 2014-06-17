package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.FundInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class FundOpenAssetsInfoResult extends KabaoCommonResult
{
  public String account;
  public String certNo;
  public FundInfo fundInfo;
  public String userName;

  public String getAccount()
  {
    return this.account;
  }

  public String getCertNo()
  {
    return this.certNo;
  }

  public FundInfo getFundInfo()
  {
    return this.fundInfo;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public void setAccount(String paramString)
  {
    this.account = paramString;
  }

  public void setCertNo(String paramString)
  {
    this.certNo = paramString;
  }

  public void setFundInfo(FundInfo paramFundInfo)
  {
    this.fundInfo = paramFundInfo;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundOpenAssetsInfoResult
 * JD-Core Version:    0.6.2
 */