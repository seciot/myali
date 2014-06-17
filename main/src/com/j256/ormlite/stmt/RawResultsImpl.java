package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import java.util.ArrayList;
import java.util.List;

public class RawResultsImpl<T>
  implements GenericRawResults<T>
{
  private SelectIterator<T, Void> a;
  private final String[] b;

  public RawResultsImpl(ConnectionSource paramConnectionSource, DatabaseConnection paramDatabaseConnection, String paramString, Class<?> paramClass, CompiledStatement paramCompiledStatement, String[] paramArrayOfString, GenericRowMapper<T> paramGenericRowMapper, ObjectCache paramObjectCache)
  {
    this.a = new SelectIterator(paramClass, null, paramGenericRowMapper, paramConnectionSource, paramDatabaseConnection, paramCompiledStatement, paramString, paramObjectCache);
    this.b = paramArrayOfString;
  }

  public void close()
  {
    if (this.a != null)
    {
      this.a.close();
      this.a = null;
    }
  }

  public CloseableIterator<T> closeableIterator()
  {
    return this.a;
  }

  public String[] getColumnNames()
  {
    return this.b;
  }

  public T getFirstResult()
  {
    try
    {
      if (this.a.hasNextThrow())
      {
        Object localObject2 = this.a.nextThrow();
        return localObject2;
      }
      return null;
    }
    finally
    {
      close();
    }
  }

  public int getNumberColumns()
  {
    return this.b.length;
  }

  public List<T> getResults()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      if (this.a.hasNext())
        localArrayList.add(this.a.next());
    }
    finally
    {
      this.a.close();
    }
    return localArrayList;
  }

  public CloseableIterator<T> iterator()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.RawResultsImpl
 * JD-Core Version:    0.6.2
 */