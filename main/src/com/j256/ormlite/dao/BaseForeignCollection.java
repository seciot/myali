package com.j256.ormlite.dao;

import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.SelectArg;
import com.j256.ormlite.stmt.Where;
import com.j256.ormlite.stmt.mapped.MappedPreparedStmt;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;

public abstract class BaseForeignCollection<T, ID>
  implements ForeignCollection<T>, Serializable
{
  private final transient String a;
  private final transient Object b;
  private transient PreparedQuery<T> c;
  private final transient String d;
  protected final transient Dao<T, ID> dao;
  private final transient Object e;

  protected BaseForeignCollection(Dao<T, ID> paramDao, Object paramObject1, Object paramObject2, String paramString1, String paramString2)
  {
    this.dao = paramDao;
    this.a = paramString1;
    this.b = paramObject2;
    this.d = paramString2;
    this.e = paramObject1;
  }

  public boolean add(T paramT)
  {
    if (this.dao == null)
      return false;
    try
    {
      this.dao.create(paramT);
      return true;
    }
    catch (SQLException localSQLException)
    {
      throw new IllegalStateException("Could not create data element in dao", localSQLException);
    }
  }

  public boolean addAll(Collection<? extends T> paramCollection)
  {
    Dao localDao = this.dao;
    boolean bool = false;
    if (localDao == null)
      return bool;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      try
      {
        this.dao.create(localObject);
        bool = true;
      }
      catch (SQLException localSQLException)
      {
        throw new IllegalStateException("Could not create data elements in dao", localSQLException);
      }
    }
  }

  // ERROR //
  public void clear()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 28	com/j256/ormlite/dao/BaseForeignCollection:dao	Lcom/j256/ormlite/dao/Dao;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: invokevirtual 78	com/j256/ormlite/dao/BaseForeignCollection:closeableIterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   12: astore_1
    //   13: aload_1
    //   14: invokeinterface 81 1 0
    //   19: ifeq +28 -> 47
    //   22: aload_1
    //   23: invokeinterface 82 1 0
    //   28: pop
    //   29: aload_1
    //   30: invokeinterface 85 1 0
    //   35: goto -22 -> 13
    //   38: astore_2
    //   39: aload_1
    //   40: invokeinterface 88 1 0
    //   45: aload_2
    //   46: athrow
    //   47: aload_1
    //   48: invokeinterface 88 1 0
    //   53: return
    //   54: astore 4
    //   56: return
    //   57: astore_3
    //   58: goto -13 -> 45
    //
    // Exception table:
    //   from	to	target	type
    //   13	35	38	finally
    //   47	53	54	java/sql/SQLException
    //   39	45	57	java/sql/SQLException
  }

  protected PreparedQuery<T> getPreparedQuery()
  {
    if (this.dao == null)
      return null;
    if (this.c == null)
    {
      SelectArg localSelectArg = new SelectArg();
      localSelectArg.setValue(this.b);
      QueryBuilder localQueryBuilder = this.dao.queryBuilder();
      if (this.d != null)
        localQueryBuilder.orderBy(this.d, true);
      this.c = localQueryBuilder.where().eq(this.a, localSelectArg).prepare();
      if ((this.c instanceof MappedPreparedStmt))
        ((MappedPreparedStmt)this.c).setParentInformation(this.e, this.b);
    }
    return this.c;
  }

  public int refresh(T paramT)
  {
    if (this.dao == null)
      return 0;
    return this.dao.refresh(paramT);
  }

  public abstract boolean remove(Object paramObject);

  public abstract boolean removeAll(Collection<?> paramCollection);

  public boolean retainAll(Collection<?> paramCollection)
  {
    boolean bool = false;
    if (this.dao == null)
      return false;
    CloseableIterator localCloseableIterator = closeableIterator();
    try
    {
      while (localCloseableIterator.hasNext())
        if (!paramCollection.contains(localCloseableIterator.next()))
        {
          localCloseableIterator.remove();
          bool = true;
        }
      try
      {
        localCloseableIterator.close();
        return bool;
      }
      catch (SQLException localSQLException2)
      {
        return bool;
      }
    }
    finally
    {
    }
    try
    {
      localCloseableIterator.close();
      label71: throw localObject;
    }
    catch (SQLException localSQLException1)
    {
      break label71;
    }
  }

  public int update(T paramT)
  {
    if (this.dao == null)
      return 0;
    return this.dao.update(paramT);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.BaseForeignCollection
 * JD-Core Version:    0.6.2
 */