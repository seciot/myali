package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class EnumStringType extends BaseEnumType
{
  public static int DEFAULT_WIDTH = 100;
  private static final EnumStringType singleTon = new EnumStringType();

  private EnumStringType()
  {
    super(SqlType.STRING, new Class[] { Enum.class });
  }

  protected EnumStringType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static EnumStringType getSingleton()
  {
    return singleTon;
  }

  public int getDefaultWidth()
  {
    return DEFAULT_WIDTH;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    return ((Enum)paramObject).name();
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
      localHashMap.put(localEnum.name(), localEnum);
    }
    return localHashMap;
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return paramString;
  }

  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    return sqlArgToJava(paramFieldType, paramString, paramInt);
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getString(paramInt);
  }

  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    if (paramFieldType == null)
      return paramObject;
    String str = (String)paramObject;
    Map localMap = (Map)paramFieldType.getDataTypeConfigObj();
    if (localMap == null)
      return enumVal(paramFieldType, str, null, paramFieldType.getUnknownEnumVal());
    return enumVal(paramFieldType, str, (Enum)localMap.get(str), paramFieldType.getUnknownEnumVal());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.EnumStringType
 * JD-Core Version:    0.6.2
 */