package com.alipay.mobilebill.biz.shared.contact.model;

import java.util.List;

public class ContactElement
{
  public List<ContactElementBehavior> behavior;
  public String text;
  public String type;

  public List<ContactElementBehavior> getBehavior()
  {
    return this.behavior;
  }

  public String getText()
  {
    return this.text;
  }

  public String getType()
  {
    return this.type;
  }

  public void setBehavior(List<ContactElementBehavior> paramList)
  {
    this.behavior = paramList;
  }

  public void setText(String paramString)
  {
    this.text = paramString;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.ContactElement
 * JD-Core Version:    0.6.2
 */