package com.j256.ormlite.field.types;

import com.j256.ormlite.field.SqlType;

public class LongType extends LongObjectType
{
  private static final LongType singleTon = new LongType();

  private LongType()
  {
    super(localSqlType, arrayOfClass);
  }

  protected LongType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static LongType getSingleton()
  {
    return singleTon;
  }

  public boolean isPrimitive()
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.LongType
 * JD-Core Version:    0.6.2
 */