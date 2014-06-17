package com.alipay.publiccore.biz.relation.msg.result;

public class TextMsgEntry extends BaseMsgEntry
{
  public String content = null;
  public String createTime = null;
  public String publicId = null;
  public String toUserId = null;

  public String getContent()
  {
    return this.content;
  }

  public String getCreateTime()
  {
    return this.createTime;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getToUserId()
  {
    return this.toUserId;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setCreateTime(String paramString)
  {
    this.createTime = paramString;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setToUserId(String paramString)
  {
    this.toUserId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.TextMsgEntry
 * JD-Core Version:    0.6.2
 */