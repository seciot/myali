package com.j256.ormlite.field.types;

import com.j256.ormlite.field.BaseFieldConverter;
import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.lang.reflect.Field;

public abstract class BaseDataType extends BaseFieldConverter
  implements DataPersister
{
  private final Class<?>[] classes;
  private final SqlType sqlType;

  public BaseDataType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    this.sqlType = paramSqlType;
    this.classes = paramArrayOfClass;
  }

  public Object convertIdNumber(Number paramNumber)
  {
    return null;
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
    return paramObject1.equals(paramObject2);
  }

  public Object generateId()
  {
    throw new IllegalStateException("Should not have tried to generate this type");
  }

  public String[] getAssociatedClassNames()
  {
    return null;
  }

  public Class<?>[] getAssociatedClasses()
  {
    return this.classes;
  }

  public int getDefaultWidth()
  {
    return 0;
  }

  public SqlType getSqlType()
  {
    return this.sqlType;
  }

  public boolean isAppropriateId()
  {
    return true;
  }

  public boolean isArgumentHolderRequired()
  {
    return false;
  }

  public boolean isComparable()
  {
    return true;
  }

  public boolean isEscapedDefaultValue()
  {
    return isEscapedValue();
  }

  public boolean isEscapedValue()
  {
    return true;
  }

  public boolean isPrimitive()
  {
    return false;
  }

  public boolean isSelfGeneratedId()
  {
    return false;
  }

  public boolean isValidForField(Field paramField)
  {
    if (this.classes.length == 0)
      return true;
    Class[] arrayOfClass = this.classes;
    int i = arrayOfClass.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        break label47;
      if (arrayOfClass[j].isAssignableFrom(paramField.getType()))
        break;
    }
    label47: return false;
  }

  public boolean isValidForVersion()
  {
    return false;
  }

  public boolean isValidGeneratedType()
  {
    return false;
  }

  public Object makeConfigObject(FieldType paramFieldType)
  {
    return null;
  }

  public Object moveToNextValue(Object paramObject)
  {
    return null;
  }

  public abstract Object parseDefaultString(FieldType paramFieldType, String paramString);

  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    return parseDefaultString(paramFieldType, paramString);
  }

  public abstract Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.types.BaseDataType
 * JD-Core Version:    0.6.2
 */