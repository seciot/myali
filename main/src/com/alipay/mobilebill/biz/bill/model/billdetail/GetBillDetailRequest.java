package com.alipay.mobilebill.biz.bill.model.billdetail;

import com.alipay.mobilebill.common.util.ToString;

public class GetBillDetailRequest extends ToString
{
  private String bizType;
  private String clientType;
  private long gmtCreate;
  private String tradeNo;

  public String getBizType()
  {
    return this.bizType;
  }

  public String getClientType()
  {
    return this.clientType;
  }

  public long getGmtCreate()
  {
    return this.gmtCreate;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setClientType(String paramString)
  {
    this.clientType = paramString;
  }

  public void setGmtCreate(long paramLong)
  {
    this.gmtCreate = paramLong;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.bill.model.billdetail.GetBillDetailRequest
 * JD-Core Version:    0.6.2
 */