package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class PassShareInfo extends ToString
{
  public String content;
  public String imgUrl;
  public Integer shareType;
  public String title;
  public String url;
  public String weiboImgUrl;

  public String getContent()
  {
    return this.content;
  }

  public String getImgUrl()
  {
    return this.imgUrl;
  }

  public Integer getShareType()
  {
    return this.shareType;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getUrl()
  {
    return this.url;
  }

  public String getWeiboImgUrl()
  {
    return this.weiboImgUrl;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }

  public void setShareType(Integer paramInteger)
  {
    this.shareType = paramInteger;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public void setWeiboImgUrl(String paramString)
  {
    this.weiboImgUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.PassShareInfo
 * JD-Core Version:    0.6.2
 */