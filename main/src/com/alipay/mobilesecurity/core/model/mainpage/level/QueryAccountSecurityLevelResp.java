package com.alipay.mobilesecurity.core.model.mainpage.level;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class QueryAccountSecurityLevelResp extends MobileSecurityResult
{
  public SecurityLevel securityLevel;
  public SecuritySettings securitySettings;

  public SecurityLevel getSecurityLevel()
  {
    return this.securityLevel;
  }

  public SecuritySettings getSecuritySettings()
  {
    return this.securitySettings;
  }

  public void setSecurityLevel(SecurityLevel paramSecurityLevel)
  {
    this.securityLevel = paramSecurityLevel;
  }

  public void setSecuritySettings(SecuritySettings paramSecuritySettings)
  {
    this.securitySettings = paramSecuritySettings;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.level.QueryAccountSecurityLevelResp
 * JD-Core Version:    0.6.2
 */