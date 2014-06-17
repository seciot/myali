package com.alipay.mobile.framework;

public abstract class MicroDescription
{
  private String a;
  private String b;
  private String c;
  private ClassLoader d;
  private boolean e = false;

  public String getAppId()
  {
    return this.a;
  }

  public ClassLoader getClassLoader()
  {
    return this.d;
  }

  public String getClassName()
  {
    return this.c;
  }

  public String getName()
  {
    return this.b;
  }

  public boolean isLagacyApp()
  {
    return this.e;
  }

  public MicroDescription setAppId(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public void setClassLoader(ClassLoader paramClassLoader)
  {
    this.d = paramClassLoader;
  }

  public MicroDescription setClassName(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public MicroDescription setLagacyApp(boolean paramBoolean)
  {
    this.e = paramBoolean;
    return this;
  }

  public MicroDescription setName(String paramString)
  {
    this.b = paramString;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.MicroDescription
 * JD-Core Version:    0.6.2
 */