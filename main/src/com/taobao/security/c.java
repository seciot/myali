package com.taobao.security;

public final class c
{
  int a;
  int b;
  int[] c;
  String d;
  String e;
  String f;
  String g;

  public c()
  {
    this.a = -1;
    this.b = -1;
    this.c = null;
    this.d = null;
    this.e = null;
    this.f = null;
  }

  public c(String paramString)
  {
    this.g = paramString;
    this.a = -1;
    this.b = -1;
  }

  public final void a()
  {
    if (this.g == null);
    String[] arrayOfString;
    do
    {
      return;
      arrayOfString = this.g.split("\\|");
    }
    while (arrayOfString.length < 5);
    int[] arrayOfInt = f.getBundle(arrayOfString[0]);
    if ((arrayOfInt != null) && (arrayOfInt.length >= 2))
    {
      this.a = (1000 * arrayOfInt[0]);
      this.b = (1000 * arrayOfInt[1]);
    }
    this.d = arrayOfString[1];
    this.c = f.getBundle(arrayOfString[2]);
    this.e = arrayOfString[3];
    this.f = arrayOfString[4];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.c
 * JD-Core Version:    0.6.2
 */