package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class FundTransferOutToAmountReq extends ToString
{
  public String fundCode;
  public String password;
  public String totalAmount;
  public String transferAmount;

  public String getFundCode()
  {
    return this.fundCode;
  }

  public String getPassword()
  {
    return this.password;
  }

  public String getTotalAmount()
  {
    return this.totalAmount;
  }

  public String getTransferAmount()
  {
    return this.transferAmount;
  }

  public void setFundCode(String paramString)
  {
    this.fundCode = paramString;
  }

  public void setPassword(String paramString)
  {
    this.password = paramString;
  }

  public void setTotalAmount(String paramString)
  {
    this.totalAmount = paramString;
  }

  public void setTransferAmount(String paramString)
  {
    this.transferAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundTransferOutToAmountReq
 * JD-Core Version:    0.6.2
 */