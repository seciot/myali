package com.j256.ormlite.dao;

import java.util.List;

public abstract interface GenericRawResults<T> extends CloseableWrappedIterable<T>
{
  public abstract void close();

  public abstract String[] getColumnNames();

  public abstract T getFirstResult();

  public abstract int getNumberColumns();

  public abstract List<T> getResults();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.GenericRawResults
 * JD-Core Version:    0.6.2
 */