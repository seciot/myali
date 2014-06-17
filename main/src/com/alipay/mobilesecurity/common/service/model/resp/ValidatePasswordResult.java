package com.alipay.mobilesecurity.common.service.model.resp;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.util.Date;

public class ValidatePasswordResult extends MobileSecurityResult
{
  public int failCount;
  public Date lastFailTime;
  public boolean locked;

  public int getFailCount()
  {
    return this.failCount;
  }

  public Date getLastFailTime()
  {
    return this.lastFailTime;
  }

  public boolean isLocked()
  {
    return this.locked;
  }

  public void setFailCount(int paramInt)
  {
    this.failCount = paramInt;
  }

  public void setLastFailTime(Date paramDate)
  {
    this.lastFailTime = paramDate;
  }

  public void setLocked(boolean paramBoolean)
  {
    this.locked = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.common.service.model.resp.ValidatePasswordResult
 * JD-Core Version:    0.6.2
 */