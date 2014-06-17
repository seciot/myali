package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class ManyClause
  implements Clause, NeedsFutureClause
{
  public static final String AND_OPERATION = "AND";
  public static final String OR_OPERATION = "OR";
  private final Clause a;
  private Clause b;
  private final Clause[] c;
  private final int d;
  private final String e;

  public ManyClause(Clause paramClause1, Clause paramClause2, Clause[] paramArrayOfClause, String paramString)
  {
    this.a = paramClause1;
    this.b = paramClause2;
    this.c = paramArrayOfClause;
    this.d = 0;
    this.e = paramString;
  }

  public ManyClause(Clause paramClause, String paramString)
  {
    this.a = paramClause;
    this.b = null;
    this.c = null;
    this.d = 0;
    this.e = paramString;
  }

  public ManyClause(Clause[] paramArrayOfClause, String paramString)
  {
    this.a = paramArrayOfClause[0];
    if (paramArrayOfClause.length < 2)
      this.b = null;
    for (this.d = paramArrayOfClause.length; ; this.d = 2)
    {
      this.c = paramArrayOfClause;
      this.e = paramString;
      return;
      this.b = paramArrayOfClause[1];
    }
  }

  public void appendSql(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append("(");
    this.a.appendSql(paramDatabaseType, paramStringBuilder, paramList);
    if (this.b != null)
    {
      paramStringBuilder.append(this.e);
      paramStringBuilder.append(' ');
      this.b.appendSql(paramDatabaseType, paramStringBuilder, paramList);
    }
    if (this.c != null)
      for (int i = this.d; i < this.c.length; i++)
      {
        paramStringBuilder.append(this.e);
        paramStringBuilder.append(' ');
        this.c[i].appendSql(paramDatabaseType, paramStringBuilder, paramList);
      }
    paramStringBuilder.append(") ");
  }

  public void setMissingClause(Clause paramClause)
  {
    this.b = paramClause;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.ManyClause
 * JD-Core Version:    0.6.2
 */