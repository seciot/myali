package com.j256.ormlite.dao;

public abstract interface RawRowMapper<T>
{
  public abstract T mapRow(String[] paramArrayOfString1, String[] paramArrayOfString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.RawRowMapper
 * JD-Core Version:    0.6.2
 */