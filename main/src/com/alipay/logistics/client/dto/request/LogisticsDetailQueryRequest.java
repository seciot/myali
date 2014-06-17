package com.alipay.logistics.client.dto.request;

public class LogisticsDetailQueryRequest extends Request
{
  private String logisticsCode;
  private String logisticsNo;
  private String logisticsStatus;
  private String userId;

  public String getLogisticsCode()
  {
    return this.logisticsCode;
  }

  public String getLogisticsNo()
  {
    return this.logisticsNo;
  }

  public String getLogisticsStatus()
  {
    return this.logisticsStatus;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setLogisticsCode(String paramString)
  {
    this.logisticsCode = paramString;
  }

  public void setLogisticsNo(String paramString)
  {
    this.logisticsNo = paramString;
  }

  public void setLogisticsStatus(String paramString)
  {
    this.logisticsStatus = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.request.LogisticsDetailQueryRequest
 * JD-Core Version:    0.6.2
 */