package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;

public class IntegerObjectType extends BaseDataType
{
  private static final IntegerObjectType singleTon = new IntegerObjectType();

  private IntegerObjectType()
  {
    super(SqlType.INTEGER, new Class[] { Integer.class });
  }

  protected IntegerObjectType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static IntegerObjectType getSingleton()
  {
    return singleTon;
  }

  public Object convertIdNumber(Number paramNumber)
  {
    return Integer.valueOf(paramNumber.intValue());
  }

  public boolean isEscapedValue()
  {
    return false;
  }

  public boolean isValidForVersion()
  {
    return true;
  }

  public boolean isValidGeneratedType()
  {
    return true;
  }

  public Object moveToNextValue(Object paramObject)
  {
    if (paramObject == null)
      return Integer.valueOf(1);
    return Integer.valueOf(1 + ((Integer)paramObject).intValue());
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return Integer.valueOf(Integer.parseInt(paramString));
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Integer.valueOf(paramDatabaseResults.getInt(paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.IntegerObjectType
 * JD-Core Version:    0.6.2
 */