package com.alipay.mobile.common.apkutil;

import android.graphics.drawable.Drawable;

public class AppInfoData
{
  private Drawable a;
  private String b;
  private String c;
  private String d;
  private String e;

  public Drawable getAppicon()
  {
    return this.a;
  }

  public String getAppname()
  {
    return this.b;
  }

  public String getApppackage()
  {
    return this.e;
  }

  public String getAppversion()
  {
    return this.c;
  }

  public String getAppversionCode()
  {
    if (this.d == null)
      return "";
    return this.d;
  }

  public void setAppicon(Drawable paramDrawable)
  {
    this.a = paramDrawable;
  }

  public void setAppname(String paramString)
  {
    this.b = paramString;
  }

  public void setApppackage(String paramString)
  {
    this.e = paramString;
  }

  public void setAppversion(String paramString)
  {
    this.c = paramString;
  }

  public void setAppversionCode(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.apkutil.AppInfoData
 * JD-Core Version:    0.6.2
 */