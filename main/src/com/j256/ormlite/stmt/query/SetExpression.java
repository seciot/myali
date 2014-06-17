package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class SetExpression extends BaseComparison
{
  public SetExpression(String paramString1, FieldType paramFieldType, String paramString2)
  {
    super(paramString1, paramFieldType, paramString2, true);
  }

  protected void appendArgOrValue(DatabaseType paramDatabaseType, FieldType paramFieldType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList, Object paramObject)
  {
    paramStringBuilder.append(paramObject).append(' ');
  }

  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("= ");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.SetExpression
 * JD-Core Version:    0.6.2
 */