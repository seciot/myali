package com.alipay.mobile.appstoreapp.common;

public class QueryResult<T>
{
  private int a;
  private String b;
  private T c;

  public QueryResult(int paramInt, String paramString, T paramT)
  {
    this.a = paramInt;
    this.b = paramString;
    this.c = paramT;
  }

  public final int a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final T c()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.common.QueryResult
 * JD-Core Version:    0.6.2
 */