package com.j256.ormlite.stmt.query;

public class OrderBy
{
  private final String a;
  private final boolean b;

  public OrderBy(String paramString, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramBoolean;
  }

  public String getColumnName()
  {
    return this.a;
  }

  public boolean isAscending()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.OrderBy
 * JD-Core Version:    0.6.2
 */