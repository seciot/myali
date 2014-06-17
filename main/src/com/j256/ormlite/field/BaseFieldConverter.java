package com.j256.ormlite.field;

import com.j256.ormlite.support.DatabaseResults;

public abstract class BaseFieldConverter
  implements FieldConverter
{
  public boolean isStreamType()
  {
    return false;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    return paramObject;
  }

  public Object resultToJava(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    Object localObject = resultToSqlArg(paramFieldType, paramDatabaseResults, paramInt);
    if (localObject == null)
      return null;
    return sqlArgToJava(paramFieldType, localObject, paramInt);
  }

  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    return paramObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.BaseFieldConverter
 * JD-Core Version:    0.6.2
 */