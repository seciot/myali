package com.alipay.mobilebill.biz.shared.contact.model;

public class BaseContactInfoReq
{
  public ContactData contactData;
  public String contactType;
  public String headImg;

  public ContactData getContactData()
  {
    return this.contactData;
  }

  public String getContactType()
  {
    return this.contactType;
  }

  public String getHeadImg()
  {
    return this.headImg;
  }

  public void setContactData(ContactData paramContactData)
  {
    this.contactData = paramContactData;
  }

  public void setContactType(String paramString)
  {
    this.contactType = paramString;
  }

  public void setHeadImg(String paramString)
  {
    this.headImg = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.BaseContactInfoReq
 * JD-Core Version:    0.6.2
 */