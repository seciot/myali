package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class IsNotNull extends BaseComparison
{
  public IsNotNull(String paramString, FieldType paramFieldType)
  {
    super(paramString, paramFieldType, null, true);
  }

  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("IS NOT NULL ");
  }

  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.IsNotNull
 * JD-Core Version:    0.6.2
 */