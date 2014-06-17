package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.util.Date;

public abstract class BaseDateType extends BaseDataType
{
  protected BaseDateType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  protected static BaseDateType.DateStringFormatConfig convertDateStringConfig(FieldType paramFieldType, BaseDateType.DateStringFormatConfig paramDateStringFormatConfig)
  {
    if (paramFieldType == null);
    BaseDateType.DateStringFormatConfig localDateStringFormatConfig;
    do
    {
      return paramDateStringFormatConfig;
      localDateStringFormatConfig = (BaseDateType.DateStringFormatConfig)paramFieldType.getDataTypeConfigObj();
    }
    while (localDateStringFormatConfig == null);
    return localDateStringFormatConfig;
  }

  protected static String normalizeDateString(BaseDateType.DateStringFormatConfig paramDateStringFormatConfig, String paramString)
  {
    DateFormat localDateFormat = paramDateStringFormatConfig.getDateFormat();
    return localDateFormat.format(localDateFormat.parse(paramString));
  }

  protected static Date parseDateString(BaseDateType.DateStringFormatConfig paramDateStringFormatConfig, String paramString)
  {
    return paramDateStringFormatConfig.getDateFormat().parse(paramString);
  }

  public boolean isValidForField(Field paramField)
  {
    return paramField.getType() == Date.class;
  }

  public boolean isValidForVersion()
  {
    return true;
  }

  public Object moveToNextValue(Object paramObject)
  {
    long l = System.currentTimeMillis();
    if (paramObject == null)
      return new Date(l);
    if (l == ((Date)paramObject).getTime())
      return new Date(l + 1L);
    return new Date(l);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.BaseDateType
 * JD-Core Version:    0.6.2
 */