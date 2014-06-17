package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;

public class SelectIterator<T, ID>
  implements CloseableIterator<T>
{
  private static final Logger a = LoggerFactory.getLogger(SelectIterator.class);
  private final Class<?> b;
  private final Dao<T, ID> c;
  private final ConnectionSource d;
  private final DatabaseConnection e;
  private final CompiledStatement f;
  private final DatabaseResults g;
  private final GenericRowMapper<T> h;
  private final String i;
  private boolean j = true;
  private boolean k = false;
  private boolean l = false;
  private T m = null;
  private int n = 0;

  public SelectIterator(Class<?> paramClass, Dao<T, ID> paramDao, GenericRowMapper<T> paramGenericRowMapper, ConnectionSource paramConnectionSource, DatabaseConnection paramDatabaseConnection, CompiledStatement paramCompiledStatement, String paramString, ObjectCache paramObjectCache)
  {
    this.b = paramClass;
    this.c = paramDao;
    this.h = paramGenericRowMapper;
    this.d = paramConnectionSource;
    this.e = paramDatabaseConnection;
    this.f = paramCompiledStatement;
    this.g = paramCompiledStatement.runQuery(paramObjectCache);
    this.i = paramString;
    if (paramString != null)
      a.debug("starting iterator @{} for '{}'", Integer.valueOf(hashCode()), paramString);
  }

  private T a()
  {
    this.m = this.h.mapRow(this.g);
    this.l = false;
    this.n = (1 + this.n);
    return this.m;
  }

  public void close()
  {
    if (!this.k)
    {
      this.f.close();
      this.k = true;
      this.m = null;
      if (this.i != null)
        a.debug("closed iterator @{} after {} rows", Integer.valueOf(hashCode()), Integer.valueOf(this.n));
      this.d.releaseConnection(this.e);
    }
  }

  public T current()
  {
    if (this.k)
      return null;
    if (this.j)
      return first();
    return a();
  }

  public T first()
  {
    if (this.k);
    do
    {
      return null;
      this.j = false;
    }
    while (!this.g.first());
    return a();
  }

  public DatabaseResults getRawResults()
  {
    return this.g;
  }

  public boolean hasNext()
  {
    try
    {
      boolean bool = hasNextThrow();
      return bool;
    }
    catch (SQLException localSQLException1)
    {
      this.m = null;
    }
    try
    {
      close();
      label17: throw new IllegalStateException("Errors getting more results of " + this.b, localSQLException1);
    }
    catch (SQLException localSQLException2)
    {
      break label17;
    }
  }

  public boolean hasNextThrow()
  {
    if (this.k)
      return false;
    if (this.l)
      return true;
    if (this.j)
      this.j = false;
    for (boolean bool = this.g.first(); ; bool = this.g.next())
    {
      if (!bool)
        close();
      this.l = true;
      return bool;
    }
  }

  public T moveRelative(int paramInt)
  {
    if (this.k);
    do
    {
      return null;
      this.j = false;
    }
    while (!this.g.moveRelative(paramInt));
    return a();
  }

  public void moveToNext()
  {
    this.m = null;
    this.j = false;
    this.l = false;
  }

  public T next()
  {
    try
    {
      Object localObject = nextThrow();
      if (localObject != null)
        return localObject;
      localThrowable = null;
      this.m = null;
    }
    catch (SQLException localSQLException1)
    {
      try
      {
        Throwable localThrowable;
        close();
        label22: throw new IllegalStateException("Could not get next result for " + this.b, localThrowable);
        localSQLException1 = localSQLException1;
      }
      catch (SQLException localSQLException2)
      {
        break label22;
      }
    }
  }

  public T nextThrow()
  {
    if (this.k)
      return null;
    if (!this.l)
    {
      if (this.j)
        this.j = false;
      for (boolean bool = this.g.first(); !bool; bool = this.g.next())
      {
        this.j = false;
        return null;
      }
    }
    this.j = false;
    return a();
  }

  public T previous()
  {
    if (this.k);
    do
    {
      return null;
      this.j = false;
    }
    while (!this.g.previous());
    return a();
  }

  public void remove()
  {
    try
    {
      removeThrow();
      return;
    }
    catch (SQLException localSQLException1)
    {
    }
    try
    {
      close();
      label10: throw new IllegalStateException("Could not delete " + this.b + " object " + this.m, localSQLException1);
    }
    catch (SQLException localSQLException2)
    {
      break label10;
    }
  }

  public void removeThrow()
  {
    if (this.m == null)
      throw new IllegalStateException("No last " + this.b + " object to remove. Must be called after a call to next.");
    if (this.c == null)
      throw new IllegalStateException("Cannot remove " + this.b + " object because classDao not initialized");
    try
    {
      this.c.delete(this.m);
      return;
    }
    finally
    {
      this.m = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.SelectIterator
 * JD-Core Version:    0.6.2
 */