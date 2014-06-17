package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class PointInfo extends ToString
{
  public String pointName;
  public String subTransCode;
  public String tradeNo;
  public String transAmount;
  public String transDate;

  public String getPointName()
  {
    return this.pointName;
  }

  public String getSubTransCode()
  {
    return this.subTransCode;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public String getTransAmount()
  {
    return this.transAmount;
  }

  public String getTransDate()
  {
    return this.transDate;
  }

  public void setPointName(String paramString)
  {
    this.pointName = paramString;
  }

  public void setSubTransCode(String paramString)
  {
    this.subTransCode = paramString;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }

  public void setTransAmount(String paramString)
  {
    this.transAmount = paramString;
  }

  public void setTransDate(String paramString)
  {
    this.transDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.PointInfo
 * JD-Core Version:    0.6.2
 */