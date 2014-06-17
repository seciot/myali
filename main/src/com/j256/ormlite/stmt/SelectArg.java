package com.j256.ormlite.stmt;

import com.j256.ormlite.field.SqlType;

public class SelectArg extends BaseArgumentHolder
  implements ArgumentHolder
{
  private boolean a = false;
  private Object b = null;

  public SelectArg()
  {
  }

  public SelectArg(SqlType paramSqlType, Object paramObject)
  {
    super(paramSqlType);
    setValue(paramObject);
  }

  public SelectArg(Object paramObject)
  {
    setValue(paramObject);
  }

  public SelectArg(String paramString, Object paramObject)
  {
    super(paramString);
    setValue(paramObject);
  }

  protected Object getValue()
  {
    return this.b;
  }

  protected boolean isValueSet()
  {
    return this.a;
  }

  public void setValue(Object paramObject)
  {
    this.a = true;
    this.b = paramObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.SelectArg
 * JD-Core Version:    0.6.2
 */