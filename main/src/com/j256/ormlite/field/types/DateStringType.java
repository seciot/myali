package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

public class DateStringType extends BaseDateType
{
  public static int DEFAULT_WIDTH = 50;
  private static final BaseDateType.DateStringFormatConfig defaultDateFormatConfig = new BaseDateType.DateStringFormatConfig("yyyy-MM-dd HH:mm:ss.SSSSSS");
  private static final DateStringType singleTon = new DateStringType();

  private DateStringType()
  {
    super(SqlType.STRING, new Class[0]);
  }

  protected DateStringType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static DateStringType getSingleton()
  {
    return singleTon;
  }

  public int getDefaultWidth()
  {
    return DEFAULT_WIDTH;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    return convertDateStringConfig(paramFieldType, defaultDateFormatConfig).getDateFormat().format((Date)paramObject);
  }

  public Object makeConfigObject(FieldType paramFieldType)
  {
    String str = paramFieldType.getFormat();
    if (str == null)
      return defaultDateFormatConfig;
    return new BaseDateType.DateStringFormatConfig(str);
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    BaseDateType.DateStringFormatConfig localDateStringFormatConfig = convertDateStringConfig(paramFieldType, defaultDateFormatConfig);
    try
    {
      String str = normalizeDateString(localDateStringFormatConfig, paramString);
      return str;
    }
    catch (ParseException localParseException)
    {
      throw SqlExceptionUtil.create("Problems with field " + paramFieldType + " parsing default date-string '" + paramString + "' using '" + localDateStringFormatConfig + "'", localParseException);
    }
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
    String str = (String)paramObject;
    BaseDateType.DateStringFormatConfig localDateStringFormatConfig = convertDateStringConfig(paramFieldType, defaultDateFormatConfig);
    try
    {
      Date localDate = parseDateString(localDateStringFormatConfig, str);
      return localDate;
    }
    catch (ParseException localParseException)
    {
      throw SqlExceptionUtil.create("Problems with column " + paramInt + " parsing date-string '" + str + "' using '" + localDateStringFormatConfig + "'", localParseException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.DateStringType
 * JD-Core Version:    0.6.2
 */