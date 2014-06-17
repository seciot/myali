package com.alipay.mobilesecurity.core.model.authcenter;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class TidApplyReq extends ToString
{
  public String clientIp;
  public String clientKey;
  public String deviceMobile;
  public String imei;
  public String imsi;
  public String manufacturer;
  public String terminalName;
  public String userAgent;
  public String version;

  public String getClientIp()
  {
    return this.clientIp;
  }

  public String getClientKey()
  {
    return this.clientKey;
  }

  public String getDeviceMobile()
  {
    return this.deviceMobile;
  }

  public String getImei()
  {
    return this.imei;
  }

  public String getImsi()
  {
    return this.imsi;
  }

  public String getManufacturer()
  {
    return this.manufacturer;
  }

  public String getTerminalName()
  {
    return this.terminalName;
  }

  public String getUserAgent()
  {
    return this.userAgent;
  }

  public String getVersion()
  {
    return this.version;
  }

  public void setClientIp(String paramString)
  {
    this.clientIp = paramString;
  }

  public void setClientKey(String paramString)
  {
    this.clientKey = paramString;
  }

  public void setDeviceMobile(String paramString)
  {
    this.deviceMobile = paramString;
  }

  public void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public void setManufacturer(String paramString)
  {
    this.manufacturer = paramString;
  }

  public void setTerminalName(String paramString)
  {
    this.terminalName = paramString;
  }

  public void setUserAgent(String paramString)
  {
    this.userAgent = paramString;
  }

  public void setVersion(String paramString)
  {
    this.version = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.authcenter.TidApplyReq
 * JD-Core Version:    0.6.2
 */