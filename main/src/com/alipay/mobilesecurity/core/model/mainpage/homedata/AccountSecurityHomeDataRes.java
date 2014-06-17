package com.alipay.mobilesecurity.core.model.mainpage.homedata;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class AccountSecurityHomeDataRes extends MobileSecurityResult
{
  public String freePwdSwitchStatus;
  public String securityLevel;

  public String getFreePwdSwitchStatus()
  {
    return this.freePwdSwitchStatus;
  }

  public String getSecurityLevel()
  {
    return this.securityLevel;
  }

  public void setFreePwdSwitchStatus(String paramString)
  {
    this.freePwdSwitchStatus = paramString;
  }

  public void setSecurityLevel(String paramString)
  {
    this.securityLevel = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.homedata.AccountSecurityHomeDataRes
 * JD-Core Version:    0.6.2
 */