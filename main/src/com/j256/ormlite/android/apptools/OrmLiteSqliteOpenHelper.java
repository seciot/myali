package com.j256.ormlite.android.apptools;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.j256.ormlite.android.AndroidConnectionSource;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.SQLException;

public abstract class OrmLiteSqliteOpenHelper extends SQLiteOpenHelper
{
  protected static Logger logger = LoggerFactory.getLogger(OrmLiteSqliteOpenHelper.class);
  private volatile boolean a = true;
  protected AndroidConnectionSource connectionSource = new AndroidConnectionSource(this);

  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    logger.trace("{}: constructed connectionSource {}", this, this.connectionSource);
  }

  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt1, int paramInt2)
  {
    this(paramContext, paramString, paramCursorFactory, paramInt1, localInputStream);
  }

  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, File paramFile)
  {
    this(paramContext, paramString, paramCursorFactory, paramInt, a(paramFile));
  }

  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, InputStream paramInputStream)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    if (paramInputStream == null)
      return;
    try
    {
      DaoManager.addCachedDatabaseConfigs(DatabaseTableConfigLoader.loadDatabaseConfigFromReader(new BufferedReader(new InputStreamReader(paramInputStream), 4096)));
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException localIOException2)
      {
        return;
      }
    }
    catch (SQLException localSQLException)
    {
      localSQLException = localSQLException;
      throw new IllegalStateException("Could not load object config file", localSQLException);
    }
    finally
    {
    }
    try
    {
      paramInputStream.close();
      label87: throw localObject;
    }
    catch (IOException localIOException1)
    {
      break label87;
    }
  }

  private static InputStream a(File paramFile)
  {
    if (paramFile == null)
      return null;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      return localFileInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new IllegalArgumentException("Could not open config file " + paramFile, localFileNotFoundException);
    }
  }

  public void close()
  {
    super.close();
    this.connectionSource.close();
    this.a = false;
  }

  public ConnectionSource getConnectionSource()
  {
    if (!this.a)
      logger.warn(new IllegalStateException(), "Getting connectionSource was called after closed");
    return this.connectionSource;
  }

  public <D extends Dao<T, ?>, T> D getDao(Class<T> paramClass)
  {
    return DaoManager.createDao(getConnectionSource(), paramClass);
  }

  public <D extends RuntimeExceptionDao<T, ?>, T> D getRuntimeExceptionDao(Class<T> paramClass)
  {
    try
    {
      RuntimeExceptionDao localRuntimeExceptionDao = new RuntimeExceptionDao(getDao(paramClass));
      return localRuntimeExceptionDao;
    }
    catch (SQLException localSQLException)
    {
      throw new RuntimeException("Could not create RuntimeExcepitionDao for class " + paramClass, localSQLException);
    }
  }

  public boolean isOpen()
  {
    return this.a;
  }

  // ERROR //
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual 146	com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper:getConnectionSource	()Lcom/j256/ormlite/support/ConnectionSource;
    //   6: astore_3
    //   7: aload_3
    //   8: invokeinterface 174 1 0
    //   13: astore 4
    //   15: aload 4
    //   17: ifnonnull +73 -> 90
    //   20: new 176	com/j256/ormlite/android/AndroidDatabaseConnection
    //   23: dup
    //   24: aload_1
    //   25: iload_2
    //   26: invokespecial 179	com/j256/ormlite/android/AndroidDatabaseConnection:<init>	(Landroid/database/sqlite/SQLiteDatabase;Z)V
    //   29: astore 5
    //   31: aload_3
    //   32: aload 5
    //   34: invokeinterface 183 2 0
    //   39: pop
    //   40: aload_0
    //   41: aload_1
    //   42: aload_3
    //   43: invokevirtual 186	com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper:onCreate	(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    //   46: iload_2
    //   47: ifeq +11 -> 58
    //   50: aload_3
    //   51: aload 5
    //   53: invokeinterface 190 2 0
    //   58: return
    //   59: astore 6
    //   61: new 56	java/lang/IllegalStateException
    //   64: dup
    //   65: ldc 192
    //   67: aload 6
    //   69: invokespecial 115	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   72: athrow
    //   73: astore 8
    //   75: iload_2
    //   76: ifeq +11 -> 87
    //   79: aload_3
    //   80: aload 5
    //   82: invokeinterface 190 2 0
    //   87: aload 8
    //   89: athrow
    //   90: aload 4
    //   92: astore 5
    //   94: iconst_0
    //   95: istore_2
    //   96: goto -56 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   31	40	59	java/sql/SQLException
    //   40	46	73	finally
  }

  public abstract void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource);

  // ERROR //
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_0
    //   4: invokevirtual 146	com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper:getConnectionSource	()Lcom/j256/ormlite/support/ConnectionSource;
    //   7: astore 5
    //   9: aload 5
    //   11: invokeinterface 174 1 0
    //   16: astore 6
    //   18: aload 6
    //   20: ifnonnull +82 -> 102
    //   23: new 176	com/j256/ormlite/android/AndroidDatabaseConnection
    //   26: dup
    //   27: aload_1
    //   28: iload 4
    //   30: invokespecial 179	com/j256/ormlite/android/AndroidDatabaseConnection:<init>	(Landroid/database/sqlite/SQLiteDatabase;Z)V
    //   33: astore 7
    //   35: aload 5
    //   37: aload 7
    //   39: invokeinterface 183 2 0
    //   44: pop
    //   45: aload_0
    //   46: aload_1
    //   47: aload 5
    //   49: iload_2
    //   50: iload_3
    //   51: invokevirtual 197	com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper:onUpgrade	(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    //   54: iload 4
    //   56: ifeq +12 -> 68
    //   59: aload 5
    //   61: aload 7
    //   63: invokeinterface 190 2 0
    //   68: return
    //   69: astore 8
    //   71: new 56	java/lang/IllegalStateException
    //   74: dup
    //   75: ldc 192
    //   77: aload 8
    //   79: invokespecial 115	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   82: athrow
    //   83: astore 10
    //   85: iload 4
    //   87: ifeq +12 -> 99
    //   90: aload 5
    //   92: aload 7
    //   94: invokeinterface 190 2 0
    //   99: aload 10
    //   101: athrow
    //   102: aload 6
    //   104: astore 7
    //   106: iconst_0
    //   107: istore 4
    //   109: goto -64 -> 45
    //
    // Exception table:
    //   from	to	target	type
    //   35	45	69	java/sql/SQLException
    //   45	54	83	finally
  }

  public abstract void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2);

  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
 * JD-Core Version:    0.6.2
 */