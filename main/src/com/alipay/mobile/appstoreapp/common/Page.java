package com.alipay.mobile.appstoreapp.common;

import java.util.List;

public class Page<T>
{
  public static int a = 12;
  List<T> b;
  int c = a;

  public Page(List<T> paramList)
  {
    this.b = paramList;
  }

  public final List<T> a()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.common.Page
 * JD-Core Version:    0.6.2
 */