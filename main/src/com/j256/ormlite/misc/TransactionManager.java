package com.j256.ormlite.misc;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import java.sql.Savepoint;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

public class TransactionManager
{
  private static final Logger a = LoggerFactory.getLogger(TransactionManager.class);
  private static AtomicInteger c = new AtomicInteger();
  private ConnectionSource b;

  public TransactionManager()
  {
  }

  public TransactionManager(ConnectionSource paramConnectionSource)
  {
    this.b = paramConnectionSource;
    initialize();
  }

  private static void a(DatabaseConnection paramDatabaseConnection, Savepoint paramSavepoint)
  {
    if (paramSavepoint == null);
    for (String str = null; ; str = paramSavepoint.getSavepointName())
    {
      paramDatabaseConnection.rollback(paramSavepoint);
      if (str != null)
        break;
      a.debug("rolled back savePoint transaction");
      return;
    }
    a.debug("rolled back savePoint transaction {}", str);
  }

  public static <T> T callInTransaction(ConnectionSource paramConnectionSource, Callable<T> paramCallable)
  {
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadWriteConnection();
    try
    {
      Object localObject2 = callInTransaction(localDatabaseConnection, paramConnectionSource.saveSpecialConnection(localDatabaseConnection), paramConnectionSource.getDatabaseType(), paramCallable);
      return localObject2;
    }
    finally
    {
      paramConnectionSource.clearSpecialConnection(localDatabaseConnection);
      paramConnectionSource.releaseConnection(localDatabaseConnection);
    }
  }

  public static <T> T callInTransaction(DatabaseConnection paramDatabaseConnection, DatabaseType paramDatabaseType, Callable<T> paramCallable)
  {
    return callInTransaction(paramDatabaseConnection, false, paramDatabaseType, paramCallable);
  }

  // ERROR //
  public static <T> T callInTransaction(DatabaseConnection paramDatabaseConnection, boolean paramBoolean, DatabaseType paramDatabaseType, Callable<T> paramCallable)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iload_1
    //   4: ifne +12 -> 16
    //   7: aload_2
    //   8: invokeinterface 97 1 0
    //   13: ifeq +262 -> 275
    //   16: aload_0
    //   17: invokeinterface 100 1 0
    //   22: istore 6
    //   24: iconst_0
    //   25: istore 4
    //   27: iload 6
    //   29: ifeq +31 -> 60
    //   32: aload_0
    //   33: invokeinterface 103 1 0
    //   38: istore 4
    //   40: iload 4
    //   42: ifeq +18 -> 60
    //   45: aload_0
    //   46: iconst_0
    //   47: invokeinterface 107 2 0
    //   52: getstatic 20	com/j256/ormlite/misc/TransactionManager:a	Lcom/j256/ormlite/logger/Logger;
    //   55: ldc 109
    //   57: invokevirtual 49	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;)V
    //   60: aload_0
    //   61: new 111	java/lang/StringBuilder
    //   64: dup
    //   65: ldc 113
    //   67: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: getstatic 27	com/j256/ormlite/misc/TransactionManager:c	Ljava/util/concurrent/atomic/AtomicInteger;
    //   73: invokevirtual 119	java/util/concurrent/atomic/AtomicInteger:incrementAndGet	()I
    //   76: invokevirtual 123	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   79: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: invokeinterface 130 2 0
    //   87: astore 7
    //   89: aload 7
    //   91: ifnonnull +79 -> 170
    //   94: getstatic 20	com/j256/ormlite/misc/TransactionManager:a	Lcom/j256/ormlite/logger/Logger;
    //   97: ldc 132
    //   99: invokevirtual 49	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;)V
    //   102: iconst_1
    //   103: istore 8
    //   105: aload_3
    //   106: invokeinterface 138 1 0
    //   111: astore 11
    //   113: iload 8
    //   115: ifeq +32 -> 147
    //   118: aconst_null
    //   119: astore 12
    //   121: aload 7
    //   123: ifnonnull +90 -> 213
    //   126: aload_0
    //   127: aload 7
    //   129: invokeinterface 141 2 0
    //   134: aload 12
    //   136: ifnonnull +89 -> 225
    //   139: getstatic 20	com/j256/ormlite/misc/TransactionManager:a	Lcom/j256/ormlite/logger/Logger;
    //   142: ldc 143
    //   144: invokevirtual 49	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;)V
    //   147: iload 4
    //   149: ifeq +18 -> 167
    //   152: aload_0
    //   153: iconst_1
    //   154: invokeinterface 107 2 0
    //   159: getstatic 20	com/j256/ormlite/misc/TransactionManager:a	Lcom/j256/ormlite/logger/Logger;
    //   162: ldc 145
    //   164: invokevirtual 49	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;)V
    //   167: aload 11
    //   169: areturn
    //   170: getstatic 20	com/j256/ormlite/misc/TransactionManager:a	Lcom/j256/ormlite/logger/Logger;
    //   173: ldc 147
    //   175: aload 7
    //   177: invokeinterface 55 1 0
    //   182: invokevirtual 60	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   185: goto -83 -> 102
    //   188: astore 5
    //   190: iload 4
    //   192: ifeq +18 -> 210
    //   195: aload_0
    //   196: iconst_1
    //   197: invokeinterface 107 2 0
    //   202: getstatic 20	com/j256/ormlite/misc/TransactionManager:a	Lcom/j256/ormlite/logger/Logger;
    //   205: ldc 145
    //   207: invokevirtual 49	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;)V
    //   210: aload 5
    //   212: athrow
    //   213: aload 7
    //   215: invokeinterface 55 1 0
    //   220: astore 12
    //   222: goto -96 -> 126
    //   225: getstatic 20	com/j256/ormlite/misc/TransactionManager:a	Lcom/j256/ormlite/logger/Logger;
    //   228: ldc 149
    //   230: aload 12
    //   232: invokevirtual 60	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   235: goto -88 -> 147
    //   238: astore 10
    //   240: iload 8
    //   242: ifeq +9 -> 251
    //   245: aload_0
    //   246: aload 7
    //   248: invokestatic 151	com/j256/ormlite/misc/TransactionManager:a	(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    //   251: aload 10
    //   253: athrow
    //   254: astore 9
    //   256: iload 8
    //   258: ifeq +9 -> 267
    //   261: aload_0
    //   262: aload 7
    //   264: invokestatic 151	com/j256/ormlite/misc/TransactionManager:a	(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/sql/Savepoint;)V
    //   267: ldc 153
    //   269: aload 9
    //   271: invokestatic 159	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   274: athrow
    //   275: iconst_0
    //   276: istore 4
    //   278: aconst_null
    //   279: astore 7
    //   281: iconst_0
    //   282: istore 8
    //   284: goto -179 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   7	16	188	finally
    //   16	24	188	finally
    //   32	40	188	finally
    //   45	60	188	finally
    //   60	89	188	finally
    //   94	102	188	finally
    //   105	113	188	finally
    //   126	134	188	finally
    //   139	147	188	finally
    //   170	185	188	finally
    //   213	222	188	finally
    //   225	235	188	finally
    //   245	251	188	finally
    //   251	254	188	finally
    //   261	267	188	finally
    //   267	275	188	finally
    //   105	113	238	java/sql/SQLException
    //   126	134	238	java/sql/SQLException
    //   139	147	238	java/sql/SQLException
    //   213	222	238	java/sql/SQLException
    //   225	235	238	java/sql/SQLException
    //   105	113	254	java/lang/Exception
    //   126	134	254	java/lang/Exception
    //   139	147	254	java/lang/Exception
    //   213	222	254	java/lang/Exception
    //   225	235	254	java/lang/Exception
  }

  public <T> T callInTransaction(Callable<T> paramCallable)
  {
    return callInTransaction(this.b, paramCallable);
  }

  public void initialize()
  {
    if (this.b == null)
      throw new IllegalStateException("dataSource was not set on " + getClass().getSimpleName());
  }

  public void setConnectionSource(ConnectionSource paramConnectionSource)
  {
    this.b = paramConnectionSource;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.misc.TransactionManager
 * JD-Core Version:    0.6.2
 */