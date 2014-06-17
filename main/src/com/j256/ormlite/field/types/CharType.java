package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;

public class CharType extends CharacterObjectType
{
  private static final CharType singleTon = new CharType();

  private CharType()
  {
    super(localSqlType, arrayOfClass);
  }

  protected CharType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static CharType getSingleton()
  {
    return singleTon;
  }

  public boolean isPrimitive()
  {
    return true;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    Character localCharacter = (Character)paramObject;
    if ((localCharacter == null) || (localCharacter.charValue() == 0))
      localCharacter = null;
    return localCharacter;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.CharType
 * JD-Core Version:    0.6.2
 */