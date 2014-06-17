package com.alipay.mobile.framework.service.ext.security.bean;

import java.io.Serializable;

public class LocationInfo
  implements Serializable
{
  private static final long serialVersionUID = -7306107499177681772L;
  private String accuracy;
  private String cellId;
  private String latitude;
  private String longitude;
  private String mac;

  public String getAccuracy()
  {
    return this.accuracy;
  }

  public String getCellId()
  {
    return this.cellId;
  }

  public String getLatitude()
  {
    return this.latitude;
  }

  public String getLongitude()
  {
    return this.longitude;
  }

  public String getMac()
  {
    return this.mac;
  }

  public void setAccuracy(String paramString)
  {
    this.accuracy = paramString;
  }

  public void setCellId(String paramString)
  {
    this.cellId = paramString;
  }

  public void setLatitude(String paramString)
  {
    this.latitude = paramString;
  }

  public void setLongitude(String paramString)
  {
    this.longitude = paramString;
  }

  public void setMac(String paramString)
  {
    this.mac = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.bean.LocationInfo
 * JD-Core Version:    0.6.2
 */