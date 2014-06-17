package com.j256.ormlite.stmt;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.sql.SQLException;

public abstract class BaseArgumentHolder
  implements ArgumentHolder
{
  private String a = null;
  private FieldType b = null;
  private SqlType c = null;

  public BaseArgumentHolder()
  {
  }

  public BaseArgumentHolder(SqlType paramSqlType)
  {
    this.c = paramSqlType;
  }

  public BaseArgumentHolder(String paramString)
  {
    this.a = paramString;
  }

  public String getColumnName()
  {
    return this.a;
  }

  public FieldType getFieldType()
  {
    return this.b;
  }

  public Object getSqlArgValue()
  {
    if (!isValueSet())
      throw new SQLException("Column value has not been set for " + this.a);
    Object localObject = getValue();
    if (localObject == null)
      localObject = null;
    while (this.b == null)
      return localObject;
    if ((this.b.isForeign()) && (this.b.getType() == localObject.getClass()))
      return this.b.getForeignIdField().extractJavaFieldValue(localObject);
    return this.b.convertJavaFieldToSqlArgValue(localObject);
  }

  public SqlType getSqlType()
  {
    return this.c;
  }

  protected abstract Object getValue();

  protected abstract boolean isValueSet();

  public void setMetaInfo(FieldType paramFieldType)
  {
    if ((this.b != null) && (this.b != paramFieldType))
      throw new IllegalArgumentException("FieldType name cannot be set twice from " + this.b + " to " + paramFieldType + ".  Using a SelectArg twice in query with different columns?");
    this.b = paramFieldType;
  }

  public void setMetaInfo(String paramString)
  {
    if ((this.a != null) && (!this.a.equals(paramString)))
      throw new IllegalArgumentException("Column name cannot be set twice from " + this.a + " to " + paramString + ".  Using a SelectArg twice in query with different columns?");
    this.a = paramString;
  }

  public void setMetaInfo(String paramString, FieldType paramFieldType)
  {
    setMetaInfo(paramString);
    setMetaInfo(paramFieldType);
  }

  public abstract void setValue(Object paramObject);

  public String toString()
  {
    if (!isValueSet())
      return "[unset]";
    try
    {
      Object localObject = getSqlArgValue();
      if (localObject == null)
        return "[null]";
      String str = localObject.toString();
      return str;
    }
    catch (SQLException localSQLException)
    {
      return "[could not get value: " + localSQLException + "]";
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.BaseArgumentHolder
 * JD-Core Version:    0.6.2
 */