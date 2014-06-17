package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;

public class BooleanObjectType extends BaseDataType
{
  private static final BooleanObjectType singleTon = new BooleanObjectType();

  private BooleanObjectType()
  {
    super(SqlType.BOOLEAN, new Class[] { Boolean.class });
  }

  protected BooleanObjectType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static BooleanObjectType getSingleton()
  {
    return singleTon;
  }

  public boolean isAppropriateId()
  {
    return false;
  }

  public boolean isEscapedValue()
  {
    return false;
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return Boolean.valueOf(Boolean.parseBoolean(paramString));
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Boolean.valueOf(paramDatabaseResults.getBoolean(paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.BooleanObjectType
 * JD-Core Version:    0.6.2
 */