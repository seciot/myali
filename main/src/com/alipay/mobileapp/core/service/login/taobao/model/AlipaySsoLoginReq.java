package com.alipay.mobileapp.core.service.login.taobao.model;

public class AlipaySsoLoginReq
{
  public String appId;
  public String authDigest;
  public String from;
  public String logonId;
  public String scope;
  public String userId;

  public String getAppId()
  {
    return this.appId;
  }

  public String getAuthDigest()
  {
    return this.authDigest;
  }

  public String getFrom()
  {
    return this.from;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getScope()
  {
    return this.scope;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setAuthDigest(String paramString)
  {
    this.authDigest = paramString;
  }

  public void setFrom(String paramString)
  {
    this.from = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setScope(String paramString)
  {
    this.scope = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.core.service.login.taobao.model.AlipaySsoLoginReq
 * JD-Core Version:    0.6.2
 */