package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class ConsultChargeFeeReq extends BaseReqVO
{
  public String bankShortName;
  public String productName;
  public String transferAmount;

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public String getProductName()
  {
    return this.productName;
  }

  public String getTransferAmount()
  {
    return this.transferAmount;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }

  public void setProductName(String paramString)
  {
    this.productName = paramString;
  }

  public void setTransferAmount(String paramString)
  {
    this.transferAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.ConsultChargeFeeReq
 * JD-Core Version:    0.6.2
 */