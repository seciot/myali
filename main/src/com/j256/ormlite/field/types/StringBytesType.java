package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

public class StringBytesType extends BaseDataType
{
  private static final String DEFAULT_STRING_BYTES_CHARSET_NAME = "Unicode";
  private static final StringBytesType singleTon = new StringBytesType();

  private StringBytesType()
  {
    super(SqlType.BYTE_ARRAY, new Class[0]);
  }

  protected StringBytesType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  private String getCharsetName(FieldType paramFieldType)
  {
    if ((paramFieldType == null) || (paramFieldType.getFormat() == null))
      return "Unicode";
    return paramFieldType.getFormat();
  }

  public static StringBytesType getSingleton()
  {
    return singleTon;
  }

  public boolean isAppropriateId()
  {
    return false;
  }

  public boolean isArgumentHolderRequired()
  {
    return true;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    String str1 = (String)paramObject;
    String str2 = getCharsetName(paramFieldType);
    try
    {
      byte[] arrayOfByte = str1.getBytes(str2);
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw SqlExceptionUtil.create("Could not convert string with charset name: " + str2, localUnsupportedEncodingException);
    }
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    throw new SQLException("String-bytes type cannot have default values");
  }

  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    throw new SQLException("String-bytes type cannot be converted from string to Java");
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getBytes(paramInt);
  }

  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    byte[] arrayOfByte = (byte[])paramObject;
    String str1 = getCharsetName(paramFieldType);
    try
    {
      String str2 = new String(arrayOfByte, str1);
      return str2;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw SqlExceptionUtil.create("Could not convert string with charset name: " + str1, localUnsupportedEncodingException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.StringBytesType
 * JD-Core Version:    0.6.2
 */