package com.alipay.publiccore.biz.relation.msg.result;

import java.util.List;

public class ImageMsgEntry extends BaseMsgEntry
{
  public List<ImageMsgItem> articles = null;
  public String createTime = null;
  public String publicId = null;
  public String showType = null;
  public String toUserId = null;

  public List<ImageMsgItem> getArticles()
  {
    return this.articles;
  }

  public String getCreateTime()
  {
    return this.createTime;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getShowType()
  {
    return this.showType;
  }

  public String getToUserId()
  {
    return this.toUserId;
  }

  public void setArticles(List<ImageMsgItem> paramList)
  {
    this.articles = paramList;
  }

  public void setCreateTime(String paramString)
  {
    this.createTime = paramString;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setShowType(String paramString)
  {
    this.showType = paramString;
  }

  public void setToUserId(String paramString)
  {
    this.toUserId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.ImageMsgEntry
 * JD-Core Version:    0.6.2
 */