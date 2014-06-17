package com.j256.ormlite.field;

import com.j256.ormlite.support.DatabaseResults;

public abstract interface FieldConverter
{
  public abstract SqlType getSqlType();

  public abstract boolean isStreamType();

  public abstract Object javaToSqlArg(FieldType paramFieldType, Object paramObject);

  public abstract Object parseDefaultString(FieldType paramFieldType, String paramString);

  public abstract Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt);

  public abstract Object resultToJava(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt);

  public abstract Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt);

  public abstract Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.FieldConverter
 * JD-Core Version:    0.6.2
 */