package com.j256.ormlite.android;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.BaseConnectionSource;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;

public class AndroidConnectionSource extends BaseConnectionSource
  implements ConnectionSource
{
  private static final Logger a = LoggerFactory.getLogger(AndroidConnectionSource.class);
  private final SQLiteOpenHelper b;
  private final SQLiteDatabase c;
  private AndroidDatabaseConnection d = null;
  private volatile boolean e = true;
  private final DatabaseType f = new SqliteAndroidDatabaseType();

  public AndroidConnectionSource(SQLiteDatabase paramSQLiteDatabase)
  {
    this.b = null;
    this.c = paramSQLiteDatabase;
  }

  public AndroidConnectionSource(SQLiteOpenHelper paramSQLiteOpenHelper)
  {
    this.b = paramSQLiteOpenHelper;
    this.c = null;
  }

  public void clearSpecialConnection(DatabaseConnection paramDatabaseConnection)
  {
    clearSpecial(paramDatabaseConnection, a);
  }

  public void close()
  {
    this.e = false;
  }

  public DatabaseType getDatabaseType()
  {
    return this.f;
  }

  public DatabaseConnection getReadOnlyConnection()
  {
    return getReadWriteConnection();
  }

  public DatabaseConnection getReadWriteConnection()
  {
    DatabaseConnection localDatabaseConnection = getSavedConnection();
    if (localDatabaseConnection != null)
      return localDatabaseConnection;
    if (this.d == null)
      if (this.c != null);
    while (true)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase2 = this.b.getWritableDatabase();
        localSQLiteDatabase1 = localSQLiteDatabase2;
        this.d = new AndroidDatabaseConnection(localSQLiteDatabase1, true);
        a.trace("created connection {} for db {}, helper {}", this.d, localSQLiteDatabase1, this.b);
        return this.d;
      }
      catch (SQLException localSQLException)
      {
        throw SqlExceptionUtil.create("Getting a writable database from helper " + this.b + " failed", localSQLException);
      }
      SQLiteDatabase localSQLiteDatabase1 = this.c;
      continue;
      a.trace("{}: returning read-write connection {}, helper {}", this, this.d, this.b);
    }
  }

  public boolean isOpen()
  {
    return this.e;
  }

  public void releaseConnection(DatabaseConnection paramDatabaseConnection)
  {
  }

  public boolean saveSpecialConnection(DatabaseConnection paramDatabaseConnection)
  {
    return saveSpecial(paramDatabaseConnection);
  }

  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.AndroidConnectionSource
 * JD-Core Version:    0.6.2
 */