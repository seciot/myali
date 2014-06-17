package com.alipay.logistics.client.dto.response;

public class LogisticsPayBillQueryResult extends BaseResult
{
  private Boolean amtCanModify;
  private String deliverMobile;
  private String goodsName;
  private Boolean isNotify;
  private Boolean isPaid = Boolean.valueOf(false);
  private String orderId;
  private String payAmount;
  private Boolean payable;
  private String queryAmount;
  private String tradeFrom;

  public Boolean getAmtCanModify()
  {
    return this.amtCanModify;
  }

  public String getDeliverMobile()
  {
    return this.deliverMobile;
  }

  public String getGoodsName()
  {
    return this.goodsName;
  }

  public Boolean getIsNotify()
  {
    return this.isNotify;
  }

  public Boolean getIsPaid()
  {
    return this.isPaid;
  }

  public String getOrderId()
  {
    return this.orderId;
  }

  public String getPayAmount()
  {
    return this.payAmount;
  }

  public Boolean getPayable()
  {
    return this.payable;
  }

  public String getQueryAmount()
  {
    return this.queryAmount;
  }

  public String getTradeFrom()
  {
    return this.tradeFrom;
  }

  public void setAmtCanModify(Boolean paramBoolean)
  {
    this.amtCanModify = paramBoolean;
  }

  public void setDeliverMobile(String paramString)
  {
    this.deliverMobile = paramString;
  }

  public void setGoodsName(String paramString)
  {
    this.goodsName = paramString;
  }

  public void setIsNotify(Boolean paramBoolean)
  {
    this.isNotify = paramBoolean;
  }

  public void setIsPaid(Boolean paramBoolean)
  {
    this.isPaid = paramBoolean;
  }

  public void setOrderId(String paramString)
  {
    this.orderId = paramString;
  }

  public void setPayAmount(String paramString)
  {
    this.payAmount = paramString;
  }

  public void setPayable(Boolean paramBoolean)
  {
    this.payable = paramBoolean;
  }

  public void setQueryAmount(String paramString)
  {
    this.queryAmount = paramString;
  }

  public void setTradeFrom(String paramString)
  {
    this.tradeFrom = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.dto.response.LogisticsPayBillQueryResult
 * JD-Core Version:    0.6.2
 */