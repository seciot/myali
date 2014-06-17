package com.alipay.mobileapp.core.model.login;

public class SecurityPolicyParam
{
  public static final String SECURITY_POLICY_REQ_KEY = "securityPolicyParam";
  private boolean needCheck;
  private String securityId;

  public String getSecurityId()
  {
    return this.securityId;
  }

  public boolean isNeedCheck()
  {
    return this.needCheck;
  }

  public void setNeedCheck(boolean paramBoolean)
  {
    this.needCheck = paramBoolean;
  }

  public void setSecurityId(String paramString)
  {
    this.securityId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.core.model.login.SecurityPolicyParam
 * JD-Core Version:    0.6.2
 */