package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.stmt.mapped.MappedCreate;
import com.j256.ormlite.stmt.mapped.MappedDelete;
import com.j256.ormlite.stmt.mapped.MappedDeleteCollection;
import com.j256.ormlite.stmt.mapped.MappedQueryForId;
import com.j256.ormlite.stmt.mapped.MappedRefresh;
import com.j256.ormlite.stmt.mapped.MappedUpdate;
import com.j256.ormlite.stmt.mapped.MappedUpdateId;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class StatementExecutor<T, ID>
  implements GenericRowMapper<String[]>
{
  private static Logger a = LoggerFactory.getLogger(StatementExecutor.class);
  private static final FieldType[] b = new FieldType[0];
  private final DatabaseType c;
  private final TableInfo<T, ID> d;
  private final Dao<T, ID> e;
  private MappedQueryForId<T, ID> f;
  private PreparedQuery<T> g;
  private MappedCreate<T, ID> h;
  private MappedUpdate<T, ID> i;
  private MappedUpdateId<T, ID> j;
  private MappedDelete<T, ID> k;
  private MappedRefresh<T, ID> l;
  private String m;
  private String n;
  private FieldType[] o;
  private RawRowMapper<T> p;

  public StatementExecutor(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao)
  {
    this.c = paramDatabaseType;
    this.d = paramTableInfo;
    this.e = paramDao;
  }

  private void a()
  {
    if (this.g == null)
      this.g = new QueryBuilder(this.c, this.d, this.e).prepare();
  }

  private static void a(CompiledStatement paramCompiledStatement, String[] paramArrayOfString)
  {
    for (int i1 = 0; i1 < paramArrayOfString.length; i1++)
      paramCompiledStatement.setObject(i1, paramArrayOfString[i1], SqlType.STRING);
  }

  private static String[] a(CompiledStatement paramCompiledStatement)
  {
    int i1 = paramCompiledStatement.getColumnCount();
    String[] arrayOfString = new String[i1];
    for (int i2 = 0; i2 < i1; i2++)
      arrayOfString[i2] = paramCompiledStatement.getColumnName(i2);
    return arrayOfString;
  }

  public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> paramBaseDaoImpl, ConnectionSource paramConnectionSource, int paramInt, ObjectCache paramObjectCache)
  {
    a();
    return buildIterator(paramBaseDaoImpl, paramConnectionSource, this.g, paramObjectCache, paramInt);
  }

  public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> paramBaseDaoImpl, ConnectionSource paramConnectionSource, PreparedStmt<T> paramPreparedStmt, ObjectCache paramObjectCache, int paramInt)
  {
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    CompiledStatement localCompiledStatement = null;
    try
    {
      localCompiledStatement = paramPreparedStmt.compile(localDatabaseConnection, StatementBuilder.StatementType.SELECT, paramInt);
      SelectIterator localSelectIterator = new SelectIterator(this.d.getDataClass(), paramBaseDaoImpl, paramPreparedStmt, paramConnectionSource, localDatabaseConnection, localCompiledStatement, paramPreparedStmt.getStatement(), paramObjectCache);
      return localSelectIterator;
    }
    finally
    {
      if (localCompiledStatement != null)
        localCompiledStatement.close();
      if (localDatabaseConnection != null)
        paramConnectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  // ERROR //
  public <CT> CT callBatchTasks(DatabaseConnection paramDatabaseConnection, boolean paramBoolean, java.util.concurrent.Callable<CT> paramCallable)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: getfield 67	com/j256/ormlite/stmt/StatementExecutor:c	Lcom/j256/ormlite/db/DatabaseType;
    //   7: invokeinterface 164 1 0
    //   12: ifeq +18 -> 30
    //   15: aload_1
    //   16: iload_2
    //   17: aload_0
    //   18: getfield 67	com/j256/ormlite/stmt/StatementExecutor:c	Lcom/j256/ormlite/db/DatabaseType;
    //   21: aload_3
    //   22: invokestatic 170	com/j256/ormlite/misc/TransactionManager:callInTransaction	(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   25: astore 10
    //   27: aload 10
    //   29: areturn
    //   30: aload_1
    //   31: invokeinterface 175 1 0
    //   36: istore 6
    //   38: iconst_0
    //   39: istore 4
    //   41: iload 6
    //   43: ifeq +38 -> 81
    //   46: aload_1
    //   47: invokeinterface 178 1 0
    //   52: istore 4
    //   54: iload 4
    //   56: ifeq +25 -> 81
    //   59: aload_1
    //   60: iconst_0
    //   61: invokeinterface 182 2 0
    //   66: getstatic 57	com/j256/ormlite/stmt/StatementExecutor:a	Lcom/j256/ormlite/logger/Logger;
    //   69: ldc 184
    //   71: aload_0
    //   72: getfield 69	com/j256/ormlite/stmt/StatementExecutor:d	Lcom/j256/ormlite/table/TableInfo;
    //   75: invokevirtual 187	com/j256/ormlite/table/TableInfo:getTableName	()Ljava/lang/String;
    //   78: invokevirtual 193	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   81: aload_3
    //   82: invokeinterface 199 1 0
    //   87: astore 9
    //   89: aload 9
    //   91: astore 10
    //   93: iload 4
    //   95: ifeq -68 -> 27
    //   98: aload_1
    //   99: iconst_1
    //   100: invokeinterface 182 2 0
    //   105: getstatic 57	com/j256/ormlite/stmt/StatementExecutor:a	Lcom/j256/ormlite/logger/Logger;
    //   108: ldc 201
    //   110: aload_0
    //   111: getfield 69	com/j256/ormlite/stmt/StatementExecutor:d	Lcom/j256/ormlite/table/TableInfo;
    //   114: invokevirtual 187	com/j256/ormlite/table/TableInfo:getTableName	()Ljava/lang/String;
    //   117: invokevirtual 193	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   120: aload 10
    //   122: areturn
    //   123: astore 8
    //   125: aload 8
    //   127: athrow
    //   128: astore 5
    //   130: iload 4
    //   132: ifeq +25 -> 157
    //   135: aload_1
    //   136: iconst_1
    //   137: invokeinterface 182 2 0
    //   142: getstatic 57	com/j256/ormlite/stmt/StatementExecutor:a	Lcom/j256/ormlite/logger/Logger;
    //   145: ldc 201
    //   147: aload_0
    //   148: getfield 69	com/j256/ormlite/stmt/StatementExecutor:d	Lcom/j256/ormlite/table/TableInfo;
    //   151: invokevirtual 187	com/j256/ormlite/table/TableInfo:getTableName	()Ljava/lang/String;
    //   154: invokevirtual 193	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   157: aload 5
    //   159: athrow
    //   160: astore 7
    //   162: ldc 203
    //   164: aload 7
    //   166: invokestatic 209	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   169: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   81	89	123	java/sql/SQLException
    //   30	38	128	finally
    //   46	54	128	finally
    //   59	81	128	finally
    //   81	89	128	finally
    //   125	128	128	finally
    //   162	170	128	finally
    //   81	89	160	java/lang/Exception
  }

  public int create(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (this.h == null)
      this.h = MappedCreate.build(this.c, this.d);
    return this.h.insert(this.c, paramDatabaseConnection, paramT, paramObjectCache);
  }

  public int delete(DatabaseConnection paramDatabaseConnection, PreparedDelete<T> paramPreparedDelete)
  {
    CompiledStatement localCompiledStatement = paramPreparedDelete.compile(paramDatabaseConnection, StatementBuilder.StatementType.DELETE);
    try
    {
      int i1 = localCompiledStatement.runUpdate();
      return i1;
    }
    finally
    {
      localCompiledStatement.close();
    }
  }

  public int delete(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (this.k == null)
      this.k = MappedDelete.build(this.c, this.d);
    return this.k.delete(paramDatabaseConnection, paramT, paramObjectCache);
  }

  public int deleteById(DatabaseConnection paramDatabaseConnection, ID paramID, ObjectCache paramObjectCache)
  {
    if (this.k == null)
      this.k = MappedDelete.build(this.c, this.d);
    return this.k.deleteById(paramDatabaseConnection, paramID, paramObjectCache);
  }

  public int deleteIds(DatabaseConnection paramDatabaseConnection, Collection<ID> paramCollection, ObjectCache paramObjectCache)
  {
    return MappedDeleteCollection.deleteIds(this.c, this.d, paramDatabaseConnection, paramCollection, paramObjectCache);
  }

  public int deleteObjects(DatabaseConnection paramDatabaseConnection, Collection<T> paramCollection, ObjectCache paramObjectCache)
  {
    return MappedDeleteCollection.deleteObjects(this.c, this.d, paramDatabaseConnection, paramCollection, paramObjectCache);
  }

  public int executeRaw(DatabaseConnection paramDatabaseConnection, String paramString, String[] paramArrayOfString)
  {
    a.debug("running raw execute statement: {}", paramString);
    if (paramArrayOfString.length > 0)
      a.trace("execute arguments: {}", paramArrayOfString);
    CompiledStatement localCompiledStatement = paramDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.EXECUTE, b);
    try
    {
      a(localCompiledStatement, paramArrayOfString);
      int i1 = localCompiledStatement.runExecute();
      return i1;
    }
    finally
    {
      localCompiledStatement.close();
    }
  }

  public RawRowMapper<T> getRawRowMapper()
  {
    if (this.p == null)
      this.p = new RawRowMapperImpl(this.d);
    return this.p;
  }

  public GenericRowMapper<T> getSelectStarRowMapper()
  {
    a();
    return this.g;
  }

  public boolean ifExists(DatabaseConnection paramDatabaseConnection, ID paramID)
  {
    if (this.n == null)
    {
      QueryBuilder localQueryBuilder = new QueryBuilder(this.c, this.d, this.e);
      localQueryBuilder.selectRaw(new String[] { "COUNT(*)" });
      localQueryBuilder.where().eq(this.d.getIdField().getColumnName(), new SelectArg());
      this.n = localQueryBuilder.prepareStatementString();
      FieldType[] arrayOfFieldType = new FieldType[1];
      arrayOfFieldType[0] = this.d.getIdField();
      this.o = arrayOfFieldType;
    }
    long l1 = paramDatabaseConnection.queryForLong(this.n, new Object[] { paramID }, this.o);
    a.debug("query of '{}' returned {}", this.n, Long.valueOf(l1));
    return l1 != 0L;
  }

  public String[] mapRow(DatabaseResults paramDatabaseResults)
  {
    int i1 = paramDatabaseResults.getColumnCount();
    String[] arrayOfString = new String[i1];
    for (int i2 = 0; i2 < i1; i2++)
      arrayOfString[i2] = paramDatabaseResults.getString(i2);
    return arrayOfString;
  }

  public List<T> query(ConnectionSource paramConnectionSource, PreparedStmt<T> paramPreparedStmt, ObjectCache paramObjectCache)
  {
    SelectIterator localSelectIterator = buildIterator(null, paramConnectionSource, paramPreparedStmt, paramObjectCache, -1);
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      while (localSelectIterator.hasNextThrow())
        localArrayList.add(localSelectIterator.nextThrow());
    }
    finally
    {
      localSelectIterator.close();
    }
    a.debug("query of '{}' returned {} results", paramPreparedStmt.getStatement(), Integer.valueOf(localArrayList.size()));
    localSelectIterator.close();
    return localArrayList;
  }

  public List<T> queryForAll(ConnectionSource paramConnectionSource, ObjectCache paramObjectCache)
  {
    a();
    return query(paramConnectionSource, this.g, paramObjectCache);
  }

  public long queryForCountStar(DatabaseConnection paramDatabaseConnection)
  {
    if (this.m == null)
    {
      StringBuilder localStringBuilder = new StringBuilder(64);
      localStringBuilder.append("SELECT COUNT(*) FROM ");
      this.c.appendEscapedEntityName(localStringBuilder, this.d.getTableName());
      this.m = localStringBuilder.toString();
    }
    long l1 = paramDatabaseConnection.queryForLong(this.m);
    a.debug("query of '{}' returned {}", this.m, Long.valueOf(l1));
    return l1;
  }

  public long queryForCountStar(DatabaseConnection paramDatabaseConnection, PreparedStmt<T> paramPreparedStmt)
  {
    CompiledStatement localCompiledStatement = paramPreparedStmt.compile(paramDatabaseConnection, StatementBuilder.StatementType.SELECT_LONG);
    try
    {
      DatabaseResults localDatabaseResults = localCompiledStatement.runQuery(null);
      if (localDatabaseResults.first())
      {
        long l1 = localDatabaseResults.getLong(0);
        return l1;
      }
      return 0L;
    }
    finally
    {
      localCompiledStatement.close();
    }
  }

  public T queryForFirst(DatabaseConnection paramDatabaseConnection, PreparedStmt<T> paramPreparedStmt, ObjectCache paramObjectCache)
  {
    CompiledStatement localCompiledStatement = paramPreparedStmt.compile(paramDatabaseConnection, StatementBuilder.StatementType.SELECT);
    try
    {
      DatabaseResults localDatabaseResults = localCompiledStatement.runQuery(paramObjectCache);
      if (localDatabaseResults.first())
      {
        a.debug("query-for-first of '{}' returned at least 1 result", paramPreparedStmt.getStatement());
        Object localObject2 = paramPreparedStmt.mapRow(localDatabaseResults);
        return localObject2;
      }
      a.debug("query-for-first of '{}' returned at 0 results", paramPreparedStmt.getStatement());
      return null;
    }
    finally
    {
      localCompiledStatement.close();
    }
  }

  public T queryForId(DatabaseConnection paramDatabaseConnection, ID paramID, ObjectCache paramObjectCache)
  {
    if (this.f == null)
      this.f = MappedQueryForId.build(this.c, this.d, null);
    return this.f.execute(paramDatabaseConnection, paramID, paramObjectCache);
  }

  public <UO> GenericRawResults<UO> queryRaw(ConnectionSource paramConnectionSource, String paramString, RawRowMapper<UO> paramRawRowMapper, String[] paramArrayOfString, ObjectCache paramObjectCache)
  {
    a.debug("executing raw query for: {}", paramString);
    if (paramArrayOfString.length > 0)
      a.trace("query arguments: {}", paramArrayOfString);
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    CompiledStatement localCompiledStatement = null;
    try
    {
      localCompiledStatement = localDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, b);
      a(localCompiledStatement, paramArrayOfString);
      String[] arrayOfString = a(localCompiledStatement);
      RawResultsImpl localRawResultsImpl = new RawResultsImpl(paramConnectionSource, localDatabaseConnection, paramString, [Ljava.lang.String.class, localCompiledStatement, arrayOfString, new StatementExecutor.UserObjectRowMapper(paramRawRowMapper, arrayOfString, this), paramObjectCache);
      return localRawResultsImpl;
    }
    finally
    {
      if (localCompiledStatement != null)
        localCompiledStatement.close();
      if (localDatabaseConnection != null)
        paramConnectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public GenericRawResults<Object[]> queryRaw(ConnectionSource paramConnectionSource, String paramString, DataType[] paramArrayOfDataType, String[] paramArrayOfString, ObjectCache paramObjectCache)
  {
    a.debug("executing raw query for: {}", paramString);
    if (paramArrayOfString.length > 0)
      a.trace("query arguments: {}", paramArrayOfString);
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    CompiledStatement localCompiledStatement = null;
    try
    {
      localCompiledStatement = localDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, b);
      a(localCompiledStatement, paramArrayOfString);
      RawResultsImpl localRawResultsImpl = new RawResultsImpl(paramConnectionSource, localDatabaseConnection, paramString, [Ljava.lang.Object.class, localCompiledStatement, a(localCompiledStatement), new StatementExecutor.ObjectArrayRowMapper(paramArrayOfDataType), paramObjectCache);
      return localRawResultsImpl;
    }
    finally
    {
      if (localCompiledStatement != null)
        localCompiledStatement.close();
      if (localDatabaseConnection != null)
        paramConnectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public GenericRawResults<String[]> queryRaw(ConnectionSource paramConnectionSource, String paramString, String[] paramArrayOfString, ObjectCache paramObjectCache)
  {
    a.debug("executing raw query for: {}", paramString);
    if (paramArrayOfString.length > 0)
      a.trace("query arguments: {}", paramArrayOfString);
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    CompiledStatement localCompiledStatement = null;
    try
    {
      localCompiledStatement = localDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, b);
      a(localCompiledStatement, paramArrayOfString);
      RawResultsImpl localRawResultsImpl = new RawResultsImpl(paramConnectionSource, localDatabaseConnection, paramString, [Ljava.lang.String.class, localCompiledStatement, a(localCompiledStatement), this, paramObjectCache);
      return localRawResultsImpl;
    }
    finally
    {
      if (localCompiledStatement != null)
        localCompiledStatement.close();
      if (localDatabaseConnection != null)
        paramConnectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public int refresh(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (this.l == null)
      this.l = MappedRefresh.build(this.c, this.d);
    return this.l.executeRefresh(paramDatabaseConnection, paramT, paramObjectCache);
  }

  public int update(DatabaseConnection paramDatabaseConnection, PreparedUpdate<T> paramPreparedUpdate)
  {
    CompiledStatement localCompiledStatement = paramPreparedUpdate.compile(paramDatabaseConnection, StatementBuilder.StatementType.UPDATE);
    try
    {
      int i1 = localCompiledStatement.runUpdate();
      return i1;
    }
    finally
    {
      localCompiledStatement.close();
    }
  }

  public int update(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (this.i == null)
      this.i = MappedUpdate.build(this.c, this.d);
    return this.i.update(paramDatabaseConnection, paramT, paramObjectCache);
  }

  public int updateId(DatabaseConnection paramDatabaseConnection, T paramT, ID paramID, ObjectCache paramObjectCache)
  {
    if (this.j == null)
      this.j = MappedUpdateId.build(this.c, this.d);
    return this.j.execute(paramDatabaseConnection, paramT, paramID, paramObjectCache);
  }

  public int updateRaw(DatabaseConnection paramDatabaseConnection, String paramString, String[] paramArrayOfString)
  {
    a.debug("running raw update statement: {}", paramString);
    if (paramArrayOfString.length > 0)
      a.trace("update arguments: {}", paramArrayOfString);
    CompiledStatement localCompiledStatement = paramDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.UPDATE, b);
    try
    {
      a(localCompiledStatement, paramArrayOfString);
      int i1 = localCompiledStatement.runUpdate();
      return i1;
    }
    finally
    {
      localCompiledStatement.close();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.StatementExecutor
 * JD-Core Version:    0.6.2
 */