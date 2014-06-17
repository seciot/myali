package com.j256.ormlite.support;

import com.j256.ormlite.db.DatabaseType;

public abstract interface ConnectionSource
{
  public abstract void clearSpecialConnection(DatabaseConnection paramDatabaseConnection);

  public abstract void close();

  public abstract DatabaseType getDatabaseType();

  public abstract DatabaseConnection getReadOnlyConnection();

  public abstract DatabaseConnection getReadWriteConnection();

  public abstract DatabaseConnection getSpecialConnection();

  public abstract boolean isOpen();

  public abstract void releaseConnection(DatabaseConnection paramDatabaseConnection);

  public abstract boolean saveSpecialConnection(DatabaseConnection paramDatabaseConnection);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.support.ConnectionSource
 * JD-Core Version:    0.6.2
 */