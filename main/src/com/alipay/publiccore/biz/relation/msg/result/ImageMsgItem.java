package com.alipay.publiccore.biz.relation.msg.result;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class ImageMsgItem extends ToString
{
  public String actionName = null;
  public String actionParam = null;
  public String actionType = null;
  public String authType = null;
  public String image = null;
  public String text = null;
  public String title = null;

  public String getActionName()
  {
    return this.actionName;
  }

  public String getActionParam()
  {
    return this.actionParam;
  }

  public String getActionType()
  {
    return this.actionType;
  }

  public String getAuthType()
  {
    return this.authType;
  }

  public String getImage()
  {
    return this.image;
  }

  public String getText()
  {
    return this.text;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setActionName(String paramString)
  {
    this.actionName = paramString;
  }

  public void setActionParam(String paramString)
  {
    this.actionParam = paramString;
  }

  public void setActionType(String paramString)
  {
    this.actionType = paramString;
  }

  public void setAuthType(String paramString)
  {
    this.authType = paramString;
  }

  public void setImage(String paramString)
  {
    this.image = paramString;
  }

  public void setText(String paramString)
  {
    this.text = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.ImageMsgItem
 * JD-Core Version:    0.6.2
 */