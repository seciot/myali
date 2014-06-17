package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseResults;
import java.lang.reflect.Field;

public class VoidType extends BaseDataType
{
  VoidType()
  {
    super(null, new Class[0]);
  }

  public boolean isValidForField(Field paramField)
  {
    return false;
  }

  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return null;
  }

  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.VoidType
 * JD-Core Version:    0.6.2
 */