package com.j256.ormlite.support;

import com.j256.ormlite.dao.ObjectCache;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.Timestamp;

public abstract interface DatabaseResults
{
  public abstract int findColumn(String paramString);

  public abstract boolean first();

  public abstract BigDecimal getBigDecimal(int paramInt);

  public abstract InputStream getBlobStream(int paramInt);

  public abstract boolean getBoolean(int paramInt);

  public abstract byte getByte(int paramInt);

  public abstract byte[] getBytes(int paramInt);

  public abstract char getChar(int paramInt);

  public abstract int getColumnCount();

  public abstract double getDouble(int paramInt);

  public abstract float getFloat(int paramInt);

  public abstract int getInt(int paramInt);

  public abstract long getLong(int paramInt);

  public abstract ObjectCache getObjectCache();

  public abstract short getShort(int paramInt);

  public abstract String getString(int paramInt);

  public abstract Timestamp getTimestamp(int paramInt);

  public abstract boolean moveRelative(int paramInt);

  public abstract boolean next();

  public abstract boolean previous();

  public abstract boolean wasNull(int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.support.DatabaseResults
 * JD-Core Version:    0.6.2
 */