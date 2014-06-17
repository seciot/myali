package com.alipay.publiccore.biz.relation.msg.query;

public class MessageQuery extends BaseMessageQuery
{
  public String agreementId;
  public String endTime;
  public String[] includeMsgType;
  public boolean includeTotalCount = true;
  public Integer pageSize = Integer.valueOf(10);
  public String publicId;
  public String startTime;

  public String getAgreementId()
  {
    return this.agreementId;
  }

  public String getEndTime()
  {
    return this.endTime;
  }

  public String[] getIncludeMsgType()
  {
    return this.includeMsgType;
  }

  public Integer getPageSize()
  {
    return this.pageSize;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getStartTime()
  {
    return this.startTime;
  }

  public boolean isIncludeTotalCount()
  {
    return this.includeTotalCount;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
  }

  public void setEndTime(String paramString)
  {
    this.endTime = paramString;
  }

  public void setIncludeMsgType(String[] paramArrayOfString)
  {
    this.includeMsgType = paramArrayOfString;
  }

  public void setIncludeTotalCount(boolean paramBoolean)
  {
    this.includeTotalCount = paramBoolean;
  }

  public void setPageSize(Integer paramInteger)
  {
    this.pageSize = paramInteger;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setStartTime(String paramString)
  {
    this.startTime = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.query.MessageQuery
 * JD-Core Version:    0.6.2
 */