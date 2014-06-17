package com.j256.ormlite.dao;

import java.util.Iterator;

class BaseDaoImpl$2
  implements CloseableIterable<T>
{
  BaseDaoImpl$2(BaseDaoImpl paramBaseDaoImpl)
  {
  }

  public CloseableIterator<T> closeableIterator()
  {
    try
    {
      CloseableIterator localCloseableIterator = BaseDaoImpl.access$100(this.this$0, -1);
      return localCloseableIterator;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("Could not build iterator for " + this.this$0.dataClass, localException);
    }
  }

  public Iterator<T> iterator()
  {
    return closeableIterator();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.BaseDaoImpl.2
 * JD-Core Version:    0.6.2
 */