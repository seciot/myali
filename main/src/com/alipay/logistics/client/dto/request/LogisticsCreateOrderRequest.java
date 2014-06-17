package com.alipay.logistics.client.dto.request;

public class LogisticsCreateOrderRequest
{
  private String deliverMobile;
  private String logisticsCode;
  private String logisticsNo;
  private String payAmount;
  private String userId;

  public String getDeliverMobile()
  {
    return this.deliverMobile;
  }

  public String getLogisticsCode()
  {
    return this.logisticsCode;
  }

  public String getLogisticsNo()
  {
    return this.logisticsNo;
  }

  public String getPayAmount()
  {
    return this.payAmount;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setDeliverMobile(String paramString)
  {
    this.deliverMobile = paramString;
  }

  public void setLogisticsCode(String paramString)
  {
    this.logisticsCode = paramString;
  }

  public void setLogisticsNo(String paramString)
  {
    this.logisticsNo = paramString;
  }

  public void setPayAmount(String paramString)
  {
    this.payAmount = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.request.LogisticsCreateOrderRequest
 * JD-Core Version:    0.6.2
 */