package com.alipay.mobilesecurity.core.model.mainpage.operations;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class OperationsLog extends ToString
{
  public String address;
  public String content;
  public String logId;
  public String normType;
  public String operateTime;
  public String status;
  public String subType;
  public String title;

  public String getAddress()
  {
    return this.address;
  }

  public String getContent()
  {
    return this.content;
  }

  public String getLogId()
  {
    return this.logId;
  }

  public String getNormType()
  {
    return this.normType;
  }

  public String getOperateTime()
  {
    return this.operateTime;
  }

  public String getStatus()
  {
    return this.status;
  }

  public String getSubType()
  {
    return this.subType;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setAddress(String paramString)
  {
    this.address = paramString;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setLogId(String paramString)
  {
    this.logId = paramString;
  }

  public void setNormType(String paramString)
  {
    this.normType = paramString;
  }

  public void setOperateTime(String paramString)
  {
    this.operateTime = paramString;
  }

  public void setStatus(String paramString)
  {
    this.status = paramString;
  }

  public void setSubType(String paramString)
  {
    this.subType = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLog
 * JD-Core Version:    0.6.2
 */