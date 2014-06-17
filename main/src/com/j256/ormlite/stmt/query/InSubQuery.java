package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.QueryBuilder.InternalQueryBuilderWrapper;
import java.sql.SQLException;
import java.util.List;

public class InSubQuery extends BaseComparison
{
  private final QueryBuilder.InternalQueryBuilderWrapper a;
  private final boolean b;

  public InSubQuery(String paramString, FieldType paramFieldType, QueryBuilder.InternalQueryBuilderWrapper paramInternalQueryBuilderWrapper, boolean paramBoolean)
  {
    super(paramString, paramFieldType, null, true);
    this.a = paramInternalQueryBuilderWrapper;
    this.b = paramBoolean;
  }

  public void appendOperation(StringBuilder paramStringBuilder)
  {
    if (this.b)
    {
      paramStringBuilder.append("IN ");
      return;
    }
    paramStringBuilder.append("NOT IN ");
  }

  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append('(');
    this.a.appendStatementString(paramStringBuilder, paramList);
    FieldType[] arrayOfFieldType = this.a.getResultFieldTypes();
    if (arrayOfFieldType.length != 1)
      throw new SQLException("There must be only 1 result column in sub-query but we found " + arrayOfFieldType.length);
    if (this.fieldType.getSqlType() != arrayOfFieldType[0].getSqlType())
      throw new SQLException("Outer column " + this.fieldType + " is not the same type as inner column " + arrayOfFieldType[0]);
    paramStringBuilder.append(") ");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.InSubQuery
 * JD-Core Version:    0.6.2
 */