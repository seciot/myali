package com.j256.ormlite.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class LazyForeignCollection<T, ID> extends BaseForeignCollection<T, ID>
  implements ForeignCollection<T>, Serializable
{
  private transient CloseableIterator<T> a;

  public LazyForeignCollection(Dao<T, ID> paramDao, Object paramObject1, Object paramObject2, String paramString1, String paramString2)
  {
    super(paramDao, paramObject1, paramObject2, paramString1, paramString2);
  }

  public void closeLastIterator()
  {
    if (this.a != null)
    {
      this.a.close();
      this.a = null;
    }
  }

  public CloseableIterator<T> closeableIterator()
  {
    try
    {
      CloseableIterator localCloseableIterator = iteratorThrow();
      return localCloseableIterator;
    }
    catch (SQLException localSQLException)
    {
      throw new IllegalStateException("Could not build lazy iterator for " + this.dao.getDataClass(), localSQLException);
    }
  }

  // ERROR //
  public boolean contains(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 67	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_2
    //   5: aload_2
    //   6: invokeinterface 71 1 0
    //   11: ifeq +28 -> 39
    //   14: aload_2
    //   15: invokeinterface 75 1 0
    //   20: aload_1
    //   21: invokevirtual 80	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   24: istore 6
    //   26: iload 6
    //   28: ifeq -23 -> 5
    //   31: aload_2
    //   32: invokeinterface 25 1 0
    //   37: iconst_1
    //   38: ireturn
    //   39: aload_2
    //   40: invokeinterface 25 1 0
    //   45: iconst_0
    //   46: ireturn
    //   47: astore_3
    //   48: aload_2
    //   49: invokeinterface 25 1 0
    //   54: aload_3
    //   55: athrow
    //   56: astore 7
    //   58: goto -21 -> 37
    //   61: astore 5
    //   63: goto -18 -> 45
    //   66: astore 4
    //   68: goto -14 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   5	26	47	finally
    //   31	37	56	java/sql/SQLException
    //   39	45	61	java/sql/SQLException
    //   48	54	66	java/sql/SQLException
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    HashSet localHashSet = new HashSet(paramCollection);
    CloseableIterator localCloseableIterator = iterator();
    try
    {
      while (localCloseableIterator.hasNext())
        localHashSet.remove(localCloseableIterator.next());
    }
    finally
    {
    }
    try
    {
      localCloseableIterator.close();
      label47: throw localObject;
      boolean bool = localHashSet.isEmpty();
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
    catch (SQLException localSQLException1)
    {
      break label47;
    }
  }

  public boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }

  public CloseableWrappedIterable<T> getWrappedIterable()
  {
    return new CloseableWrappedIterableImpl(new LazyForeignCollection.1(this));
  }

  public int hashCode()
  {
    return super.hashCode();
  }

  public boolean isEager()
  {
    return false;
  }

  // ERROR //
  public boolean isEmpty()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 67	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_1
    //   5: aload_1
    //   6: invokeinterface 71 1 0
    //   11: istore 4
    //   13: iload 4
    //   15: ifne +15 -> 30
    //   18: iconst_1
    //   19: istore 5
    //   21: aload_1
    //   22: invokeinterface 25 1 0
    //   27: iload 5
    //   29: ireturn
    //   30: iconst_0
    //   31: istore 5
    //   33: goto -12 -> 21
    //   36: astore_2
    //   37: aload_1
    //   38: invokeinterface 25 1 0
    //   43: aload_2
    //   44: athrow
    //   45: astore 6
    //   47: iload 5
    //   49: ireturn
    //   50: astore_3
    //   51: goto -8 -> 43
    //
    // Exception table:
    //   from	to	target	type
    //   5	13	36	finally
    //   21	27	45	java/sql/SQLException
    //   37	43	50	java/sql/SQLException
  }

  public CloseableIterator<T> iterator()
  {
    return closeableIterator();
  }

  public CloseableIterator<T> iteratorThrow()
  {
    this.a = seperateIteratorThrow();
    return this.a;
  }

  public int refreshAll()
  {
    throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
  }

  public int refreshCollection()
  {
    return 0;
  }

  // ERROR //
  public boolean remove(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 67	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_2
    //   5: aload_2
    //   6: invokeinterface 71 1 0
    //   11: ifeq +30 -> 41
    //   14: aload_2
    //   15: invokeinterface 75 1 0
    //   20: aload_1
    //   21: invokevirtual 80	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   24: ifeq -19 -> 5
    //   27: aload_2
    //   28: invokeinterface 127 1 0
    //   33: aload_2
    //   34: invokeinterface 25 1 0
    //   39: iconst_1
    //   40: ireturn
    //   41: aload_2
    //   42: invokeinterface 25 1 0
    //   47: iconst_0
    //   48: ireturn
    //   49: astore_3
    //   50: aload_2
    //   51: invokeinterface 25 1 0
    //   56: aload_3
    //   57: athrow
    //   58: astore 6
    //   60: goto -21 -> 39
    //   63: astore 5
    //   65: goto -18 -> 47
    //   68: astore 4
    //   70: goto -14 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   5	33	49	finally
    //   33	39	58	java/sql/SQLException
    //   41	47	63	java/sql/SQLException
    //   50	56	68	java/sql/SQLException
  }

  // ERROR //
  public boolean removeAll(Collection<?> paramCollection)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual 67	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   6: astore_3
    //   7: aload_3
    //   8: invokeinterface 71 1 0
    //   13: ifeq +29 -> 42
    //   16: aload_1
    //   17: aload_3
    //   18: invokeinterface 75 1 0
    //   23: invokeinterface 132 2 0
    //   28: ifeq -21 -> 7
    //   31: aload_3
    //   32: invokeinterface 127 1 0
    //   37: iconst_1
    //   38: istore_2
    //   39: goto -32 -> 7
    //   42: aload_3
    //   43: invokeinterface 25 1 0
    //   48: iload_2
    //   49: ireturn
    //   50: astore 4
    //   52: aload_3
    //   53: invokeinterface 25 1 0
    //   58: aload 4
    //   60: athrow
    //   61: astore 6
    //   63: iload_2
    //   64: ireturn
    //   65: astore 5
    //   67: goto -9 -> 58
    //
    // Exception table:
    //   from	to	target	type
    //   7	37	50	finally
    //   42	48	61	java/sql/SQLException
    //   52	58	65	java/sql/SQLException
  }

  public CloseableIterator<T> seperateIteratorThrow()
  {
    if (this.dao == null)
      throw new IllegalStateException("Internal DAO object is null.  Lazy collections cannot be used if they have been deserialized.");
    return this.dao.iterator(getPreparedQuery());
  }

  // ERROR //
  public int size()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 67	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_1
    //   5: iconst_0
    //   6: istore_2
    //   7: aload_1
    //   8: invokeinterface 71 1 0
    //   13: ifeq +15 -> 28
    //   16: aload_1
    //   17: invokeinterface 146 1 0
    //   22: iinc 2 1
    //   25: goto -18 -> 7
    //   28: aload_1
    //   29: invokeinterface 25 1 0
    //   34: iload_2
    //   35: ireturn
    //   36: astore_3
    //   37: aload_1
    //   38: invokeinterface 25 1 0
    //   43: aload_3
    //   44: athrow
    //   45: astore 5
    //   47: iload_2
    //   48: ireturn
    //   49: astore 4
    //   51: goto -8 -> 43
    //
    // Exception table:
    //   from	to	target	type
    //   7	22	36	finally
    //   28	34	45	java/sql/SQLException
    //   37	43	49	java/sql/SQLException
  }

  public Object[] toArray()
  {
    ArrayList localArrayList = new ArrayList();
    CloseableIterator localCloseableIterator = iterator();
    try
    {
      while (localCloseableIterator.hasNext())
        localArrayList.add(localCloseableIterator.next());
    }
    finally
    {
    }
    try
    {
      localCloseableIterator.close();
      label45: throw localObject;
      Object[] arrayOfObject = localArrayList.toArray();
      try
      {
        localCloseableIterator.close();
        return arrayOfObject;
      }
      catch (SQLException localSQLException2)
      {
        return arrayOfObject;
      }
    }
    catch (SQLException localSQLException1)
    {
      break label45;
    }
  }

  public <E> E[] toArray(E[] paramArrayOfE)
  {
    CloseableIterator localCloseableIterator = iterator();
    int i = 0;
    ArrayList localArrayList = null;
    while (true)
    {
      try
      {
        if (localCloseableIterator.hasNext())
        {
          Object localObject2 = localCloseableIterator.next();
          if (i >= paramArrayOfE.length)
          {
            if (localArrayList == null)
            {
              localArrayList = new ArrayList();
              int j = paramArrayOfE.length;
              int k = 0;
              if (k < j)
              {
                localArrayList.add(paramArrayOfE[k]);
                k++;
                continue;
              }
            }
            localArrayList.add(localObject2);
          }
          else
          {
            paramArrayOfE[i] = localObject2;
          }
        }
      }
      finally
      {
        try
        {
          localCloseableIterator.close();
          throw localObject1;
          try
          {
            localCloseableIterator.close();
            if (localArrayList == null)
            {
              if (i < -1 + paramArrayOfE.length)
                paramArrayOfE[i] = null;
              return paramArrayOfE;
            }
            return localArrayList.toArray(paramArrayOfE);
          }
          catch (SQLException localSQLException2)
          {
            continue;
          }
        }
        catch (SQLException localSQLException1)
        {
          continue;
        }
      }
      i++;
    }
  }

  public int updateAll()
  {
    throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.LazyForeignCollection
 * JD-Core Version:    0.6.2
 */