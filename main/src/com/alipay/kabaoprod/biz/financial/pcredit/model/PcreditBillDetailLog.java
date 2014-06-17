package com.alipay.kabaoprod.biz.financial.pcredit.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class PcreditBillDetailLog extends ToString
{
  public String amount;
  public String createDate;
  public String name;
  public String type;

  public String getAmount()
  {
    return this.amount;
  }

  public String getCreateDate()
  {
    return this.createDate;
  }

  public String getName()
  {
    return this.name;
  }

  public String getType()
  {
    return this.type;
  }

  public void setAmount(String paramString)
  {
    this.amount = paramString;
  }

  public void setCreateDate(String paramString)
  {
    this.createDate = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.model.PcreditBillDetailLog
 * JD-Core Version:    0.6.2
 */