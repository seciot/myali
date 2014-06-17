package com.alipay.mobilebill.biz.bill.model.billdetail;

import com.alipay.mobilebill.common.util.ToString;

public class BillDetailField extends ToString
{
  private String layoutType;
  private String name;
  private String value;

  public String getLayoutType()
  {
    return this.layoutType;
  }

  public String getName()
  {
    return this.name;
  }

  public String getValue()
  {
    return this.value;
  }

  public void setLayoutType(String paramString)
  {
    this.layoutType = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.bill.model.billdetail.BillDetailField
 * JD-Core Version:    0.6.2
 */