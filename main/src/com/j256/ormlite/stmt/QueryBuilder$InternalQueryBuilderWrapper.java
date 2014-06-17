package com.j256.ormlite.stmt;

import com.j256.ormlite.field.FieldType;
import java.util.List;

public class QueryBuilder$InternalQueryBuilderWrapper
{
  private final QueryBuilder<?, ?> a;

  QueryBuilder$InternalQueryBuilderWrapper(QueryBuilder<?, ?> paramQueryBuilder)
  {
    this.a = paramQueryBuilder;
  }

  public void appendStatementString(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    this.a.appendStatementString(paramStringBuilder, paramList);
  }

  public FieldType[] getResultFieldTypes()
  {
    return QueryBuilder.access$000(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.QueryBuilder.InternalQueryBuilderWrapper
 * JD-Core Version:    0.6.2
 */