package com.alipay.mobileapp.common.service.facade.app.facade;

public class QueryAppInfoByVersionReq
{
  private String appId;
  private String appVersion;
  private String channel;
  private String platform;
  private String platformVersion;
  private String productID;
  private String productVersion;

  public String getAppId()
  {
    return this.appId;
  }

  public String getAppVersion()
  {
    return this.appVersion;
  }

  public String getChannel()
  {
    return this.channel;
  }

  public String getPlatform()
  {
    return this.platform;
  }

  public String getPlatformVersion()
  {
    return this.platformVersion;
  }

  public String getProductID()
  {
    return this.productID;
  }

  public String getProductVersion()
  {
    return this.productVersion;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setAppVersion(String paramString)
  {
    this.appVersion = paramString;
  }

  public void setChannel(String paramString)
  {
    this.channel = paramString;
  }

  public void setPlatform(String paramString)
  {
    this.platform = paramString;
  }

  public void setPlatformVersion(String paramString)
  {
    this.platformVersion = paramString;
  }

  public void setProductID(String paramString)
  {
    this.productID = paramString;
  }

  public void setProductVersion(String paramString)
  {
    this.productVersion = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.app.facade.QueryAppInfoByVersionReq
 * JD-Core Version:    0.6.2
 */