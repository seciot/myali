package com.j256.ormlite.support;

import com.j256.ormlite.logger.Logger;
import java.sql.SQLException;

public abstract class BaseConnectionSource
  implements ConnectionSource
{
  private ThreadLocal<BaseConnectionSource.NestedConnection> a = new ThreadLocal();

  protected boolean clearSpecial(DatabaseConnection paramDatabaseConnection, Logger paramLogger)
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)this.a.get();
    if (paramDatabaseConnection != null)
    {
      if (localNestedConnection == null)
      {
        paramLogger.error("no connection has been saved when clear() called");
        return false;
      }
      if (localNestedConnection.connection == paramDatabaseConnection)
      {
        if (localNestedConnection.decrementAndGet() == 0)
          this.a.set(null);
        return true;
      }
      paramLogger.error("connection saved {} is not the one being cleared {}", localNestedConnection.connection, paramDatabaseConnection);
    }
    return false;
  }

  protected DatabaseConnection getSavedConnection()
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)this.a.get();
    if (localNestedConnection == null)
      return null;
    return localNestedConnection.connection;
  }

  public DatabaseConnection getSpecialConnection()
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)this.a.get();
    if (localNestedConnection == null)
      return null;
    return localNestedConnection.connection;
  }

  protected boolean isSavedConnection(DatabaseConnection paramDatabaseConnection)
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)this.a.get();
    if (localNestedConnection == null)
      return false;
    return localNestedConnection.connection == paramDatabaseConnection;
  }

  protected boolean saveSpecial(DatabaseConnection paramDatabaseConnection)
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)this.a.get();
    if (localNestedConnection == null)
    {
      this.a.set(new BaseConnectionSource.NestedConnection(paramDatabaseConnection));
      return true;
    }
    if (localNestedConnection.connection != paramDatabaseConnection)
      throw new SQLException("trying to save connection " + paramDatabaseConnection + " but already have saved connection " + localNestedConnection.connection);
    localNestedConnection.increment();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.support.BaseConnectionSource
 * JD-Core Version:    0.6.2
 */