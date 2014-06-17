package com.taobao.security;

public class ProtocalEntry
{
  public static final ProtocalEntry DEFAULT = new ProtocalEntry(2097156, 5, a, "001");
  private static final c a = new c("-|-|0004050708090A0B0D0E0F1011121314151718191A1B1C1D1E1F2021222324|-|-");
  public int bs;
  public int ep;
  public c filter;
  public String fp;
  public String v;

  public ProtocalEntry()
  {
    this.ep = DEFAULT.ep;
    this.fp = DEFAULT.fp;
    this.bs = DEFAULT.bs;
    this.v = DEFAULT.v;
    this.filter = DEFAULT.filter;
  }

  public ProtocalEntry(int paramInt1, int paramInt2, c paramc, String paramString)
  {
    this.ep = paramInt1;
    this.bs = paramInt2;
    this.filter = paramc;
    this.v = paramString;
    this.fp = paramc.g;
    this.filter.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.ProtocalEntry
 * JD-Core Version:    0.6.2
 */