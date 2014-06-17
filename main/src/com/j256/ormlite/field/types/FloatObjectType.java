package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;

public class FloatObjectType extends BaseDataType
{
  private static final FloatObjectType singleTon = new FloatObjectType();

  private FloatObjectType()
  {
    super(SqlType.FLOAT, new Class[] { Float.class });
  }

  protected FloatObjectType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static FloatObjectType getSingleton()
  {
    return singleTon;
  }

  public boolean isEscapedValue()
  {
    return false;
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return Float.valueOf(Float.parseFloat(paramString));
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Float.valueOf(paramDatabaseResults.getFloat(paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.FloatObjectType
 * JD-Core Version:    0.6.2
 */