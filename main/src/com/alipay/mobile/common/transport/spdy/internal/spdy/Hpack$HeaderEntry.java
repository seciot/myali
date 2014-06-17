package com.alipay.mobile.common.transport.spdy.internal.spdy;

class Hpack$HeaderEntry
{
  private final String a;
  private final String b;

  Hpack$HeaderEntry(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  int length()
  {
    return 32 + this.a.length() + this.b.length();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Hpack.HeaderEntry
 * JD-Core Version:    0.6.2
 */