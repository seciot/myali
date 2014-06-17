package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.support.DatabaseResults;

class StatementExecutor$UserObjectRowMapper<UO>
  implements GenericRowMapper<UO>
{
  private final RawRowMapper<UO> a;
  private final String[] b;
  private final GenericRowMapper<String[]> c;

  public StatementExecutor$UserObjectRowMapper(RawRowMapper<UO> paramRawRowMapper, String[] paramArrayOfString, GenericRowMapper<String[]> paramGenericRowMapper)
  {
    this.a = paramRawRowMapper;
    this.b = paramArrayOfString;
    this.c = paramGenericRowMapper;
  }

  public UO mapRow(DatabaseResults paramDatabaseResults)
  {
    String[] arrayOfString = (String[])this.c.mapRow(paramDatabaseResults);
    return this.a.mapRow(this.b, arrayOfString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.StatementExecutor.UserObjectRowMapper
 * JD-Core Version:    0.6.2
 */