package com.alipay.mobilesecurity.core.model.account.loginLog;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class LoginLog extends ToString
{
  public String deviceFlag;
  public String ip;
  public String ipAddress;
  public long logId;
  public String loginDate;

  public String getDeviceFlag()
  {
    return this.deviceFlag;
  }

  public String getIp()
  {
    return this.ip;
  }

  public String getIpAddress()
  {
    return this.ipAddress;
  }

  public long getLogId()
  {
    return this.logId;
  }

  public String getLoginDate()
  {
    return this.loginDate;
  }

  public void setDeviceFlag(String paramString)
  {
    this.deviceFlag = paramString;
  }

  public void setIp(String paramString)
  {
    this.ip = paramString;
  }

  public void setIpAddress(String paramString)
  {
    this.ipAddress = paramString;
  }

  public void setLogId(long paramLong)
  {
    this.logId = paramLong;
  }

  public void setLoginDate(String paramString)
  {
    this.loginDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.loginLog.LoginLog
 * JD-Core Version:    0.6.2
 */