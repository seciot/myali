package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class Between extends BaseComparison
{
  private Object a;
  private Object b;

  public Between(String paramString, FieldType paramFieldType, Object paramObject1, Object paramObject2)
  {
    super(paramString, paramFieldType, null, true);
    this.a = paramObject1;
    this.b = paramObject2;
  }

  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("BETWEEN ");
  }

  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if (this.a == null)
      throw new IllegalArgumentException("BETWEEN low value for '" + this.columnName + "' is null");
    if (this.b == null)
      throw new IllegalArgumentException("BETWEEN high value for '" + this.columnName + "' is null");
    appendArgOrValue(paramDatabaseType, this.fieldType, paramStringBuilder, paramList, this.a);
    paramStringBuilder.append("AND ");
    appendArgOrValue(paramDatabaseType, this.fieldType, paramStringBuilder, paramList, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.Between
 * JD-Core Version:    0.6.2
 */