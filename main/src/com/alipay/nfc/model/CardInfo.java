package com.alipay.nfc.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CardInfo
{
  private String a;
  private String b;
  private String c;
  private CardTypeEnum d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private List<LogInfo> j;
  private Map<String, String> k;

  public final String a()
  {
    return this.b;
  }

  public final void a(CardTypeEnum paramCardTypeEnum)
  {
    this.d = paramCardTypeEnum;
  }

  public final void a(LogInfo paramLogInfo)
  {
    if (this.j == null)
      this.j = new ArrayList();
    this.j.add(paramLogInfo);
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(String paramString1, String paramString2)
  {
    if (this.k == null)
      this.k = new HashMap();
    this.k.put(paramString1, paramString2);
  }

  public final String b()
  {
    return this.h;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final String c()
  {
    return this.i;
  }

  public final void c(String paramString)
  {
    this.f = paramString;
  }

  public final List<LogInfo> d()
  {
    return this.j;
  }

  public final void d(String paramString)
  {
    this.g = paramString;
  }

  public final Map<String, String> e()
  {
    return this.k;
  }

  public final void e(String paramString)
  {
    this.h = paramString;
  }

  public final CardTypeEnum f()
  {
    return this.d;
  }

  public final void f(String paramString)
  {
    this.i = paramString;
  }

  public final String g()
  {
    return this.e;
  }

  public final void g(String paramString)
  {
    this.e = paramString;
  }

  public final String h()
  {
    return this.c;
  }

  public final void h(String paramString)
  {
    this.c = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.model.CardInfo
 * JD-Core Version:    0.6.2
 */