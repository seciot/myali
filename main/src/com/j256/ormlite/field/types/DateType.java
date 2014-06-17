package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;

public class DateType extends BaseDateType
{
  private static final BaseDateType.DateStringFormatConfig defaultDateFormatConfig = new BaseDateType.DateStringFormatConfig("yyyy-MM-dd HH:mm:ss.SSSSSS");
  private static final DateType singleTon = new DateType();

  private DateType()
  {
    super(SqlType.DATE, new Class[] { Date.class });
  }

  protected DateType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static DateType getSingleton()
  {
    return singleTon;
  }

  protected BaseDateType.DateStringFormatConfig getDefaultDateFormatConfig()
  {
    return defaultDateFormatConfig;
  }

  public boolean isArgumentHolderRequired()
  {
    return true;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    return new Timestamp(((Date)paramObject).getTime());
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    BaseDateType.DateStringFormatConfig localDateStringFormatConfig = convertDateStringConfig(paramFieldType, getDefaultDateFormatConfig());
    try
    {
      Timestamp localTimestamp = new Timestamp(parseDateString(localDateStringFormatConfig, paramString).getTime());
      return localTimestamp;
    }
    catch (ParseException localParseException)
    {
      throw SqlExceptionUtil.create("Problems parsing default date string '" + paramString + "' using '" + localDateStringFormatConfig + '\'', localParseException);
    }
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getTimestamp(paramInt);
  }

  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    return new Date(((Timestamp)paramObject).getTime());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.DateType
 * JD-Core Version:    0.6.2
 */