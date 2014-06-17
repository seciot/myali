package com.alipay.mobile.framework.service.ext.security.domain;

public class WapLoginToken
{
  private String a;
  private String b;

  public String getInnerToken()
  {
    return this.a;
  }

  public String getSource()
  {
    return this.b;
  }

  public void setInnerToken(String paramString)
  {
    this.a = paramString;
  }

  public void setSource(String paramString)
  {
    this.b = paramString;
  }

  public String toString()
  {
    return "WapLoginToken [innerToken=" + this.a + ", source=" + this.b + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.domain.WapLoginToken
 * JD-Core Version:    0.6.2
 */