package com.j256.ormlite.dao;

import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Log.Level;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.PreparedUpdate;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public class RuntimeExceptionDao<T, ID>
{
  private static final Log.Level a = Log.Level.DEBUG;
  private static final Logger c = LoggerFactory.getLogger(RuntimeExceptionDao.class);
  private Dao<T, ID> b;

  public RuntimeExceptionDao(Dao<T, ID> paramDao)
  {
    this.b = paramDao;
  }

  private static void a(Exception paramException, String paramString)
  {
    c.log(a, paramException, paramString);
  }

  public static <T, ID> RuntimeExceptionDao<T, ID> createDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    return new RuntimeExceptionDao(DaoManager.createDao(paramConnectionSource, paramDatabaseTableConfig));
  }

  public static <T, ID> RuntimeExceptionDao<T, ID> createDao(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    return new RuntimeExceptionDao(DaoManager.createDao(paramConnectionSource, paramClass));
  }

  public <CT> CT callBatchTasks(Callable<CT> paramCallable)
  {
    try
    {
      Object localObject = this.b.callBatchTasks(paramCallable);
      return localObject;
    }
    catch (Exception localException)
    {
      a(localException, "callBatchTasks threw exception on: " + paramCallable);
      throw new RuntimeException(localException);
    }
  }

  public void clearObjectCache()
  {
    this.b.clearObjectCache();
  }

  public void closeLastIterator()
  {
    try
    {
      this.b.closeLastIterator();
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "closeLastIterator threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public void commit(DatabaseConnection paramDatabaseConnection)
  {
    try
    {
      this.b.commit(paramDatabaseConnection);
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "commit(" + paramDatabaseConnection + ") threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public long countOf()
  {
    try
    {
      long l = this.b.countOf();
      return l;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "countOf threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public long countOf(PreparedQuery<T> paramPreparedQuery)
  {
    try
    {
      long l = this.b.countOf(paramPreparedQuery);
      return l;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "countOf threw exception on " + paramPreparedQuery);
      throw new RuntimeException(localSQLException);
    }
  }

  public int create(T paramT)
  {
    try
    {
      int i = this.b.create(paramT);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "create threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public T createIfNotExists(T paramT)
  {
    try
    {
      Object localObject = this.b.createIfNotExists(paramT);
      return localObject;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "createIfNotExists threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public Dao.CreateOrUpdateStatus createOrUpdate(T paramT)
  {
    try
    {
      Dao.CreateOrUpdateStatus localCreateOrUpdateStatus = this.b.createOrUpdate(paramT);
      return localCreateOrUpdateStatus;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "createOrUpdate threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public int delete(PreparedDelete<T> paramPreparedDelete)
  {
    try
    {
      int i = this.b.delete(paramPreparedDelete);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "delete threw exception on: " + paramPreparedDelete);
      throw new RuntimeException(localSQLException);
    }
  }

  public int delete(T paramT)
  {
    try
    {
      int i = this.b.delete(paramT);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "delete threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public int delete(Collection<T> paramCollection)
  {
    try
    {
      int i = this.b.delete(paramCollection);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "delete threw exception on: " + paramCollection);
      throw new RuntimeException(localSQLException);
    }
  }

  public DeleteBuilder<T, ID> deleteBuilder()
  {
    return this.b.deleteBuilder();
  }

  public int deleteById(ID paramID)
  {
    try
    {
      int i = this.b.deleteById(paramID);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "deleteById threw exception on: " + paramID);
      throw new RuntimeException(localSQLException);
    }
  }

  public int deleteIds(Collection<ID> paramCollection)
  {
    try
    {
      int i = this.b.deleteIds(paramCollection);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "deleteIds threw exception on: " + paramCollection);
      throw new RuntimeException(localSQLException);
    }
  }

  public void endThreadConnection(DatabaseConnection paramDatabaseConnection)
  {
    try
    {
      this.b.endThreadConnection(paramDatabaseConnection);
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "endThreadConnection(" + paramDatabaseConnection + ") threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public int executeRaw(String paramString, String[] paramArrayOfString)
  {
    try
    {
      int i = this.b.executeRaw(paramString, paramArrayOfString);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "executeRaw threw exception on: " + paramString);
      throw new RuntimeException(localSQLException);
    }
  }

  public ID extractId(T paramT)
  {
    try
    {
      Object localObject = this.b.extractId(paramT);
      return localObject;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "extractId threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public FieldType findForeignFieldType(Class<?> paramClass)
  {
    return this.b.findForeignFieldType(paramClass);
  }

  public Class<T> getDataClass()
  {
    return this.b.getDataClass();
  }

  public <FT> ForeignCollection<FT> getEmptyForeignCollection(String paramString)
  {
    try
    {
      ForeignCollection localForeignCollection = this.b.getEmptyForeignCollection(paramString);
      return localForeignCollection;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "getEmptyForeignCollection threw exception on " + paramString);
      throw new RuntimeException(localSQLException);
    }
  }

  public ObjectCache getObjectCache()
  {
    return this.b.getObjectCache();
  }

  public RawRowMapper<T> getRawRowMapper()
  {
    return this.b.getRawRowMapper();
  }

  public GenericRowMapper<T> getSelectStarRowMapper()
  {
    try
    {
      GenericRowMapper localGenericRowMapper = this.b.getSelectStarRowMapper();
      return localGenericRowMapper;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "getSelectStarRowMapper threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public CloseableWrappedIterable<T> getWrappedIterable()
  {
    return this.b.getWrappedIterable();
  }

  public CloseableWrappedIterable<T> getWrappedIterable(PreparedQuery<T> paramPreparedQuery)
  {
    return this.b.getWrappedIterable(paramPreparedQuery);
  }

  public boolean idExists(ID paramID)
  {
    try
    {
      boolean bool = this.b.idExists(paramID);
      return bool;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "idExists threw exception on " + paramID);
      throw new RuntimeException(localSQLException);
    }
  }

  @Deprecated
  public boolean isAutoCommit()
  {
    try
    {
      boolean bool = this.b.isAutoCommit();
      return bool;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "isAutoCommit() threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public boolean isAutoCommit(DatabaseConnection paramDatabaseConnection)
  {
    try
    {
      boolean bool = this.b.isAutoCommit(paramDatabaseConnection);
      return bool;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "isAutoCommit(" + paramDatabaseConnection + ") threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public boolean isTableExists()
  {
    try
    {
      boolean bool = this.b.isTableExists();
      return bool;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "isTableExists threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public boolean isUpdatable()
  {
    return this.b.isUpdatable();
  }

  public CloseableIterator<T> iterator()
  {
    return this.b.iterator();
  }

  public CloseableIterator<T> iterator(int paramInt)
  {
    return this.b.iterator(paramInt);
  }

  public CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery)
  {
    try
    {
      CloseableIterator localCloseableIterator = this.b.iterator(paramPreparedQuery);
      return localCloseableIterator;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "iterator threw exception on: " + paramPreparedQuery);
      throw new RuntimeException(localSQLException);
    }
  }

  public CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery, int paramInt)
  {
    try
    {
      CloseableIterator localCloseableIterator = this.b.iterator(paramPreparedQuery, paramInt);
      return localCloseableIterator;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "iterator threw exception on: " + paramPreparedQuery);
      throw new RuntimeException(localSQLException);
    }
  }

  public T mapSelectStarRow(DatabaseResults paramDatabaseResults)
  {
    try
    {
      Object localObject = this.b.mapSelectStarRow(paramDatabaseResults);
      return localObject;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "mapSelectStarRow threw exception on results");
      throw new RuntimeException(localSQLException);
    }
  }

  public String objectToString(T paramT)
  {
    return this.b.objectToString(paramT);
  }

  public boolean objectsEqual(T paramT1, T paramT2)
  {
    try
    {
      boolean bool = this.b.objectsEqual(paramT1, paramT2);
      return bool;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "objectsEqual threw exception on: " + paramT1 + " and " + paramT2);
      throw new RuntimeException(localSQLException);
    }
  }

  public List<T> query(PreparedQuery<T> paramPreparedQuery)
  {
    try
    {
      List localList = this.b.query(paramPreparedQuery);
      return localList;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "query threw exception on: " + paramPreparedQuery);
      throw new RuntimeException(localSQLException);
    }
  }

  public QueryBuilder<T, ID> queryBuilder()
  {
    return this.b.queryBuilder();
  }

  public List<T> queryForAll()
  {
    try
    {
      List localList = this.b.queryForAll();
      return localList;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForAll threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public List<T> queryForEq(String paramString, Object paramObject)
  {
    try
    {
      List localList = this.b.queryForEq(paramString, paramObject);
      return localList;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForEq threw exception on: " + paramString);
      throw new RuntimeException(localSQLException);
    }
  }

  public List<T> queryForFieldValues(Map<String, Object> paramMap)
  {
    try
    {
      List localList = this.b.queryForFieldValues(paramMap);
      return localList;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForFieldValues threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public List<T> queryForFieldValuesArgs(Map<String, Object> paramMap)
  {
    try
    {
      List localList = this.b.queryForFieldValuesArgs(paramMap);
      return localList;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForFieldValuesArgs threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public T queryForFirst(PreparedQuery<T> paramPreparedQuery)
  {
    try
    {
      Object localObject = this.b.queryForFirst(paramPreparedQuery);
      return localObject;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForFirst threw exception on: " + paramPreparedQuery);
      throw new RuntimeException(localSQLException);
    }
  }

  public T queryForId(ID paramID)
  {
    try
    {
      Object localObject = this.b.queryForId(paramID);
      return localObject;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForId threw exception on: " + paramID);
      throw new RuntimeException(localSQLException);
    }
  }

  public List<T> queryForMatching(T paramT)
  {
    try
    {
      List localList = this.b.queryForMatching(paramT);
      return localList;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForMatching threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public List<T> queryForMatchingArgs(T paramT)
  {
    try
    {
      List localList = this.b.queryForMatchingArgs(paramT);
      return localList;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForMatchingArgs threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public T queryForSameId(T paramT)
  {
    try
    {
      Object localObject = this.b.queryForSameId(paramT);
      return localObject;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryForSameId threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public <UO> GenericRawResults<UO> queryRaw(String paramString, RawRowMapper<UO> paramRawRowMapper, String[] paramArrayOfString)
  {
    try
    {
      GenericRawResults localGenericRawResults = this.b.queryRaw(paramString, paramRawRowMapper, paramArrayOfString);
      return localGenericRawResults;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryRaw threw exception on: " + paramString);
      throw new RuntimeException(localSQLException);
    }
  }

  public GenericRawResults<Object[]> queryRaw(String paramString, DataType[] paramArrayOfDataType, String[] paramArrayOfString)
  {
    try
    {
      GenericRawResults localGenericRawResults = this.b.queryRaw(paramString, paramArrayOfDataType, paramArrayOfString);
      return localGenericRawResults;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryRaw threw exception on: " + paramString);
      throw new RuntimeException(localSQLException);
    }
  }

  public GenericRawResults<String[]> queryRaw(String paramString, String[] paramArrayOfString)
  {
    try
    {
      GenericRawResults localGenericRawResults = this.b.queryRaw(paramString, paramArrayOfString);
      return localGenericRawResults;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "queryRaw threw exception on: " + paramString);
      throw new RuntimeException(localSQLException);
    }
  }

  public int refresh(T paramT)
  {
    try
    {
      int i = this.b.refresh(paramT);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "refresh threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public void rollBack(DatabaseConnection paramDatabaseConnection)
  {
    try
    {
      this.b.rollBack(paramDatabaseConnection);
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "rollBack(" + paramDatabaseConnection + ") threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public void setAutoCommit(DatabaseConnection paramDatabaseConnection, boolean paramBoolean)
  {
    try
    {
      this.b.setAutoCommit(paramDatabaseConnection, paramBoolean);
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "setAutoCommit(" + paramDatabaseConnection + "," + paramBoolean + ") threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  @Deprecated
  public void setAutoCommit(boolean paramBoolean)
  {
    try
    {
      this.b.setAutoCommit(paramBoolean);
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "setAutoCommit(" + paramBoolean + ") threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public void setObjectCache(ObjectCache paramObjectCache)
  {
    try
    {
      this.b.setObjectCache(paramObjectCache);
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "setObjectCache threw exception on " + paramObjectCache);
      throw new RuntimeException(localSQLException);
    }
  }

  public void setObjectCache(boolean paramBoolean)
  {
    try
    {
      this.b.setObjectCache(paramBoolean);
      return;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "setObjectCache(" + paramBoolean + ") threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public DatabaseConnection startThreadConnection()
  {
    try
    {
      DatabaseConnection localDatabaseConnection = this.b.startThreadConnection();
      return localDatabaseConnection;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "startThreadConnection() threw exception");
      throw new RuntimeException(localSQLException);
    }
  }

  public int update(PreparedUpdate<T> paramPreparedUpdate)
  {
    try
    {
      int i = this.b.update(paramPreparedUpdate);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "update threw exception on: " + paramPreparedUpdate);
      throw new RuntimeException(localSQLException);
    }
  }

  public int update(T paramT)
  {
    try
    {
      int i = this.b.update(paramT);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "update threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public UpdateBuilder<T, ID> updateBuilder()
  {
    return this.b.updateBuilder();
  }

  public int updateId(T paramT, ID paramID)
  {
    try
    {
      int i = this.b.updateId(paramT, paramID);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "updateId threw exception on: " + paramT);
      throw new RuntimeException(localSQLException);
    }
  }

  public int updateRaw(String paramString, String[] paramArrayOfString)
  {
    try
    {
      int i = this.b.updateRaw(paramString, paramArrayOfString);
      return i;
    }
    catch (SQLException localSQLException)
    {
      a(localSQLException, "updateRaw threw exception on: " + paramString);
      throw new RuntimeException(localSQLException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.RuntimeExceptionDao
 * JD-Core Version:    0.6.2
 */