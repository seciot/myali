package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.math.BigDecimal;

public class BigDecimalStringType extends BaseDataType
{
  public static int DEFAULT_WIDTH = 255;
  private static final BigDecimalStringType singleTon = new BigDecimalStringType();

  private BigDecimalStringType()
  {
    super(SqlType.STRING, new Class[] { BigDecimal.class });
  }

  protected BigDecimalStringType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }

  public static BigDecimalStringType getSingleton()
  {
    return singleTon;
  }

  public int getDefaultWidth()
  {
    return DEFAULT_WIDTH;
  }

  public boolean isAppropriateId()
  {
    return false;
  }

  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    return ((BigDecimal)paramObject).toString();
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    try
    {
      BigDecimal localBigDecimal = new BigDecimal(paramString);
      return localBigDecimal;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw SqlExceptionUtil.create("Problems with field " + paramFieldType + " parsing default BigDecimal string '" + paramString + "'", localIllegalArgumentException);
    }
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getString(paramInt);
  }

  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    try
    {
      BigDecimal localBigDecimal = new BigDecimal((String)paramObject);
      return localBigDecimal;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw SqlExceptionUtil.create("Problems with column " + paramInt + " parsing BigDecimal string '" + paramObject + "'", localIllegalArgumentException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.BigDecimalStringType
 * JD-Core Version:    0.6.2
 */