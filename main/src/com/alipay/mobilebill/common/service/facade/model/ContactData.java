package com.alipay.mobilebill.common.service.facade.model;

public class ContactData
{
  public String bizSubType;
  public String contactId;
  public String inOut;
  public String instId;
  public boolean needMarkName;

  public String getBizSubType()
  {
    return this.bizSubType;
  }

  public String getContactId()
  {
    return this.contactId;
  }

  public String getInOut()
  {
    return this.inOut;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public boolean isNeedMarkName()
  {
    return this.needMarkName;
  }

  public void setBizSubType(String paramString)
  {
    this.bizSubType = paramString;
  }

  public void setContactId(String paramString)
  {
    this.contactId = paramString;
  }

  public void setInOut(String paramString)
  {
    this.inOut = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }

  public void setNeedMarkName(boolean paramBoolean)
  {
    this.needMarkName = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.common.service.facade.model.ContactData
 * JD-Core Version:    0.6.2
 */