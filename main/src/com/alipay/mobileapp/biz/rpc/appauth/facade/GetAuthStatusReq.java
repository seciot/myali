package com.alipay.mobileapp.biz.rpc.appauth.facade;

public class GetAuthStatusReq
{
  public String appId;
  public String authType;
  public String platform;
  public String tid;
  public String userId;

  public String getAppId()
  {
    return this.appId;
  }

  public String getAuthType()
  {
    return this.authType;
  }

  public String getPlatform()
  {
    return this.platform;
  }

  public String getTid()
  {
    return this.tid;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setAuthType(String paramString)
  {
    this.authType = paramString;
  }

  public void setPlatform(String paramString)
  {
    this.platform = paramString;
  }

  public void setTid(String paramString)
  {
    this.tid = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.appauth.facade.GetAuthStatusReq
 * JD-Core Version:    0.6.2
 */