package com.j256.ormlite.dao;

import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;

class DaoManager$TableConfigConnectionSource
{
  ConnectionSource connectionSource;
  DatabaseTableConfig<?> tableConfig;

  public DaoManager$TableConfigConnectionSource(ConnectionSource paramConnectionSource, DatabaseTableConfig<?> paramDatabaseTableConfig)
  {
    this.connectionSource = paramConnectionSource;
    this.tableConfig = paramDatabaseTableConfig;
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (getClass() != paramObject.getClass()));
    TableConfigConnectionSource localTableConfigConnectionSource;
    do
    {
      return false;
      localTableConfigConnectionSource = (TableConfigConnectionSource)paramObject;
    }
    while ((!this.tableConfig.equals(localTableConfigConnectionSource.tableConfig)) || (!this.connectionSource.equals(localTableConfigConnectionSource.connectionSource)));
    return true;
  }

  public int hashCode()
  {
    return 31 * (31 + this.tableConfig.hashCode()) + this.connectionSource.hashCode();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.DaoManager.TableConfigConnectionSource
 * JD-Core Version:    0.6.2
 */