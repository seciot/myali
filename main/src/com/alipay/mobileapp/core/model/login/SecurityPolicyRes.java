package com.alipay.mobileapp.core.model.login;

public class SecurityPolicyRes
{
  public static final String SECURITY_POLICY_RES_KEY = "securityPolicyRes";
  private boolean needH5;
  private String securityH5Url;
  private String securityId;

  public String getSecurityH5Url()
  {
    return this.securityH5Url;
  }

  public String getSecurityId()
  {
    return this.securityId;
  }

  public boolean isNeedH5()
  {
    return this.needH5;
  }

  public void setNeedH5(boolean paramBoolean)
  {
    this.needH5 = paramBoolean;
  }

  public void setSecurityH5Url(String paramString)
  {
    this.securityH5Url = paramString;
  }

  public void setSecurityId(String paramString)
  {
    this.securityId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.core.model.login.SecurityPolicyRes
 * JD-Core Version:    0.6.2
 */