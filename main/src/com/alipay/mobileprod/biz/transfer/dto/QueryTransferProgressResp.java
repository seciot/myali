package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class QueryTransferProgressResp extends BaseRespVO
{
  public String gmtCreate;
  public String gmtPay;
  public String gmtSuccess;
  public String transferAmount;
  public String transferStatus;

  public String getGmtCreate()
  {
    return this.gmtCreate;
  }

  public String getGmtPay()
  {
    return this.gmtPay;
  }

  public String getGmtSuccess()
  {
    return this.gmtSuccess;
  }

  public String getTransferAmount()
  {
    return this.transferAmount;
  }

  public String getTransferStatus()
  {
    return this.transferStatus;
  }

  public void setGmtCreate(String paramString)
  {
    this.gmtCreate = paramString;
  }

  public void setGmtPay(String paramString)
  {
    this.gmtPay = paramString;
  }

  public void setGmtSuccess(String paramString)
  {
    this.gmtSuccess = paramString;
  }

  public void setTransferAmount(String paramString)
  {
    this.transferAmount = paramString;
  }

  public void setTransferStatus(String paramString)
  {
    this.transferStatus = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryTransferProgressResp
 * JD-Core Version:    0.6.2
 */