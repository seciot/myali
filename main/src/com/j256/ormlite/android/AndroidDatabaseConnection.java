package com.j256.ormlite.android;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.GeneratedKeyHolder;
import java.sql.Savepoint;

public class AndroidDatabaseConnection
  implements DatabaseConnection
{
  private static Logger a = LoggerFactory.getLogger(AndroidDatabaseConnection.class);
  private final SQLiteDatabase b;
  private final boolean c;

  public AndroidDatabaseConnection(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    this.b = paramSQLiteDatabase;
    this.c = paramBoolean;
    a.trace("{}: db {} opened, read-write = {}", this, paramSQLiteDatabase, Boolean.valueOf(paramBoolean));
  }

  // ERROR //
  private int a(String paramString1, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 28	com/j256/ormlite/android/AndroidDatabaseConnection:b	Landroid/database/sqlite/SQLiteDatabase;
    //   4: aload_1
    //   5: invokevirtual 53	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   8: astore 8
    //   10: aload 8
    //   12: astore 6
    //   14: aload 6
    //   16: aload_2
    //   17: aload_3
    //   18: invokestatic 56	com/j256/ormlite/android/AndroidDatabaseConnection:a	(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V
    //   21: aload 6
    //   23: invokevirtual 61	android/database/sqlite/SQLiteStatement:execute	()V
    //   26: aload 6
    //   28: ifnull +177 -> 205
    //   31: aload 6
    //   33: invokevirtual 64	android/database/sqlite/SQLiteStatement:close	()V
    //   36: aconst_null
    //   37: astore 9
    //   39: aload_0
    //   40: getfield 28	com/j256/ormlite/android/AndroidDatabaseConnection:b	Landroid/database/sqlite/SQLiteDatabase;
    //   43: ldc 66
    //   45: invokevirtual 53	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   48: astore 15
    //   50: aload 15
    //   52: astore 11
    //   54: aload 11
    //   56: invokevirtual 70	android/database/sqlite/SQLiteStatement:simpleQueryForLong	()J
    //   59: lstore 17
    //   61: lload 17
    //   63: l2i
    //   64: istore 14
    //   66: aload 11
    //   68: ifnull +8 -> 76
    //   71: aload 11
    //   73: invokevirtual 64	android/database/sqlite/SQLiteStatement:close	()V
    //   76: getstatic 22	com/j256/ormlite/android/AndroidDatabaseConnection:a	Lcom/j256/ormlite/logger/Logger;
    //   79: ldc 72
    //   81: aload 4
    //   83: iload 14
    //   85: invokestatic 77	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   88: aload_1
    //   89: invokevirtual 44	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   92: iload 14
    //   94: ireturn
    //   95: astore 7
    //   97: aconst_null
    //   98: astore 6
    //   100: new 79	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 81
    //   106: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_1
    //   110: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: aload 7
    //   118: invokestatic 98	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   121: athrow
    //   122: astore 5
    //   124: aload 6
    //   126: ifnull +8 -> 134
    //   129: aload 6
    //   131: invokevirtual 64	android/database/sqlite/SQLiteStatement:close	()V
    //   134: aload 5
    //   136: athrow
    //   137: astore 13
    //   139: aload 9
    //   141: astore 11
    //   143: iconst_1
    //   144: istore 14
    //   146: aload 11
    //   148: ifnull -72 -> 76
    //   151: aload 11
    //   153: invokevirtual 64	android/database/sqlite/SQLiteStatement:close	()V
    //   156: goto -80 -> 76
    //   159: astore 10
    //   161: aload 9
    //   163: astore 11
    //   165: aload 10
    //   167: astore 12
    //   169: aload 11
    //   171: ifnull +8 -> 179
    //   174: aload 11
    //   176: invokevirtual 64	android/database/sqlite/SQLiteStatement:close	()V
    //   179: aload 12
    //   181: athrow
    //   182: astore 12
    //   184: goto -15 -> 169
    //   187: astore 16
    //   189: goto -46 -> 143
    //   192: astore 5
    //   194: aconst_null
    //   195: astore 6
    //   197: goto -73 -> 124
    //   200: astore 7
    //   202: goto -102 -> 100
    //   205: aload 6
    //   207: astore 9
    //   209: goto -170 -> 39
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	95	android/database/SQLException
    //   14	26	122	finally
    //   100	122	122	finally
    //   39	50	137	android/database/SQLException
    //   39	50	159	finally
    //   54	61	182	finally
    //   54	61	187	android/database/SQLException
    //   0	10	192	finally
    //   14	26	200	android/database/SQLException
  }

  private static void a(SQLiteStatement paramSQLiteStatement, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    if (paramArrayOfObject == null)
      return;
    int i = 0;
    label7: Object localObject;
    if (i < paramArrayOfObject.length)
    {
      localObject = paramArrayOfObject[i];
      if (localObject != null)
        break label36;
      paramSQLiteStatement.bindNull(i + 1);
    }
    label36: SqlType localSqlType;
    while (true)
    {
      i++;
      break label7;
      break;
      localSqlType = paramArrayOfFieldType[i].getSqlType();
      switch (AndroidDatabaseConnection.1.$SwitchMap$com$j256$ormlite$field$SqlType[localSqlType.ordinal()])
      {
      default:
        throw new java.sql.SQLException("Unknown sql argument type: " + localSqlType);
      case 1:
      case 2:
      case 3:
        paramSQLiteStatement.bindString(i + 1, localObject.toString());
        break;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        paramSQLiteStatement.bindLong(i + 1, ((Number)localObject).longValue());
        break;
      case 9:
      case 10:
        paramSQLiteStatement.bindDouble(i + 1, ((Number)localObject).doubleValue());
        break;
      case 11:
      case 12:
        paramSQLiteStatement.bindBlob(i + 1, (byte[])localObject);
      case 13:
      case 14:
      case 15:
      }
    }
    throw new java.sql.SQLException("Invalid Android type: " + localSqlType);
  }

  private static String[] a(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject == null) || (paramArrayOfObject.length == 0))
      return null;
    String[] arrayOfString = new String[paramArrayOfObject.length];
    int i = 0;
    if (i < paramArrayOfObject.length)
    {
      Object localObject = paramArrayOfObject[i];
      if (localObject == null)
        arrayOfString[i] = null;
      while (true)
      {
        i++;
        break;
        arrayOfString[i] = localObject.toString();
      }
    }
    return arrayOfString;
  }

  public void close()
  {
    try
    {
      this.b.close();
      a.trace("{}: db {} closed", this, this.b);
      return;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems closing the database connection", localSQLException);
    }
  }

  public void commit(Savepoint paramSavepoint)
  {
    try
    {
      this.b.setTransactionSuccessful();
      this.b.endTransaction();
      if (paramSavepoint == null)
      {
        a.trace("{}: transaction is successfuly ended", this);
        return;
      }
      a.trace("{}: transaction {} is successfuly ended", this, paramSavepoint.getSavepointName());
      return;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems commiting transaction " + paramSavepoint.getSavepointName(), localSQLException);
    }
  }

  public CompiledStatement compileStatement(String paramString, StatementBuilder.StatementType paramStatementType, FieldType[] paramArrayOfFieldType)
  {
    AndroidCompiledStatement localAndroidCompiledStatement = new AndroidCompiledStatement(paramString, this.b, paramStatementType);
    a.trace("{}: compiled statement got {}: {}", this, localAndroidCompiledStatement, paramString);
    return localAndroidCompiledStatement;
  }

  public CompiledStatement compileStatement(String paramString, StatementBuilder.StatementType paramStatementType, FieldType[] paramArrayOfFieldType, int paramInt)
  {
    return compileStatement(paramString, paramStatementType, paramArrayOfFieldType);
  }

  public int delete(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    return a(paramString, paramArrayOfObject, paramArrayOfFieldType, "deleted");
  }

  public int insert(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, GeneratedKeyHolder paramGeneratedKeyHolder)
  {
    SQLiteStatement localSQLiteStatement = null;
    try
    {
      localSQLiteStatement = this.b.compileStatement(paramString);
      a(localSQLiteStatement, paramArrayOfObject, paramArrayOfFieldType);
      long l = localSQLiteStatement.executeInsert();
      if (paramGeneratedKeyHolder != null)
        paramGeneratedKeyHolder.addKey(Long.valueOf(l));
      a.trace("{}: insert statement is compiled and executed, changed {}: {}", this, Integer.valueOf(1), paramString);
      return 1;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("inserting to database failed: " + paramString, localSQLException);
    }
    finally
    {
      if (localSQLiteStatement != null)
        localSQLiteStatement.close();
    }
  }

  public boolean isAutoCommit()
  {
    try
    {
      boolean bool = this.b.inTransaction();
      a.trace("{}: in transaction is {}", this, Boolean.valueOf(bool));
      return !bool;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems getting auto-commit from database", localSQLException);
    }
  }

  public boolean isAutoCommitSupported()
  {
    return false;
  }

  public boolean isClosed()
  {
    try
    {
      boolean bool = this.b.isOpen();
      a.trace("{}: db {} isOpen returned {}", this, this.b, Boolean.valueOf(bool));
      return !bool;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems detecting if the database is closed", localSQLException);
    }
  }

  public boolean isReadWrite()
  {
    return this.c;
  }

  public boolean isTableExists(String paramString)
  {
    Cursor localCursor = this.b.rawQuery("SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = '" + paramString + "'", null);
    if ((localCursor != null) && (localCursor.getCount() > 0));
    for (boolean bool = true; ; bool = false)
    {
      a.trace("{}: isTableExists '{}' returned {}", this, paramString, Boolean.valueOf(bool));
      return bool;
    }
  }

  public long queryForLong(String paramString)
  {
    SQLiteStatement localSQLiteStatement = null;
    try
    {
      localSQLiteStatement = this.b.compileStatement(paramString);
      long l = localSQLiteStatement.simpleQueryForLong();
      a.trace("{}: query for long simple query returned {}: {}", this, Long.valueOf(l), paramString);
      return l;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("queryForLong from database failed: " + paramString, localSQLException);
    }
    finally
    {
      if (localSQLiteStatement != null)
        localSQLiteStatement.close();
    }
  }

  public long queryForLong(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    Cursor localCursor = null;
    try
    {
      localCursor = this.b.rawQuery(paramString, a(paramArrayOfObject));
      AndroidDatabaseResults localAndroidDatabaseResults = new AndroidDatabaseResults(localCursor, null);
      if (localAndroidDatabaseResults.first());
      for (long l = localAndroidDatabaseResults.getLong(0); ; l = 0L)
      {
        a.trace("{}: query for long raw query returned {}: {}", this, Long.valueOf(l), paramString);
        return l;
      }
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("queryForLong from database failed: " + paramString, localSQLException);
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  // ERROR //
  public <T> Object queryForOne(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, com.j256.ormlite.stmt.GenericRowMapper<T> paramGenericRowMapper, com.j256.ormlite.dao.ObjectCache paramObjectCache)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 28	com/j256/ormlite/android/AndroidDatabaseConnection:b	Landroid/database/sqlite/SQLiteDatabase;
    //   4: aload_1
    //   5: aload_2
    //   6: invokestatic 273	com/j256/ormlite/android/AndroidDatabaseConnection:a	([Ljava/lang/Object;)[Ljava/lang/String;
    //   9: invokevirtual 257	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   12: astore 11
    //   14: aload 11
    //   16: astore 8
    //   18: new 275	com/j256/ormlite/android/AndroidDatabaseResults
    //   21: dup
    //   22: aload 8
    //   24: aload 5
    //   26: invokespecial 278	com/j256/ormlite/android/AndroidDatabaseResults:<init>	(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V
    //   29: astore 12
    //   31: getstatic 22	com/j256/ormlite/android/AndroidDatabaseConnection:a	Lcom/j256/ormlite/logger/Logger;
    //   34: ldc_w 292
    //   37: aload_0
    //   38: aload_1
    //   39: invokevirtual 167	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   42: aload 12
    //   44: invokevirtual 281	com/j256/ormlite/android/AndroidDatabaseResults:first	()Z
    //   47: istore 13
    //   49: iload 13
    //   51: ifne +21 -> 72
    //   54: aconst_null
    //   55: astore 14
    //   57: aload 8
    //   59: ifnull +10 -> 69
    //   62: aload 8
    //   64: invokeinterface 288 1 0
    //   69: aload 14
    //   71: areturn
    //   72: aload 4
    //   74: aload 12
    //   76: invokeinterface 298 2 0
    //   81: astore 14
    //   83: aload 12
    //   85: invokevirtual 301	com/j256/ormlite/android/AndroidDatabaseResults:next	()Z
    //   88: ifeq +23 -> 111
    //   91: getstatic 305	com/j256/ormlite/android/AndroidDatabaseConnection:MORE_THAN_ONE	Ljava/lang/Object;
    //   94: astore 14
    //   96: aload 8
    //   98: ifnull -29 -> 69
    //   101: aload 8
    //   103: invokeinterface 288 1 0
    //   108: aload 14
    //   110: areturn
    //   111: aload 8
    //   113: ifnull -44 -> 69
    //   116: aload 8
    //   118: invokeinterface 288 1 0
    //   123: aload 14
    //   125: areturn
    //   126: astore 9
    //   128: aconst_null
    //   129: astore 8
    //   131: aload 9
    //   133: astore 10
    //   135: new 79	java/lang/StringBuilder
    //   138: dup
    //   139: ldc_w 307
    //   142: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload_1
    //   146: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: aload 10
    //   154: invokestatic 98	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   157: athrow
    //   158: astore 7
    //   160: aload 8
    //   162: ifnull +10 -> 172
    //   165: aload 8
    //   167: invokeinterface 288 1 0
    //   172: aload 7
    //   174: athrow
    //   175: astore 6
    //   177: aload 6
    //   179: astore 7
    //   181: aconst_null
    //   182: astore 8
    //   184: goto -24 -> 160
    //   187: astore 10
    //   189: goto -54 -> 135
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	126	android/database/SQLException
    //   18	49	158	finally
    //   72	96	158	finally
    //   135	158	158	finally
    //   0	14	175	finally
    //   18	49	187	android/database/SQLException
    //   72	96	187	android/database/SQLException
  }

  public void rollback(Savepoint paramSavepoint)
  {
    try
    {
      this.b.endTransaction();
      if (paramSavepoint == null)
      {
        a.trace("{}: transaction is ended, unsuccessfuly", this);
        return;
      }
      a.trace("{}: transaction {} is ended, unsuccessfuly", this, paramSavepoint.getSavepointName());
      return;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems rolling back transaction " + paramSavepoint.getSavepointName(), localSQLException);
    }
  }

  public void setAutoCommit(boolean paramBoolean)
  {
  }

  public Savepoint setSavePoint(String paramString)
  {
    try
    {
      this.b.beginTransaction();
      a.trace("{}: save-point set with name {}", this, paramString);
      AndroidDatabaseConnection.OurSavePoint localOurSavePoint = new AndroidDatabaseConnection.OurSavePoint(paramString);
      return localOurSavePoint;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems beginning transaction " + paramString, localSQLException);
    }
  }

  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }

  public int update(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    return a(paramString, paramArrayOfObject, paramArrayOfFieldType, "updated");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.AndroidDatabaseConnection
 * JD-Core Version:    0.6.2
 */