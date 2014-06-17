package com.alipay.mobileapp.common.service.facade.version.model;

public class ClientVersionServiceReq
{
  public String clientId;
  public String osVersion;
  public String patch;
  public String productId;
  public String productVersion;
  public String userId;

  public String getClientId()
  {
    return this.clientId;
  }

  public String getOsVersion()
  {
    return this.osVersion;
  }

  public String getPatch()
  {
    return this.patch;
  }

  public String getProductId()
  {
    return this.productId;
  }

  public String getProductVersion()
  {
    return this.productVersion;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setClientId(String paramString)
  {
    this.clientId = paramString;
  }

  public void setOsVersion(String paramString)
  {
    this.osVersion = paramString;
  }

  public void setPatch(String paramString)
  {
    this.patch = paramString;
  }

  public void setProductId(String paramString)
  {
    this.productId = paramString;
  }

  public void setProductVersion(String paramString)
  {
    this.productVersion = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.version.model.ClientVersionServiceReq
 * JD-Core Version:    0.6.2
 */