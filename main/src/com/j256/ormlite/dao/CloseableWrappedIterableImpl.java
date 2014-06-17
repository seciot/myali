package com.j256.ormlite.dao;

import java.sql.SQLException;

public class CloseableWrappedIterableImpl<T>
  implements CloseableWrappedIterable<T>
{
  private final CloseableIterable<T> a;
  private CloseableIterator<T> b;

  public CloseableWrappedIterableImpl(CloseableIterable<T> paramCloseableIterable)
  {
    this.a = paramCloseableIterable;
  }

  public void close()
  {
    if (this.b != null)
    {
      this.b.close();
      this.b = null;
    }
  }

  public CloseableIterator<T> closeableIterator()
  {
    try
    {
      close();
      label4: this.b = this.a.closeableIterator();
      return this.b;
    }
    catch (SQLException localSQLException)
    {
      break label4;
    }
  }

  public CloseableIterator<T> iterator()
  {
    return closeableIterator();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.CloseableWrappedIterableImpl
 * JD-Core Version:    0.6.2
 */