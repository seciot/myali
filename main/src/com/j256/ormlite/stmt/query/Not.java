package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class Not
  implements Clause, NeedsFutureClause
{
  private Comparison a = null;
  private Exists b = null;

  public Not()
  {
  }

  public Not(Clause paramClause)
  {
    setMissingClause(paramClause);
  }

  public void appendSql(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if ((this.a == null) && (this.b == null))
      throw new IllegalStateException("Clause has not been set in NOT operation");
    if (this.a == null)
    {
      paramStringBuilder.append("(NOT ");
      this.b.appendSql(paramDatabaseType, paramStringBuilder, paramList);
    }
    while (true)
    {
      paramStringBuilder.append(") ");
      return;
      paramStringBuilder.append("(NOT ");
      paramDatabaseType.appendEscapedEntityName(paramStringBuilder, this.a.getColumnName());
      paramStringBuilder.append(' ');
      this.a.appendOperation(paramStringBuilder);
      this.a.appendValue(paramDatabaseType, paramStringBuilder, paramList);
    }
  }

  public void setMissingClause(Clause paramClause)
  {
    if (this.a != null)
      throw new IllegalArgumentException("NOT operation already has a comparison set");
    if ((paramClause instanceof Comparison))
    {
      this.a = ((Comparison)paramClause);
      return;
    }
    if ((paramClause instanceof Exists))
    {
      this.b = ((Exists)paramClause);
      return;
    }
    throw new IllegalArgumentException("NOT operation can only work with comparison SQL clauses, not " + paramClause);
  }

  public String toString()
  {
    if (this.a == null)
      return "NOT without comparison";
    return "NOT comparison " + this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.Not
 * JD-Core Version:    0.6.2
 */