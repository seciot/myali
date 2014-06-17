package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.QueryBuilder.InternalQueryBuilderWrapper;
import java.util.List;

public class Exists
  implements Clause
{
  private final QueryBuilder.InternalQueryBuilderWrapper a;

  public Exists(QueryBuilder.InternalQueryBuilderWrapper paramInternalQueryBuilderWrapper)
  {
    this.a = paramInternalQueryBuilderWrapper;
  }

  public void appendSql(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append("EXISTS (");
    this.a.appendStatementString(paramStringBuilder, paramList);
    paramStringBuilder.append(") ");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.Exists
 * JD-Core Version:    0.6.2
 */