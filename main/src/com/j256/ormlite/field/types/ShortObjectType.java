package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;

public class ShortObjectType extends BaseDataType
{
  private static final ShortObjectType singleTon = new ShortObjectType();

  private ShortObjectType()
  {
    super(SqlType.SHORT, new Class[] { Short.class });
  }

  protected ShortObjectType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static ShortObjectType getSingleton()
  {
    return singleTon;
  }

  public boolean isEscapedValue()
  {
    return false;
  }

  public boolean isValidForVersion()
  {
    return true;
  }

  public Object moveToNextValue(Object paramObject)
  {
    if (paramObject == null)
      return Short.valueOf((short)1);
    return Short.valueOf((short)(1 + ((Short)paramObject).shortValue()));
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return Short.valueOf(Short.parseShort(paramString));
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Short.valueOf(paramDatabaseResults.getShort(paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.ShortObjectType
 * JD-Core Version:    0.6.2
 */