package com.j256.ormlite.field.types;

import com.j256.ormlite.field.SqlType;

public class LongStringType extends StringType
{
  private static final LongStringType singleTon = new LongStringType();

  private LongStringType()
  {
    super(SqlType.LONG_STRING, new Class[0]);
  }

  protected LongStringType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static LongStringType getSingleton()
  {
    return singleTon;
  }

  public int getDefaultWidth()
  {
    return 0;
  }

  public boolean isAppropriateId()
  {
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.LongStringType
 * JD-Core Version:    0.6.2
 */