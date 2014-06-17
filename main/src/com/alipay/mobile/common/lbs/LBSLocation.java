package com.alipay.mobile.common.lbs;

import android.location.Location;

public class LBSLocation extends Location
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;

  public LBSLocation(Location paramLocation)
  {
    super(paramLocation);
  }

  public String getAdCode()
  {
    return this.e;
  }

  public String getCity()
  {
    return this.b;
  }

  public String getCityCode()
  {
    return this.d;
  }

  public String getDistrict()
  {
    return this.c;
  }

  public String getProvince()
  {
    return this.a;
  }

  public void setAdCode(String paramString)
  {
    this.e = paramString;
  }

  public void setCity(String paramString)
  {
    this.b = paramString;
  }

  public void setCityCode(String paramString)
  {
    this.d = paramString;
  }

  public void setDistrict(String paramString)
  {
    this.c = paramString;
  }

  public void setProvince(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.lbs.LBSLocation
 * JD-Core Version:    0.6.2
 */