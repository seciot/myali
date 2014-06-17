package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class Raw
  implements Clause
{
  private final String a;
  private final ArgumentHolder[] b;

  public Raw(String paramString, ArgumentHolder[] paramArrayOfArgumentHolder)
  {
    this.a = paramString;
    this.b = paramArrayOfArgumentHolder;
  }

  public void appendSql(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append(this.a);
    paramStringBuilder.append(' ');
    ArgumentHolder[] arrayOfArgumentHolder = this.b;
    int i = arrayOfArgumentHolder.length;
    for (int j = 0; j < i; j++)
      paramList.add(arrayOfArgumentHolder[j]);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.Raw
 * JD-Core Version:    0.6.2
 */