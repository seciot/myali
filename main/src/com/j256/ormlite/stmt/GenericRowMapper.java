package com.j256.ormlite.stmt;

import com.j256.ormlite.support.DatabaseResults;

public abstract interface GenericRowMapper<T>
{
  public abstract T mapRow(DatabaseResults paramDatabaseResults);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.GenericRowMapper
 * JD-Core Version:    0.6.2
 */