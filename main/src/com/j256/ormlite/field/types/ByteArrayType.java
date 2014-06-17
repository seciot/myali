package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
import java.util.Arrays;

public class ByteArrayType extends BaseDataType
{
  private static final ByteArrayType singleTon = new ByteArrayType();

  private ByteArrayType()
  {
    super(SqlType.BYTE_ARRAY, new Class[0]);
  }

  protected ByteArrayType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static ByteArrayType getSingleton()
  {
    return singleTon;
  }

  public boolean dataIsEqual(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
    {
      bool = false;
      if (paramObject2 == null)
        bool = true;
    }
    do
    {
      return bool;
      bool = false;
    }
    while (paramObject2 == null);
    return Arrays.equals((byte[])paramObject1, (byte[])paramObject2);
  }

  public boolean isAppropriateId()
  {
    return false;
  }

  public boolean isArgumentHolderRequired()
  {
    return true;
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    throw new SQLException("byte[] type cannot have default values");
  }

  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    throw new SQLException("byte[] type cannot be converted from string to Java");
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return (byte[])paramDatabaseResults.getBytes(paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.ByteArrayType
 * JD-Core Version:    0.6.2
 */