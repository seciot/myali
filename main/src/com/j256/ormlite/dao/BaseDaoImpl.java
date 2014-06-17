package com.j256.ormlite.dao;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.BaseDaoEnabled;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.PreparedUpdate;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.SelectArg;
import com.j256.ormlite.stmt.SelectIterator;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import com.j256.ormlite.stmt.StatementExecutor;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.stmt.Where;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;

public abstract class BaseDaoImpl<T, ID>
  implements Dao<T, ID>
{
  private static final ThreadLocal<BaseDaoImpl.DaoConfigArray> b = new BaseDaoImpl.1();
  private static ReferenceObjectCache c;
  private boolean a;
  protected ConnectionSource connectionSource;
  private ObjectCache d;
  protected final Class<T> dataClass;
  protected DatabaseType databaseType;
  protected CloseableIterator<T> lastIterator;
  protected StatementExecutor<T, ID> statementExecutor;
  protected DatabaseTableConfig<T> tableConfig;
  protected TableInfo<T, ID> tableInfo;

  protected BaseDaoImpl(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    this(paramConnectionSource, paramDatabaseTableConfig.getDataClass(), paramDatabaseTableConfig);
  }

  protected BaseDaoImpl(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    this(paramConnectionSource, paramClass, null);
  }

  private BaseDaoImpl(ConnectionSource paramConnectionSource, Class<T> paramClass, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    this.dataClass = paramClass;
    this.tableConfig = paramDatabaseTableConfig;
    if (paramConnectionSource != null)
    {
      this.connectionSource = paramConnectionSource;
      initialize();
    }
  }

  protected BaseDaoImpl(Class<T> paramClass)
  {
    this(null, paramClass, null);
  }

  private CloseableIterator<T> a(int paramInt)
  {
    try
    {
      SelectIterator localSelectIterator = this.statementExecutor.buildIterator(this, this.connectionSource, paramInt, this.d);
      return localSelectIterator;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("Could not build iterator for " + this.dataClass, localException);
    }
  }

  private CloseableIterator<T> a(PreparedQuery<T> paramPreparedQuery, int paramInt)
  {
    try
    {
      SelectIterator localSelectIterator = this.statementExecutor.buildIterator(this, this.connectionSource, paramPreparedQuery, this.d, paramInt);
      return localSelectIterator;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Could not build prepared-query iterator for " + this.dataClass, localSQLException);
    }
  }

  private List<T> a(T paramT, boolean paramBoolean)
  {
    checkForInitialized();
    QueryBuilder localQueryBuilder = queryBuilder();
    Where localWhere = localQueryBuilder.where();
    FieldType[] arrayOfFieldType = this.tableInfo.getFieldTypes();
    int i = arrayOfFieldType.length;
    int j = 0;
    int k = 0;
    Object localObject1;
    Object localObject2;
    if (j < i)
    {
      FieldType localFieldType = arrayOfFieldType[j];
      localObject1 = localFieldType.getFieldValueIfNotDefault(paramT);
      if (localObject1 == null)
        break label135;
      if (!paramBoolean)
        break label128;
      localObject2 = new SelectArg(localObject1);
      label77: localWhere.eq(localFieldType.getColumnName(), localObject2);
    }
    label128: label135: for (int m = k + 1; ; m = k)
    {
      j++;
      k = m;
      break;
      if (k == 0)
        return Collections.emptyList();
      localWhere.and(k);
      return localQueryBuilder.query();
      localObject2 = localObject1;
      break label77;
    }
  }

  private List<T> a(Map<String, Object> paramMap, boolean paramBoolean)
  {
    checkForInitialized();
    QueryBuilder localQueryBuilder = queryBuilder();
    Where localWhere = localQueryBuilder.where();
    Iterator localIterator = paramMap.entrySet().iterator();
    Map.Entry localEntry;
    Object localObject1;
    if (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      localObject1 = localEntry.getValue();
      if (!paramBoolean)
        break label125;
    }
    label125: for (Object localObject2 = new SelectArg(localObject1); ; localObject2 = localObject1)
    {
      localWhere.eq((String)localEntry.getKey(), localObject2);
      break;
      if (paramMap.size() == 0)
        return Collections.emptyList();
      localWhere.and(paramMap.size());
      return localQueryBuilder.query();
    }
  }

  public static void clearAllInternalObjectCaches()
  {
    try
    {
      if (c != null)
      {
        c.clearAll();
        c = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  static <T, ID> Dao<T, ID> createDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    return new BaseDaoImpl.5(paramConnectionSource, paramDatabaseTableConfig);
  }

  static <T, ID> Dao<T, ID> createDao(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    return new BaseDaoImpl.4(paramConnectionSource, paramClass);
  }

  public <CT> CT callBatchTasks(Callable<CT> paramCallable)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      boolean bool = this.connectionSource.saveSpecialConnection(localDatabaseConnection);
      Object localObject2 = this.statementExecutor.callBatchTasks(localDatabaseConnection, bool, paramCallable);
      return localObject2;
    }
    finally
    {
      this.connectionSource.clearSpecialConnection(localDatabaseConnection);
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  protected void checkForInitialized()
  {
    if (!this.a)
      throw new IllegalStateException("you must call initialize() before you can use the dao");
  }

  public void clearObjectCache()
  {
    if (this.d != null)
      this.d.clear(this.dataClass);
  }

  public void closeLastIterator()
  {
    if (this.lastIterator != null)
    {
      this.lastIterator.close();
      this.lastIterator = null;
    }
  }

  public CloseableIterator<T> closeableIterator()
  {
    return iterator(-1);
  }

  public void commit(DatabaseConnection paramDatabaseConnection)
  {
    paramDatabaseConnection.commit(null);
  }

  public long countOf()
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
    try
    {
      long l = this.statementExecutor.queryForCountStar(localDatabaseConnection);
      return l;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public long countOf(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    if (paramPreparedQuery.getType() != StatementBuilder.StatementType.SELECT_LONG)
      throw new IllegalArgumentException("Prepared query is not of type " + StatementBuilder.StatementType.SELECT_LONG + ", did you call QueryBuilder.setCountOf(true)?");
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
    try
    {
      long l = this.statementExecutor.queryForCountStar(localDatabaseConnection, paramPreparedQuery);
      return l;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public int create(T paramT)
  {
    checkForInitialized();
    if (paramT == null)
      return 0;
    if ((paramT instanceof BaseDaoEnabled))
      ((BaseDaoEnabled)paramT).setDao(this);
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.create(localDatabaseConnection, paramT, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public T createIfNotExists(T paramT)
  {
    if (paramT == null)
      return null;
    Object localObject = queryForSameId(paramT);
    if (localObject == null)
    {
      create(paramT);
      return paramT;
    }
    return localObject;
  }

  public Dao.CreateOrUpdateStatus createOrUpdate(T paramT)
  {
    if (paramT == null)
      return new Dao.CreateOrUpdateStatus(false, false, 0);
    Object localObject = extractId(paramT);
    if ((localObject == null) || (!idExists(localObject)))
      return new Dao.CreateOrUpdateStatus(true, false, create(paramT));
    return new Dao.CreateOrUpdateStatus(false, true, update(paramT));
  }

  public int delete(PreparedDelete<T> paramPreparedDelete)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.delete(localDatabaseConnection, paramPreparedDelete);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public int delete(T paramT)
  {
    checkForInitialized();
    if (paramT == null)
      return 0;
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.delete(localDatabaseConnection, paramT, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public int delete(Collection<T> paramCollection)
  {
    checkForInitialized();
    if ((paramCollection == null) || (paramCollection.isEmpty()))
      return 0;
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.deleteObjects(localDatabaseConnection, paramCollection, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public DeleteBuilder<T, ID> deleteBuilder()
  {
    checkForInitialized();
    return new DeleteBuilder(this.databaseType, this.tableInfo, this);
  }

  public int deleteById(ID paramID)
  {
    checkForInitialized();
    if (paramID == null)
      return 0;
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.deleteById(localDatabaseConnection, paramID, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public int deleteIds(Collection<ID> paramCollection)
  {
    checkForInitialized();
    if ((paramCollection == null) || (paramCollection.isEmpty()))
      return 0;
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.deleteIds(localDatabaseConnection, paramCollection, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public void endThreadConnection(DatabaseConnection paramDatabaseConnection)
  {
    this.connectionSource.clearSpecialConnection(paramDatabaseConnection);
    this.connectionSource.releaseConnection(paramDatabaseConnection);
  }

  public int executeRaw(String paramString, String[] paramArrayOfString)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.executeRaw(localDatabaseConnection, paramString, paramArrayOfString);
      return i;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Could not run raw execute statement " + paramString, localSQLException);
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public ID extractId(T paramT)
  {
    checkForInitialized();
    FieldType localFieldType = this.tableInfo.getIdField();
    if (localFieldType == null)
      throw new SQLException("Class " + this.dataClass + " does not have an id field");
    return localFieldType.extractJavaFieldValue(paramT);
  }

  public FieldType findForeignFieldType(Class<?> paramClass)
  {
    checkForInitialized();
    for (FieldType localFieldType : this.tableInfo.getFieldTypes())
      if (localFieldType.getType() == paramClass)
        return localFieldType;
    return null;
  }

  public Class<T> getDataClass()
  {
    return this.dataClass;
  }

  public <FT> ForeignCollection<FT> getEmptyForeignCollection(String paramString)
  {
    checkForInitialized();
    for (FieldType localFieldType : this.tableInfo.getFieldTypes())
      if (localFieldType.getColumnName().equals(paramString))
        return localFieldType.buildForeignCollection(null, null, true);
    throw new IllegalArgumentException("Could not find a field named " + paramString);
  }

  public ObjectCache getObjectCache()
  {
    return this.d;
  }

  public RawRowMapper<T> getRawRowMapper()
  {
    return this.statementExecutor.getRawRowMapper();
  }

  public GenericRowMapper<T> getSelectStarRowMapper()
  {
    return this.statementExecutor.getSelectStarRowMapper();
  }

  public DatabaseTableConfig<T> getTableConfig()
  {
    return this.tableConfig;
  }

  public TableInfo<T, ID> getTableInfo()
  {
    return this.tableInfo;
  }

  public CloseableWrappedIterable<T> getWrappedIterable()
  {
    checkForInitialized();
    return new CloseableWrappedIterableImpl(new BaseDaoImpl.2(this));
  }

  public CloseableWrappedIterable<T> getWrappedIterable(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    return new CloseableWrappedIterableImpl(new BaseDaoImpl.3(this, paramPreparedQuery));
  }

  public boolean idExists(ID paramID)
  {
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
    try
    {
      boolean bool = this.statementExecutor.ifExists(localDatabaseConnection, paramID);
      return bool;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public void initialize()
  {
    if (this.a)
      return;
    if (this.connectionSource == null)
      throw new IllegalStateException("connectionSource was never set on " + getClass().getSimpleName());
    this.databaseType = this.connectionSource.getDatabaseType();
    if (this.databaseType == null)
      throw new IllegalStateException("connectionSource is getting a null DatabaseType in " + getClass().getSimpleName());
    if (this.tableConfig == null);
    BaseDaoImpl.DaoConfigArray localDaoConfigArray;
    for (this.tableInfo = new TableInfo(this.connectionSource, this, this.dataClass); ; this.tableInfo = new TableInfo(this.databaseType, this, this.tableConfig))
    {
      this.statementExecutor = new StatementExecutor(this.databaseType, this.tableInfo, this);
      localDaoConfigArray = (BaseDaoImpl.DaoConfigArray)b.get();
      if (localDaoConfigArray.size() <= 0)
        break;
      localDaoConfigArray.addDao(this);
      return;
      this.tableConfig.extractFieldTypes(this.connectionSource);
    }
    localDaoConfigArray.addDao(this);
    for (int i = 0; ; i++)
    {
      BaseDaoImpl localBaseDaoImpl;
      try
      {
        if (i >= localDaoConfigArray.size())
          break;
        localBaseDaoImpl = localDaoConfigArray.get(i);
        DaoManager.registerDao(this.connectionSource, localBaseDaoImpl);
        try
        {
          FieldType[] arrayOfFieldType = localBaseDaoImpl.getTableInfo().getFieldTypes();
          int j = arrayOfFieldType.length;
          for (int k = 0; k < j; k++)
            arrayOfFieldType[k].configDaoInformation(this.connectionSource, localBaseDaoImpl.getDataClass());
        }
        catch (SQLException localSQLException)
        {
          DaoManager.unregisterDao(this.connectionSource, localBaseDaoImpl);
          throw localSQLException;
        }
      }
      finally
      {
        localDaoConfigArray.clear();
      }
      localBaseDaoImpl.a = true;
    }
    localDaoConfigArray.clear();
  }

  public boolean isAutoCommit()
  {
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      boolean bool = isAutoCommit(localDatabaseConnection);
      return bool;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public boolean isAutoCommit(DatabaseConnection paramDatabaseConnection)
  {
    return paramDatabaseConnection.isAutoCommit();
  }

  public boolean isTableExists()
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
    try
    {
      boolean bool = localDatabaseConnection.isTableExists(this.tableInfo.getTableName());
      return bool;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public boolean isUpdatable()
  {
    return this.tableInfo.isUpdatable();
  }

  public CloseableIterator<T> iterator()
  {
    return iterator(-1);
  }

  public CloseableIterator<T> iterator(int paramInt)
  {
    checkForInitialized();
    this.lastIterator = a(paramInt);
    return this.lastIterator;
  }

  public CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery)
  {
    return iterator(paramPreparedQuery, -1);
  }

  public CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery, int paramInt)
  {
    checkForInitialized();
    this.lastIterator = a(paramPreparedQuery, paramInt);
    return this.lastIterator;
  }

  public T mapSelectStarRow(DatabaseResults paramDatabaseResults)
  {
    return this.statementExecutor.getSelectStarRowMapper().mapRow(paramDatabaseResults);
  }

  public String objectToString(T paramT)
  {
    checkForInitialized();
    return this.tableInfo.objectToString(paramT);
  }

  public boolean objectsEqual(T paramT1, T paramT2)
  {
    checkForInitialized();
    for (FieldType localFieldType : this.tableInfo.getFieldTypes())
    {
      Object localObject1 = localFieldType.extractJavaFieldValue(paramT1);
      Object localObject2 = localFieldType.extractJavaFieldValue(paramT2);
      if (!localFieldType.getDataPersister().dataIsEqual(localObject1, localObject2))
        return false;
    }
    return true;
  }

  public List<T> query(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    return this.statementExecutor.query(this.connectionSource, paramPreparedQuery, this.d);
  }

  public QueryBuilder<T, ID> queryBuilder()
  {
    checkForInitialized();
    return new QueryBuilder(this.databaseType, this.tableInfo, this);
  }

  public List<T> queryForAll()
  {
    checkForInitialized();
    return this.statementExecutor.queryForAll(this.connectionSource, this.d);
  }

  public List<T> queryForEq(String paramString, Object paramObject)
  {
    return queryBuilder().where().eq(paramString, paramObject).query();
  }

  public List<T> queryForFieldValues(Map<String, Object> paramMap)
  {
    return a(paramMap, false);
  }

  public List<T> queryForFieldValuesArgs(Map<String, Object> paramMap)
  {
    return a(paramMap, true);
  }

  public T queryForFirst(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
    try
    {
      Object localObject2 = this.statementExecutor.queryForFirst(localDatabaseConnection, paramPreparedQuery, this.d);
      return localObject2;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public T queryForId(ID paramID)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
    try
    {
      Object localObject2 = this.statementExecutor.queryForId(localDatabaseConnection, paramID, this.d);
      return localObject2;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public List<T> queryForMatching(T paramT)
  {
    return a(paramT, false);
  }

  public List<T> queryForMatchingArgs(T paramT)
  {
    return a(paramT, true);
  }

  public T queryForSameId(T paramT)
  {
    checkForInitialized();
    if (paramT == null);
    Object localObject;
    do
    {
      return null;
      localObject = extractId(paramT);
    }
    while (localObject == null);
    return queryForId(localObject);
  }

  public <GR> GenericRawResults<GR> queryRaw(String paramString, RawRowMapper<GR> paramRawRowMapper, String[] paramArrayOfString)
  {
    checkForInitialized();
    try
    {
      GenericRawResults localGenericRawResults = this.statementExecutor.queryRaw(this.connectionSource, paramString, paramRawRowMapper, paramArrayOfString, this.d);
      return localGenericRawResults;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Could not build iterator for " + paramString, localSQLException);
    }
  }

  public GenericRawResults<Object[]> queryRaw(String paramString, DataType[] paramArrayOfDataType, String[] paramArrayOfString)
  {
    checkForInitialized();
    try
    {
      GenericRawResults localGenericRawResults = this.statementExecutor.queryRaw(this.connectionSource, paramString, paramArrayOfDataType, paramArrayOfString, this.d);
      return localGenericRawResults;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Could not build iterator for " + paramString, localSQLException);
    }
  }

  public GenericRawResults<String[]> queryRaw(String paramString, String[] paramArrayOfString)
  {
    checkForInitialized();
    try
    {
      GenericRawResults localGenericRawResults = this.statementExecutor.queryRaw(this.connectionSource, paramString, paramArrayOfString, this.d);
      return localGenericRawResults;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Could not build iterator for " + paramString, localSQLException);
    }
  }

  public int refresh(T paramT)
  {
    checkForInitialized();
    if (paramT == null)
      return 0;
    if ((paramT instanceof BaseDaoEnabled))
      ((BaseDaoEnabled)paramT).setDao(this);
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadOnlyConnection();
    try
    {
      int i = this.statementExecutor.refresh(localDatabaseConnection, paramT, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public void rollBack(DatabaseConnection paramDatabaseConnection)
  {
    paramDatabaseConnection.rollback(null);
  }

  public void setAutoCommit(DatabaseConnection paramDatabaseConnection, boolean paramBoolean)
  {
    paramDatabaseConnection.setAutoCommit(paramBoolean);
  }

  public void setAutoCommit(boolean paramBoolean)
  {
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      setAutoCommit(localDatabaseConnection, paramBoolean);
      return;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public void setConnectionSource(ConnectionSource paramConnectionSource)
  {
    this.connectionSource = paramConnectionSource;
  }

  public void setObjectCache(ObjectCache paramObjectCache)
  {
    if (paramObjectCache == null)
    {
      if (this.d != null)
      {
        this.d.clear(this.dataClass);
        this.d = null;
      }
      return;
    }
    if ((this.d != null) && (this.d != paramObjectCache))
      this.d.clear(this.dataClass);
    if (this.tableInfo.getIdField() == null)
      throw new SQLException("Class " + this.dataClass + " must have an id field to enable the object cache");
    this.d = paramObjectCache;
    this.d.registerClass(this.dataClass);
  }

  public void setObjectCache(boolean paramBoolean)
  {
    if (paramBoolean)
      if (this.d == null)
        if (this.tableInfo.getIdField() == null)
          throw new SQLException("Class " + this.dataClass + " must have an id field to enable the object cache");
    while (this.d == null)
      synchronized (getClass())
      {
        if (c == null)
          c = ReferenceObjectCache.makeWeakCache();
        this.d = c;
        this.d.registerClass(this.dataClass);
        return;
      }
    this.d.clear(this.dataClass);
    this.d = null;
  }

  public void setTableConfig(DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    this.tableConfig = paramDatabaseTableConfig;
  }

  public DatabaseConnection startThreadConnection()
  {
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    this.connectionSource.saveSpecialConnection(localDatabaseConnection);
    return localDatabaseConnection;
  }

  public int update(PreparedUpdate<T> paramPreparedUpdate)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.update(localDatabaseConnection, paramPreparedUpdate);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public int update(T paramT)
  {
    checkForInitialized();
    if (paramT == null)
      return 0;
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.update(localDatabaseConnection, paramT, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public UpdateBuilder<T, ID> updateBuilder()
  {
    checkForInitialized();
    return new UpdateBuilder(this.databaseType, this.tableInfo, this);
  }

  public int updateId(T paramT, ID paramID)
  {
    checkForInitialized();
    if (paramT == null)
      return 0;
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.updateId(localDatabaseConnection, paramT, paramID, this.d);
      return i;
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public int updateRaw(String paramString, String[] paramArrayOfString)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = this.connectionSource.getReadWriteConnection();
    try
    {
      int i = this.statementExecutor.updateRaw(localDatabaseConnection, paramString, paramArrayOfString);
      return i;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Could not run raw update statement " + paramString, localSQLException);
    }
    finally
    {
      this.connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.BaseDaoImpl
 * JD-Core Version:    0.6.2
 */