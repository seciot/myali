package com.j256.ormlite.table;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class TableUtils
{
  private static Logger logger = LoggerFactory.getLogger(TableUtils.class);
  private static final FieldType[] noFieldTypes = new FieldType[0];

  private static <T, ID> void addCreateIndexStatements(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, List<String> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    HashMap localHashMap = new HashMap();
    FieldType[] arrayOfFieldType = paramTableInfo.getFieldTypes();
    int i = arrayOfFieldType.length;
    int j = 0;
    if (j < i)
    {
      FieldType localFieldType = arrayOfFieldType[j];
      if (paramBoolean2);
      for (String str2 = localFieldType.getUniqueIndexName(); ; str2 = localFieldType.getIndexName())
      {
        if (str2 != null)
        {
          Object localObject = (List)localHashMap.get(str2);
          if (localObject == null)
          {
            localObject = new ArrayList();
            localHashMap.put(str2, localObject);
          }
          ((List)localObject).add(localFieldType.getColumnName());
        }
        j++;
        break;
      }
    }
    StringBuilder localStringBuilder = new StringBuilder(128);
    Iterator localIterator1 = localHashMap.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      logger.info("creating index '{}' for table '{}", localEntry.getKey(), paramTableInfo.getTableName());
      localStringBuilder.append("CREATE ");
      if (paramBoolean2)
        localStringBuilder.append("UNIQUE ");
      localStringBuilder.append("INDEX ");
      if ((paramBoolean1) && (paramDatabaseType.isCreateIndexIfNotExistsSupported()))
        localStringBuilder.append("IF NOT EXISTS ");
      paramDatabaseType.appendEscapedEntityName(localStringBuilder, (String)localEntry.getKey());
      localStringBuilder.append(" ON ");
      paramDatabaseType.appendEscapedEntityName(localStringBuilder, paramTableInfo.getTableName());
      localStringBuilder.append(" ( ");
      Iterator localIterator2 = ((List)localEntry.getValue()).iterator();
      int k = 1;
      if (localIterator2.hasNext())
      {
        String str1 = (String)localIterator2.next();
        if (k != 0)
          k = 0;
        while (true)
        {
          paramDatabaseType.appendEscapedEntityName(localStringBuilder, str1);
          break;
          localStringBuilder.append(", ");
        }
      }
      localStringBuilder.append(" )");
      paramList.add(localStringBuilder.toString());
      localStringBuilder.setLength(0);
    }
  }

  private static <T, ID> List<String> addCreateTableStatements(ConnectionSource paramConnectionSource, TableInfo<T, ID> paramTableInfo, boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    addCreateTableStatements(paramConnectionSource.getDatabaseType(), paramTableInfo, localArrayList1, localArrayList2, paramBoolean);
    return localArrayList1;
  }

  private static <T, ID> void addCreateTableStatements(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, List<String> paramList1, List<String> paramList2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append("CREATE TABLE ");
    if ((paramBoolean) && (paramDatabaseType.isCreateIfNotExistsSupported()))
      localStringBuilder.append("IF NOT EXISTS ");
    paramDatabaseType.appendEscapedEntityName(localStringBuilder, paramTableInfo.getTableName());
    localStringBuilder.append(" (");
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    FieldType[] arrayOfFieldType = paramTableInfo.getFieldTypes();
    int i = arrayOfFieldType.length;
    int j = 0;
    int k = 1;
    FieldType localFieldType;
    int m;
    label136: String str2;
    if (j < i)
    {
      localFieldType = arrayOfFieldType[j];
      if (localFieldType.isForeignCollection())
        break label374;
      if (k != 0)
      {
        m = 0;
        str2 = localFieldType.getColumnDefinition();
        if (str2 != null)
          break label194;
        paramDatabaseType.appendColumnArg(paramTableInfo.getTableName(), localStringBuilder, localFieldType, localArrayList1, localArrayList2, localArrayList3, paramList2);
      }
    }
    while (true)
    {
      j++;
      k = m;
      break;
      localStringBuilder.append(", ");
      m = k;
      break label136;
      label194: paramDatabaseType.appendEscapedEntityName(localStringBuilder, localFieldType.getColumnName());
      localStringBuilder.append(' ').append(str2).append(' ');
      continue;
      paramDatabaseType.addPrimaryKeySql(paramTableInfo.getFieldTypes(), localArrayList1, localArrayList2, localArrayList3, paramList2);
      paramDatabaseType.addUniqueComboSql(paramTableInfo.getFieldTypes(), localArrayList1, localArrayList2, localArrayList3, paramList2);
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        localStringBuilder.append(", ").append(str1);
      }
      localStringBuilder.append(") ");
      paramDatabaseType.appendCreateTableSuffix(localStringBuilder);
      paramList1.addAll(localArrayList2);
      paramList1.add(localStringBuilder.toString());
      paramList1.addAll(localArrayList3);
      addCreateIndexStatements(paramDatabaseType, paramTableInfo, paramList1, paramBoolean, false);
      addCreateIndexStatements(paramDatabaseType, paramTableInfo, paramList1, paramBoolean, true);
      return;
      label374: m = k;
    }
  }

  private static <T, ID> void addDropIndexStatements(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, List<String> paramList)
  {
    HashSet localHashSet = new HashSet();
    for (FieldType localFieldType : paramTableInfo.getFieldTypes())
    {
      String str2 = localFieldType.getIndexName();
      if (str2 != null)
        localHashSet.add(str2);
      String str3 = localFieldType.getUniqueIndexName();
      if (str3 != null)
        localHashSet.add(str3);
    }
    StringBuilder localStringBuilder = new StringBuilder(48);
    Iterator localIterator = localHashSet.iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      logger.info("dropping index '{}' for table '{}", str1, paramTableInfo.getTableName());
      localStringBuilder.append("DROP INDEX ");
      paramDatabaseType.appendEscapedEntityName(localStringBuilder, str1);
      paramList.add(localStringBuilder.toString());
      localStringBuilder.setLength(0);
    }
  }

  private static <T, ID> void addDropTableStatements(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, List<String> paramList)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    FieldType[] arrayOfFieldType = paramTableInfo.getFieldTypes();
    int i = arrayOfFieldType.length;
    for (int j = 0; j < i; j++)
      paramDatabaseType.dropColumnArg(arrayOfFieldType[j], localArrayList1, localArrayList2);
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("DROP TABLE ");
    paramDatabaseType.appendEscapedEntityName(localStringBuilder, paramTableInfo.getTableName());
    localStringBuilder.append(' ');
    paramList.addAll(localArrayList1);
    paramList.add(localStringBuilder.toString());
    paramList.addAll(localArrayList2);
  }

  public static <T> int clearTable(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    return clearTable(paramConnectionSource, paramDatabaseTableConfig.getTableName());
  }

  public static <T> int clearTable(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    String str = DatabaseTableConfig.extractTableName(paramClass);
    if (paramConnectionSource.getDatabaseType().isEntityNamesMustBeUpCase())
      str = str.toUpperCase();
    return clearTable(paramConnectionSource, str);
  }

  private static <T> int clearTable(ConnectionSource paramConnectionSource, String paramString)
  {
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    StringBuilder localStringBuilder = new StringBuilder(48);
    if (localDatabaseType.isTruncateSupported())
      localStringBuilder.append("TRUNCATE TABLE ");
    while (true)
    {
      localDatabaseType.appendEscapedEntityName(localStringBuilder, paramString);
      String str = localStringBuilder.toString();
      logger.info("clearing table '{}' with '{}", paramString, str);
      CompiledStatement localCompiledStatement = null;
      DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadWriteConnection();
      try
      {
        localCompiledStatement = localDatabaseConnection.compileStatement(str, StatementBuilder.StatementType.EXECUTE, noFieldTypes);
        int i = localCompiledStatement.runExecute();
        return i;
        localStringBuilder.append("DELETE FROM ");
      }
      finally
      {
        if (localCompiledStatement != null)
          localCompiledStatement.close();
        paramConnectionSource.releaseConnection(localDatabaseConnection);
      }
    }
  }

  public static <T> int createTable(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    return createTable(paramConnectionSource, paramDatabaseTableConfig, false);
  }

  private static <T, ID> int createTable(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig, boolean paramBoolean)
  {
    Dao localDao = DaoManager.createDao(paramConnectionSource, paramDatabaseTableConfig);
    if ((localDao instanceof BaseDaoImpl))
      return doCreateTable(paramConnectionSource, ((BaseDaoImpl)localDao).getTableInfo(), paramBoolean);
    paramDatabaseTableConfig.extractFieldTypes(paramConnectionSource);
    return doCreateTable(paramConnectionSource, new TableInfo(paramConnectionSource.getDatabaseType(), null, paramDatabaseTableConfig), paramBoolean);
  }

  public static <T> int createTable(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    return createTable(paramConnectionSource, paramClass, false);
  }

  private static <T, ID> int createTable(ConnectionSource paramConnectionSource, Class<T> paramClass, boolean paramBoolean)
  {
    Dao localDao = DaoManager.createDao(paramConnectionSource, paramClass);
    if ((localDao instanceof BaseDaoImpl))
      return doCreateTable(paramConnectionSource, ((BaseDaoImpl)localDao).getTableInfo(), paramBoolean);
    return doCreateTable(paramConnectionSource, new TableInfo(paramConnectionSource, null, paramClass), paramBoolean);
  }

  public static <T> int createTableIfNotExists(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    return createTable(paramConnectionSource, paramDatabaseTableConfig, true);
  }

  public static <T> int createTableIfNotExists(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    return createTable(paramConnectionSource, paramClass, true);
  }

  private static <T, ID> int doCreateTable(ConnectionSource paramConnectionSource, TableInfo<T, ID> paramTableInfo, boolean paramBoolean)
  {
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    logger.info("creating table '{}'", paramTableInfo.getTableName());
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    addCreateTableStatements(localDatabaseType, paramTableInfo, localArrayList1, localArrayList2, paramBoolean);
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadWriteConnection();
    try
    {
      int i = doStatements(localDatabaseConnection, "create", localArrayList1, false, localDatabaseType.isCreateTableReturnsNegative(), localDatabaseType.isCreateTableReturnsZero());
      int j = doCreateTestQueries(localDatabaseConnection, localDatabaseType, localArrayList2);
      int k = i + j;
      return k;
    }
    finally
    {
      paramConnectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  // ERROR //
  private static int doCreateTestQueries(DatabaseConnection paramDatabaseConnection, DatabaseType paramDatabaseType, List<String> paramList)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokeinterface 137 1 0
    //   6: astore_3
    //   7: iconst_0
    //   8: istore 4
    //   10: aload_3
    //   11: invokeinterface 86 1 0
    //   16: ifeq +160 -> 176
    //   19: aload_3
    //   20: invokeinterface 90 1 0
    //   25: checkcast 125	java/lang/String
    //   28: astore 5
    //   30: aload_0
    //   31: aload 5
    //   33: getstatic 334	com/j256/ormlite/stmt/StatementBuilder$StatementType:SELECT	Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    //   36: getstatic 22	com/j256/ormlite/table/TableUtils:noFieldTypes	[Lcom/j256/ormlite/field/FieldType;
    //   39: invokeinterface 256 4 0
    //   44: astore 10
    //   46: aload 10
    //   48: astore 7
    //   50: aload 7
    //   52: aconst_null
    //   53: invokeinterface 338 2 0
    //   58: astore 11
    //   60: aload 11
    //   62: invokeinterface 343 1 0
    //   67: istore 12
    //   69: iconst_0
    //   70: istore 13
    //   72: iload 12
    //   74: ifeq +18 -> 92
    //   77: iinc 13 1
    //   80: aload 11
    //   82: invokeinterface 345 1 0
    //   87: istore 12
    //   89: goto -17 -> 72
    //   92: getstatic 18	com/j256/ormlite/table/TableUtils:logger	Lcom/j256/ormlite/logger/Logger;
    //   95: ldc_w 347
    //   98: iload 13
    //   100: invokestatic 353	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   103: aload 5
    //   105: invokevirtual 106	com/j256/ormlite/logger/Logger:info	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   108: aload 7
    //   110: ifnull +10 -> 120
    //   113: aload 7
    //   115: invokeinterface 265 1 0
    //   120: iinc 4 1
    //   123: goto -113 -> 10
    //   126: astore 8
    //   128: aconst_null
    //   129: astore 9
    //   131: new 67	java/lang/StringBuilder
    //   134: dup
    //   135: ldc_w 355
    //   138: invokespecial 358	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   141: aload 5
    //   143: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: aload 8
    //   151: invokestatic 363	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   154: athrow
    //   155: astore 6
    //   157: aload 9
    //   159: astore 7
    //   161: aload 7
    //   163: ifnull +10 -> 173
    //   166: aload 7
    //   168: invokeinterface 265 1 0
    //   173: aload 6
    //   175: athrow
    //   176: iload 4
    //   178: ireturn
    //   179: astore 6
    //   181: aconst_null
    //   182: astore 7
    //   184: goto -23 -> 161
    //   187: astore 6
    //   189: goto -28 -> 161
    //   192: astore 8
    //   194: aload 7
    //   196: astore 9
    //   198: goto -67 -> 131
    //
    // Exception table:
    //   from	to	target	type
    //   30	46	126	java/sql/SQLException
    //   131	155	155	finally
    //   30	46	179	finally
    //   50	69	187	finally
    //   80	89	187	finally
    //   92	108	187	finally
    //   50	69	192	java/sql/SQLException
    //   80	89	192	java/sql/SQLException
    //   92	108	192	java/sql/SQLException
  }

  private static <T, ID> int doDropTable(DatabaseType paramDatabaseType, ConnectionSource paramConnectionSource, TableInfo<T, ID> paramTableInfo, boolean paramBoolean)
  {
    logger.info("dropping table '{}'", paramTableInfo.getTableName());
    ArrayList localArrayList = new ArrayList();
    addDropIndexStatements(paramDatabaseType, paramTableInfo, localArrayList);
    addDropTableStatements(paramDatabaseType, paramTableInfo, localArrayList);
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadWriteConnection();
    try
    {
      int i = doStatements(localDatabaseConnection, "drop", localArrayList, paramBoolean, paramDatabaseType.isCreateTableReturnsNegative(), false);
      return i;
    }
    finally
    {
      paramConnectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  // ERROR //
  private static int doStatements(DatabaseConnection paramDatabaseConnection, String paramString, java.util.Collection<String> paramCollection, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokeinterface 376 1 0
    //   6: astore 6
    //   8: iconst_0
    //   9: istore 7
    //   11: aload 6
    //   13: invokeinterface 86 1 0
    //   18: ifeq +261 -> 279
    //   21: aload 6
    //   23: invokeinterface 90 1 0
    //   28: checkcast 125	java/lang/String
    //   31: astore 8
    //   33: aconst_null
    //   34: astore 9
    //   36: aload_0
    //   37: aload 8
    //   39: getstatic 250	com/j256/ormlite/stmt/StatementBuilder$StatementType:EXECUTE	Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    //   42: getstatic 22	com/j256/ormlite/table/TableUtils:noFieldTypes	[Lcom/j256/ormlite/field/FieldType;
    //   45: invokeinterface 256 4 0
    //   50: astore 9
    //   52: aload 9
    //   54: invokeinterface 262 1 0
    //   59: istore 13
    //   61: iload 13
    //   63: istore 12
    //   65: getstatic 18	com/j256/ormlite/table/TableUtils:logger	Lcom/j256/ormlite/logger/Logger;
    //   68: ldc_w 378
    //   71: aload_1
    //   72: iload 12
    //   74: invokestatic 353	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   77: aload 8
    //   79: invokevirtual 381	com/j256/ormlite/logger/Logger:info	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   82: aload 9
    //   84: ifnull +10 -> 94
    //   87: aload 9
    //   89: invokeinterface 265 1 0
    //   94: iload 12
    //   96: ifge +130 -> 226
    //   99: iload 4
    //   101: ifne +172 -> 273
    //   104: new 331	java/sql/SQLException
    //   107: dup
    //   108: new 67	java/lang/StringBuilder
    //   111: dup
    //   112: ldc_w 383
    //   115: invokespecial 358	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: aload 8
    //   120: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: ldc_w 385
    //   126: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: iload 12
    //   131: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   134: ldc_w 390
    //   137: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokespecial 391	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   146: athrow
    //   147: astore 11
    //   149: iconst_0
    //   150: istore 12
    //   152: iload_3
    //   153: ifeq +32 -> 185
    //   156: getstatic 18	com/j256/ormlite/table/TableUtils:logger	Lcom/j256/ormlite/logger/Logger;
    //   159: ldc_w 393
    //   162: aload_1
    //   163: aload 11
    //   165: aload 8
    //   167: invokevirtual 381	com/j256/ormlite/logger/Logger:info	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   170: aload 9
    //   172: ifnull -78 -> 94
    //   175: aload 9
    //   177: invokeinterface 265 1 0
    //   182: goto -88 -> 94
    //   185: new 67	java/lang/StringBuilder
    //   188: dup
    //   189: ldc_w 395
    //   192: invokespecial 358	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   195: aload 8
    //   197: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: aload 11
    //   205: invokestatic 363	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   208: athrow
    //   209: astore 10
    //   211: aload 9
    //   213: ifnull +10 -> 223
    //   216: aload 9
    //   218: invokeinterface 265 1 0
    //   223: aload 10
    //   225: athrow
    //   226: iload 12
    //   228: ifle +45 -> 273
    //   231: iload 5
    //   233: ifeq +40 -> 273
    //   236: new 331	java/sql/SQLException
    //   239: dup
    //   240: new 67	java/lang/StringBuilder
    //   243: dup
    //   244: ldc_w 397
    //   247: invokespecial 358	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   250: iload 12
    //   252: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   255: ldc_w 399
    //   258: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: aload 8
    //   263: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   269: invokespecial 391	java/sql/SQLException:<init>	(Ljava/lang/String;)V
    //   272: athrow
    //   273: iinc 7 1
    //   276: goto -265 -> 11
    //   279: iload 7
    //   281: ireturn
    //   282: astore 11
    //   284: goto -132 -> 152
    //
    // Exception table:
    //   from	to	target	type
    //   36	61	147	java/sql/SQLException
    //   36	61	209	finally
    //   65	82	209	finally
    //   156	170	209	finally
    //   185	209	209	finally
    //   65	82	282	java/sql/SQLException
  }

  public static <T, ID> int dropTable(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig, boolean paramBoolean)
  {
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    Dao localDao = DaoManager.createDao(paramConnectionSource, paramDatabaseTableConfig);
    if ((localDao instanceof BaseDaoImpl))
      return doDropTable(localDatabaseType, paramConnectionSource, ((BaseDaoImpl)localDao).getTableInfo(), paramBoolean);
    paramDatabaseTableConfig.extractFieldTypes(paramConnectionSource);
    return doDropTable(localDatabaseType, paramConnectionSource, new TableInfo(localDatabaseType, null, paramDatabaseTableConfig), paramBoolean);
  }

  public static <T, ID> int dropTable(ConnectionSource paramConnectionSource, Class<T> paramClass, boolean paramBoolean)
  {
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    Dao localDao = DaoManager.createDao(paramConnectionSource, paramClass);
    if ((localDao instanceof BaseDaoImpl))
      return doDropTable(localDatabaseType, paramConnectionSource, ((BaseDaoImpl)localDao).getTableInfo(), paramBoolean);
    return doDropTable(localDatabaseType, paramConnectionSource, new TableInfo(paramConnectionSource, null, paramClass), paramBoolean);
  }

  public static <T, ID> List<String> getCreateTableStatements(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    Dao localDao = DaoManager.createDao(paramConnectionSource, paramDatabaseTableConfig);
    if ((localDao instanceof BaseDaoImpl))
      return addCreateTableStatements(paramConnectionSource, ((BaseDaoImpl)localDao).getTableInfo(), false);
    paramDatabaseTableConfig.extractFieldTypes(paramConnectionSource);
    return addCreateTableStatements(paramConnectionSource, new TableInfo(paramConnectionSource.getDatabaseType(), null, paramDatabaseTableConfig), false);
  }

  public static <T, ID> List<String> getCreateTableStatements(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    Dao localDao = DaoManager.createDao(paramConnectionSource, paramClass);
    if ((localDao instanceof BaseDaoImpl))
      return addCreateTableStatements(paramConnectionSource, ((BaseDaoImpl)localDao).getTableInfo(), false);
    return addCreateTableStatements(paramConnectionSource, new TableInfo(paramConnectionSource, null, paramClass), false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.table.TableUtils
 * JD-Core Version:    0.6.2
 */