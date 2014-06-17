package com.alipay.android.mini.util;

public class LogAgent$LogItem
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public String i;

  public LogAgent$LogItem(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramString7;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("caseId:" + this.a + ",");
    localStringBuffer.append("behaviorID:" + this.b + ",");
    localStringBuffer.append("appId:" + this.c + ",");
    localStringBuffer.append("currentViewID:" + this.d + ",");
    localStringBuffer.append("refViewID:" + this.e + ",");
    localStringBuffer.append("seedId:" + this.f + ",");
    localStringBuffer.append("behaviorStatus:" + this.g + ",");
    localStringBuffer.append("extParam1:" + this.h + ",");
    localStringBuffer.append("extParam2:" + this.i);
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.LogAgent.LogItem
 * JD-Core Version:    0.6.2
 */