package com.j256.ormlite.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class EagerForeignCollection<T, ID> extends BaseForeignCollection<T, ID>
  implements CloseableWrappedIterable<T>, ForeignCollection<T>, Serializable
{
  private List<T> a;

  public EagerForeignCollection(Dao<T, ID> paramDao, Object paramObject1, Object paramObject2, String paramString1, String paramString2)
  {
    super(paramDao, paramObject1, paramObject2, paramString1, paramString2);
    if (paramObject2 == null)
    {
      this.a = new ArrayList();
      return;
    }
    this.a = paramDao.query(getPreparedQuery());
  }

  public boolean add(T paramT)
  {
    if (this.a.add(paramT))
      return super.add(paramT);
    return false;
  }

  public boolean addAll(Collection<? extends T> paramCollection)
  {
    if (this.a.addAll(paramCollection))
      return super.addAll(paramCollection);
    return false;
  }

  public void clear()
  {
    this.a.clear();
    super.clear();
  }

  public void close()
  {
  }

  public void closeLastIterator()
  {
  }

  public CloseableIterator<T> closeableIterator()
  {
    return iteratorThrow();
  }

  public boolean contains(Object paramObject)
  {
    return this.a.contains(paramObject);
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return this.a.containsAll(paramCollection);
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof EagerForeignCollection))
      return false;
    EagerForeignCollection localEagerForeignCollection = (EagerForeignCollection)paramObject;
    return this.a.equals(localEagerForeignCollection.a);
  }

  public CloseableWrappedIterable<T> getWrappedIterable()
  {
    return this;
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }

  public boolean isEager()
  {
    return true;
  }

  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }

  public CloseableIterator<T> iterator()
  {
    return iteratorThrow();
  }

  public CloseableIterator<T> iteratorThrow()
  {
    return new EagerForeignCollection.1(this);
  }

  public int refreshAll()
  {
    int i = 0;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      i += this.dao.refresh(localObject);
    }
    return i;
  }

  public int refreshCollection()
  {
    this.a = this.dao.query(getPreparedQuery());
    return this.a.size();
  }

  public boolean remove(Object paramObject)
  {
    int i = 1;
    if ((!this.a.remove(paramObject)) || (this.dao == null))
      i = 0;
    while (true)
    {
      return i;
      try
      {
        int j = this.dao.delete(paramObject);
        if (j == i)
          continue;
        return false;
      }
      catch (SQLException localSQLException)
      {
        throw new IllegalStateException("Could not delete data element from dao", localSQLException);
      }
    }
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool = false;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      if (remove(localIterator.next()))
        bool = true;
    return bool;
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    return super.retainAll(paramCollection);
  }

  public int size()
  {
    return this.a.size();
  }

  public Object[] toArray()
  {
    return this.a.toArray();
  }

  public <E> E[] toArray(E[] paramArrayOfE)
  {
    return this.a.toArray(paramArrayOfE);
  }

  public int updateAll()
  {
    int i = 0;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      i += this.dao.update(localObject);
    }
    return i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.EagerForeignCollection
 * JD-Core Version:    0.6.2
 */