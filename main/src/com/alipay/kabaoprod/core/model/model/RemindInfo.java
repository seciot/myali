package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class RemindInfo extends ToString
{
  public String gmtCreate;
  public String gmtModified;
  public long id;
  public String passId;
  public long remindSet;
  public String remindStatus = "0";
  public String remindSupportTime;
  public String remindSwitch = "1";
  public String remindTime;
  public String sysdate;

  public String getGmtCreate()
  {
    return this.gmtCreate;
  }

  public String getGmtModified()
  {
    return this.gmtModified;
  }

  public long getId()
  {
    return this.id;
  }

  public String getPassId()
  {
    return this.passId;
  }

  public long getRemindSet()
  {
    return this.remindSet;
  }

  public String getRemindStatus()
  {
    return this.remindStatus;
  }

  public String getRemindSupportTime()
  {
    return this.remindSupportTime;
  }

  public String getRemindSwitch()
  {
    return this.remindSwitch;
  }

  public String getRemindTime()
  {
    return this.remindTime;
  }

  public String getSysdate()
  {
    return this.sysdate;
  }

  public void setGmtCreate(String paramString)
  {
    this.gmtCreate = paramString;
  }

  public void setGmtModified(String paramString)
  {
    this.gmtModified = paramString;
  }

  public void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public void setPassId(String paramString)
  {
    this.passId = paramString;
  }

  public void setRemindSet(long paramLong)
  {
    this.remindSet = paramLong;
  }

  public void setRemindStatus(String paramString)
  {
    this.remindStatus = paramString;
  }

  public void setRemindSupportTime(String paramString)
  {
    this.remindSupportTime = paramString;
  }

  public void setRemindSwitch(String paramString)
  {
    this.remindSwitch = paramString;
  }

  public void setRemindTime(String paramString)
  {
    this.remindTime = paramString;
  }

  public void setSysdate(String paramString)
  {
    this.sysdate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.RemindInfo
 * JD-Core Version:    0.6.2
 */