package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class EnumIntegerType extends BaseEnumType
{
  private static final EnumIntegerType singleTon = new EnumIntegerType();

  private EnumIntegerType()
  {
    super(SqlType.INTEGER, new Class[0]);
  }

  protected EnumIntegerType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static EnumIntegerType getSingleton()
  {
    return singleTon;
  }

  public boolean isEscapedValue()
  {
    return false;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    return Integer.valueOf(((Enum)paramObject).ordinal());
  }

  public Object makeConfigObject(FieldType paramFieldType)
  {
    HashMap localHashMap = new HashMap();
    Enum[] arrayOfEnum = (Enum[])paramFieldType.getType().getEnumConstants();
    if (arrayOfEnum == null)
      throw new SQLException("Field " + paramFieldType + " improperly configured as type " + this);
    int i = arrayOfEnum.length;
    for (int j = 0; j < i; j++)
    {
      Enum localEnum = arrayOfEnum[j];
      localHashMap.put(Integer.valueOf(localEnum.ordinal()), localEnum);
    }
    return localHashMap;
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return Integer.valueOf(Integer.parseInt(paramString));
  }

  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    return sqlArgToJava(paramFieldType, Integer.valueOf(Integer.parseInt(paramString)), paramInt);
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Integer.valueOf(paramDatabaseResults.getInt(paramInt));
  }

  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    if (paramFieldType == null)
      return paramObject;
    Integer localInteger = (Integer)paramObject;
    Map localMap = (Map)paramFieldType.getDataTypeConfigObj();
    if (localMap == null)
      return enumVal(paramFieldType, localInteger, null, paramFieldType.getUnknownEnumVal());
    return enumVal(paramFieldType, localInteger, (Enum)localMap.get(localInteger), paramFieldType.getUnknownEnumVal());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.EnumIntegerType
 * JD-Core Version:    0.6.2
 */