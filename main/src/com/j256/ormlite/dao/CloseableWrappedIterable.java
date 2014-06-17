package com.j256.ormlite.dao;

public abstract interface CloseableWrappedIterable<T> extends CloseableIterable<T>
{
  public abstract void close();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.CloseableWrappedIterable
 * JD-Core Version:    0.6.2
 */