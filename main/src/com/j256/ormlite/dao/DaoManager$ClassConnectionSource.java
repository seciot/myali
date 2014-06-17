package com.j256.ormlite.dao;

import com.j256.ormlite.support.ConnectionSource;

class DaoManager$ClassConnectionSource
{
  Class<?> clazz;
  ConnectionSource connectionSource;

  public DaoManager$ClassConnectionSource(ConnectionSource paramConnectionSource, Class<?> paramClass)
  {
    this.connectionSource = paramConnectionSource;
    this.clazz = paramClass;
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (getClass() != paramObject.getClass()));
    ClassConnectionSource localClassConnectionSource;
    do
    {
      return false;
      localClassConnectionSource = (ClassConnectionSource)paramObject;
    }
    while ((!this.clazz.equals(localClassConnectionSource.clazz)) || (!this.connectionSource.equals(localClassConnectionSource.connectionSource)));
    return true;
  }

  public int hashCode()
  {
    return 31 * (31 + this.clazz.hashCode()) + this.connectionSource.hashCode();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.DaoManager.ClassConnectionSource
 * JD-Core Version:    0.6.2
 */