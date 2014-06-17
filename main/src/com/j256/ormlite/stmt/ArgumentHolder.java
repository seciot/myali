package com.j256.ormlite.stmt;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;

public abstract interface ArgumentHolder
{
  public abstract String getColumnName();

  public abstract FieldType getFieldType();

  public abstract Object getSqlArgValue();

  public abstract SqlType getSqlType();

  public abstract void setMetaInfo(FieldType paramFieldType);

  public abstract void setMetaInfo(String paramString);

  public abstract void setMetaInfo(String paramString, FieldType paramFieldType);

  public abstract void setValue(Object paramObject);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.ArgumentHolder
 * JD-Core Version:    0.6.2
 */