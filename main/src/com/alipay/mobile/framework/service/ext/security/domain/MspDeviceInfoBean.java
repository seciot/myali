package com.alipay.mobile.framework.service.ext.security.domain;

public class MspDeviceInfoBean
{
  String a;
  String b;
  String c;
  String d;
  private String e;
  private String f;

  public String getImei()
  {
    return this.c;
  }

  public String getImsi()
  {
    return this.d;
  }

  public String getMspkey()
  {
    return this.b;
  }

  public String getTid()
  {
    return this.a;
  }

  public String getVimei()
  {
    return this.e;
  }

  public String getVimsi()
  {
    return this.f;
  }

  public void setImei(String paramString)
  {
    this.c = paramString;
  }

  public void setImsi(String paramString)
  {
    this.d = paramString;
  }

  public void setMspkey(String paramString)
  {
    this.b = paramString;
  }

  public void setTid(String paramString)
  {
    this.a = paramString;
  }

  public void setVimei(String paramString)
  {
    this.e = paramString;
  }

  public void setVimsi(String paramString)
  {
    this.f = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean
 * JD-Core Version:    0.6.2
 */