package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class FundTransferOutReq extends ToString
{
  public String fundCode;
  public String password;
  public String transferOutAmount;

  public String getFundCode()
  {
    return this.fundCode;
  }

  public String getPassword()
  {
    return this.password;
  }

  public String getTransferOutAmount()
  {
    return this.transferOutAmount;
  }

  public void setFundCode(String paramString)
  {
    this.fundCode = paramString;
  }

  public void setPassword(String paramString)
  {
    this.password = paramString;
  }

  public void setTransferOutAmount(String paramString)
  {
    this.transferOutAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundTransferOutReq
 * JD-Core Version:    0.6.2
 */