package com.alipay.mobile.framework.service.ext.appentry;

public class WidgetItemInfo
{
  public static final String CLIENT_VERSION = "clientVersion";
  public static final String USER_ID = "userId";
  public static final String WIDGET_ID = "widgetId";
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;

  public String getAction()
  {
    return this.g;
  }

  public String getAppId()
  {
    return this.d;
  }

  public String getAppType()
  {
    return this.f;
  }

  public String getContainerId()
  {
    return this.b;
  }

  public String getDisc()
  {
    return this.j;
  }

  public String getGroup()
  {
    return this.c;
  }

  public String getIcon()
  {
    return this.i;
  }

  public String getIndex()
  {
    return this.e;
  }

  public String getName()
  {
    return this.h;
  }

  public String getTips()
  {
    return this.k;
  }

  public String getWidgetId()
  {
    return this.a;
  }

  public void setAction(String paramString)
  {
    this.g = paramString;
  }

  public void setAppId(String paramString)
  {
    this.d = paramString;
  }

  public void setAppType(String paramString)
  {
    this.f = paramString;
  }

  public void setContainerId(String paramString)
  {
    this.b = paramString;
  }

  public void setDisc(String paramString)
  {
    this.j = paramString;
  }

  public void setGroup(String paramString)
  {
    this.c = paramString;
  }

  public void setIcon(String paramString)
  {
    this.i = paramString;
  }

  public void setIndex(String paramString)
  {
    this.e = paramString;
  }

  public void setName(String paramString)
  {
    this.h = paramString;
  }

  public void setTips(String paramString)
  {
    this.k = paramString;
  }

  public void setWidgetId(String paramString)
  {
    this.a = paramString;
  }

  public String toString()
  {
    return "widgetId:" + this.a + ",appId:" + this.d + ",containerId:" + this.b + ",appType:" + this.f + ",action:" + this.g + ",group:" + this.c + ",index:" + this.e + ",name:" + this.h + ",disc:" + this.j + ",tips:" + this.k + ",icon:" + this.i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.appentry.WidgetItemInfo
 * JD-Core Version:    0.6.2
 */