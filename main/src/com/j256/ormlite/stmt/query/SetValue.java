package com.j256.ormlite.stmt.query;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.NullArgHolder;

public class SetValue extends BaseComparison
{
  private static final ArgumentHolder a = new NullArgHolder();

  public SetValue(String paramString, FieldType paramFieldType, Object paramObject)
  {
    super(paramString, paramFieldType, paramObject, false);
  }

  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("= ");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.SetValue
 * JD-Core Version:    0.6.2
 */