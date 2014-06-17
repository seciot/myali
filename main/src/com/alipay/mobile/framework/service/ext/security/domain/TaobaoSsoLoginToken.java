package com.alipay.mobile.framework.service.ext.security.domain;

public class TaobaoSsoLoginToken
{
  private String a;
  private String b;
  private String c;
  private String d;
  private long e;
  private String f;
  private boolean g;

  public String getNickName()
  {
    return this.a;
  }

  public String getSecSign()
  {
    return this.f;
  }

  public String getSsoChannelId()
  {
    return this.d;
  }

  public String getSsoToken()
  {
    return this.b;
  }

  public String getTaobaoDeviceId()
  {
    return this.c;
  }

  public long getTimeStamp()
  {
    return this.e;
  }

  public boolean isAutoImport()
  {
    return this.g;
  }

  public void setAutoImport(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public void setNickName(String paramString)
  {
    this.a = paramString;
  }

  public void setSecSign(String paramString)
  {
    this.f = paramString;
  }

  public void setSsoChannelId(String paramString)
  {
    this.d = paramString;
  }

  public void setSsoToken(String paramString)
  {
    this.b = paramString;
  }

  public void setTaobaoDeviceId(String paramString)
  {
    this.c = paramString;
  }

  public void setTimeStamp(long paramLong)
  {
    this.e = paramLong;
  }

  public String toString()
  {
    return "[nickName:" + this.a + ",ssoToken:" + this.b + ",taobaoDeviceId:" + this.c + ",ssoChannelId" + this.d + ",timeStamp" + this.e + ",secSign" + this.f + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.domain.TaobaoSsoLoginToken
 * JD-Core Version:    0.6.2
 */