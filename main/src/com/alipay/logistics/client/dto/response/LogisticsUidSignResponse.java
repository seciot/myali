package com.alipay.logistics.client.dto.response;

public class LogisticsUidSignResponse extends BaseResult
{
  private String sign;
  private String timestamp;
  private String userId;

  public String getSign()
  {
    return this.sign;
  }

  public String getTimestamp()
  {
    return this.timestamp;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setSign(String paramString)
  {
    this.sign = paramString;
  }

  public void setTimestamp(String paramString)
  {
    this.timestamp = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.response.LogisticsUidSignResponse
 * JD-Core Version:    0.6.2
 */