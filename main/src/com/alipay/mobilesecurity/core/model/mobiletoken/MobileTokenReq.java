package com.alipay.mobilesecurity.core.model.mobiletoken;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class MobileTokenReq extends ToString
{
  public String baseBand;
  public String cellId;
  public String hasRooted;
  public String imei;
  public String imsi;
  public String location;
  public String logonId;
  public String mac;
  public String osType;
  public String osVersion;
  public String sePubKey;
  public String tid;

  public String getBaseBand()
  {
    return this.baseBand;
  }

  public String getCellId()
  {
    return this.cellId;
  }

  public String getHasRooted()
  {
    return this.hasRooted;
  }

  public String getImei()
  {
    return this.imei;
  }

  public String getImsi()
  {
    return this.imsi;
  }

  public String getLocation()
  {
    return this.location;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getMac()
  {
    return this.mac;
  }

  public String getOsType()
  {
    return this.osType;
  }

  public String getOsVersion()
  {
    return this.osVersion;
  }

  public String getSePubKey()
  {
    return this.sePubKey;
  }

  public String getTid()
  {
    return this.tid;
  }

  public void setBaseBand(String paramString)
  {
    this.baseBand = paramString;
  }

  public void setCellId(String paramString)
  {
    this.cellId = paramString;
  }

  public void setHasRooted(String paramString)
  {
    this.hasRooted = paramString;
  }

  public void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public void setLocation(String paramString)
  {
    this.location = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setMac(String paramString)
  {
    this.mac = paramString;
  }

  public void setOsType(String paramString)
  {
    this.osType = paramString;
  }

  public void setOsVersion(String paramString)
  {
    this.osVersion = paramString;
  }

  public void setSePubKey(String paramString)
  {
    this.sePubKey = paramString;
  }

  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobiletoken.MobileTokenReq
 * JD-Core Version:    0.6.2
 */