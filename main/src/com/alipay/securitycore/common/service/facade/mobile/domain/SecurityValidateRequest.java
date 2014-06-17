package com.alipay.securitycore.common.service.facade.mobile.domain;

import java.util.HashMap;
import java.util.Map;

public class SecurityValidateRequest
{
  public Map<String, String> mobileOperationEnvironment = new HashMap();
  public String securityId;
  public String simplePassword;
  public String userId;

  public Map<String, String> getMobileOperationEnvironment()
  {
    return this.mobileOperationEnvironment;
  }

  public String getSecurityId()
  {
    return this.securityId;
  }

  public String getSimplePassword()
  {
    return this.simplePassword;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setMobileOperationEnvironment(Map<String, String> paramMap)
  {
    this.mobileOperationEnvironment = paramMap;
  }

  public void setSecurityId(String paramString)
  {
    this.securityId = paramString;
  }

  public void setSimplePassword(String paramString)
  {
    this.simplePassword = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.securitycore.common.service.facade.mobile.domain.SecurityValidateRequest
 * JD-Core Version:    0.6.2
 */