package com.alipay.logistics.client.dto.response;

public class LogisticsCreateOrderResult extends BaseResult
{
  private String outTradeNo;
  private String tradeNo;

  public String getOutTradeNo()
  {
    return this.outTradeNo;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public void setOutTradeNo(String paramString)
  {
    this.outTradeNo = paramString;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.response.LogisticsCreateOrderResult
 * JD-Core Version:    0.6.2
 */