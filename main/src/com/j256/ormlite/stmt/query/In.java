package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class In extends BaseComparison
{
  private Iterable<?> a;
  private final boolean b;

  public In(String paramString, FieldType paramFieldType, Iterable<?> paramIterable, boolean paramBoolean)
  {
    super(paramString, paramFieldType, null, true);
    this.a = paramIterable;
    this.b = paramBoolean;
  }

  public In(String paramString, FieldType paramFieldType, Object[] paramArrayOfObject, boolean paramBoolean)
  {
    super(paramString, paramFieldType, null, true);
    this.a = Arrays.asList(paramArrayOfObject);
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
    int i = 1;
    Iterator localIterator = this.a.iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject == null)
        throw new IllegalArgumentException("one of the IN values for '" + this.columnName + "' is null");
      if (i != 0);
      for (int j = 0; ; j = i)
      {
        super.appendArgOrValue(paramDatabaseType, this.fieldType, paramStringBuilder, paramList, localObject);
        i = j;
        break;
        paramStringBuilder.append(',');
      }
    }
    paramStringBuilder.append(") ");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.In
 * JD-Core Version:    0.6.2
 */