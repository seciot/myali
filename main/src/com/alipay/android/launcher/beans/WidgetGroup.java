package com.alipay.android.launcher.beans;

public class WidgetGroup
{
  private String a;
  private String b;
  private String c;
  private String d;

  public WidgetGroup(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.c;
  }

  public final String c()
  {
    return this.b;
  }

  public String toString()
  {
    return "WidgetGroup [id=" + this.a + ", className=" + this.c + ", defaultWidgetGroup=" + this.d + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.beans.WidgetGroup
 * JD-Core Version:    0.6.2
 */