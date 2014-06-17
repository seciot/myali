package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.query.OrderBy;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class QueryBuilder<T, ID> extends StatementBuilder<T, ID>
{
  private final FieldType a;
  private FieldType[] b;
  private boolean c = false;
  private boolean d = true;
  private List<String> e = null;
  private List<String> f = null;
  private List<OrderBy> g = null;
  private String h = null;
  private List<String> i = null;
  private String j = null;
  private boolean k = false;
  private boolean l = false;
  private String m = null;
  private Long n = null;
  private Long o = null;

  public QueryBuilder(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao)
  {
    super(paramDatabaseType, paramTableInfo, paramDao, StatementBuilder.StatementType.SELECT);
    this.a = paramTableInfo.getIdField();
  }

  private void a(String paramString)
  {
    verifyColumnName(paramString);
    this.e.add(paramString);
  }

  private void a(StringBuilder paramStringBuilder)
  {
    if ((this.n != null) && (this.databaseType.isLimitSqlSupported()))
      this.databaseType.appendLimitValue(paramStringBuilder, this.n.longValue(), this.o);
  }

  private void a(StringBuilder paramStringBuilder, FieldType paramFieldType, List<FieldType> paramList)
  {
    this.databaseType.appendEscapedEntityName(paramStringBuilder, paramFieldType.getColumnName());
    if (paramList != null)
      paramList.add(paramFieldType);
  }

  protected void appendStatementEnd(StringBuilder paramStringBuilder)
  {
    int i1 = 1;
    if (((this.i != null) && (!this.i.isEmpty())) || (this.j != null))
    {
      paramStringBuilder.append("GROUP BY ");
      if (this.j != null)
      {
        paramStringBuilder.append(this.j);
        paramStringBuilder.append(' ');
      }
    }
    else
    {
      if (((this.g != null) && (!this.g.isEmpty())) || (this.h != null))
      {
        paramStringBuilder.append("ORDER BY ");
        if (this.h == null)
          break label262;
        paramStringBuilder.append(this.h);
        paramStringBuilder.append(' ');
      }
      if (this.m != null)
        paramStringBuilder.append("HAVING ").append(this.m).append(' ');
      if (!this.databaseType.isLimitAfterSelect())
        a(paramStringBuilder);
      if (this.o == null)
        return;
      if (!this.databaseType.isOffsetLimitArgument())
        break label348;
      if (this.n != null)
        return;
      throw new SQLException("If the offset is specified, limit must also be specified with this database");
    }
    Iterator localIterator2 = this.i.iterator();
    int i2 = i1;
    label207: String str2;
    if (localIterator2.hasNext())
    {
      str2 = (String)localIterator2.next();
      if (i2 == 0)
        break label252;
      i2 = 0;
    }
    while (true)
    {
      this.databaseType.appendEscapedEntityName(paramStringBuilder, str2);
      break label207;
      break;
      label252: paramStringBuilder.append(',');
    }
    label262: Iterator localIterator1 = this.g.iterator();
    label273: OrderBy localOrderBy;
    if (localIterator1.hasNext())
    {
      localOrderBy = (OrderBy)localIterator1.next();
      if (i1 == 0)
        break label338;
      i1 = 0;
    }
    while (true)
    {
      String str1 = localOrderBy.getColumnName();
      this.databaseType.appendEscapedEntityName(paramStringBuilder, str1);
      if (localOrderBy.isAscending())
        break label273;
      paramStringBuilder.append(" DESC");
      break label273;
      break;
      label338: paramStringBuilder.append(',');
    }
    label348: this.databaseType.appendOffsetValue(paramStringBuilder, this.o.longValue());
  }

  protected void appendStatementStart(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    int i1 = 1;
    paramStringBuilder.append("SELECT ");
    if (this.databaseType.isLimitAfterSelect())
      a(paramStringBuilder);
    if (this.c)
      paramStringBuilder.append("DISTINCT ");
    if (this.l)
    {
      this.type = StatementBuilder.StatementType.SELECT_LONG;
      paramStringBuilder.append("COUNT(*) ");
    }
    while (true)
    {
      paramStringBuilder.append("FROM ");
      this.databaseType.appendEscapedEntityName(paramStringBuilder, this.tableInfo.getTableName());
      paramStringBuilder.append(' ');
      return;
      if ((this.f != null) && (!this.f.isEmpty()))
      {
        this.type = StatementBuilder.StatementType.SELECT_RAW;
        Iterator localIterator2 = this.f.iterator();
        if (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          if (i1 != 0)
            i1 = 0;
          while (true)
          {
            paramStringBuilder.append(str2);
            break;
            paramStringBuilder.append(", ");
          }
        }
        paramStringBuilder.append(' ');
      }
      else
      {
        this.type = StatementBuilder.StatementType.SELECT;
        if (this.e != null)
          break;
        paramStringBuilder.append("* ");
        this.b = this.tableInfo.getFieldTypes();
      }
    }
    if (this.k);
    ArrayList localArrayList;
    int i3;
    int i4;
    label271: FieldType localFieldType;
    for (int i2 = i1; ; i2 = 0)
    {
      localArrayList = new ArrayList(1 + this.e.size());
      Iterator localIterator1 = this.e.iterator();
      i3 = i2;
      i4 = i1;
      while (true)
      {
        if (!localIterator1.hasNext())
          break label377;
        String str1 = (String)localIterator1.next();
        localFieldType = this.tableInfo.getFieldTypeByColumnName(str1);
        if (!localFieldType.isForeignCollection())
          break;
        localArrayList.add(localFieldType);
      }
    }
    if (i4 != 0)
    {
      i4 = 0;
      label339: a(paramStringBuilder, localFieldType, localArrayList);
      if (localFieldType != this.a)
        break label446;
    }
    label446: for (int i5 = i1; ; i5 = i3)
    {
      i3 = i5;
      break label271;
      paramStringBuilder.append(',');
      break label339;
      label377: if ((i3 == 0) && (this.d))
      {
        if (i4 == 0)
          paramStringBuilder.append(',');
        a(paramStringBuilder, this.a, localArrayList);
      }
      paramStringBuilder.append(' ');
      this.b = ((FieldType[])localArrayList.toArray(new FieldType[localArrayList.size()]));
      break;
    }
  }

  public void clear()
  {
    super.clear();
    this.c = false;
    this.d = true;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = null;
    this.j = null;
    this.k = false;
    this.l = false;
    this.m = null;
    this.n = null;
    this.o = null;
  }

  public QueryBuilder<T, ID> distinct()
  {
    this.c = true;
    this.d = false;
    return this;
  }

  void enableInnerQuery()
  {
    this.k = true;
  }

  protected FieldType[] getResultFieldTypes()
  {
    return this.b;
  }

  int getSelectColumnCount()
  {
    if (this.e == null)
      return 0;
    return this.e.size();
  }

  public QueryBuilder<T, ID> groupBy(String paramString)
  {
    if (verifyColumnName(paramString).isForeignCollection())
      throw new IllegalArgumentException("Can't groupBy foreign colletion field: " + paramString);
    if (this.i == null)
      this.i = new ArrayList();
    this.i.add(paramString);
    this.d = false;
    return this;
  }

  public QueryBuilder<T, ID> groupByRaw(String paramString)
  {
    this.j = paramString;
    return this;
  }

  public QueryBuilder<T, ID> having(String paramString)
  {
    this.m = paramString;
    return this;
  }

  public CloseableIterator<T> iterator()
  {
    return this.dao.iterator(prepare());
  }

  @Deprecated
  public QueryBuilder<T, ID> limit(int paramInt)
  {
    return limit(Long.valueOf(paramInt));
  }

  public QueryBuilder<T, ID> limit(Long paramLong)
  {
    this.n = paramLong;
    return this;
  }

  @Deprecated
  public QueryBuilder<T, ID> offset(int paramInt)
  {
    return offset(Long.valueOf(paramInt));
  }

  public QueryBuilder<T, ID> offset(Long paramLong)
  {
    if (this.databaseType.isOffsetSqlSupported())
    {
      this.o = paramLong;
      return this;
    }
    throw new SQLException("Offset is not supported by this database");
  }

  public QueryBuilder<T, ID> orderBy(String paramString, boolean paramBoolean)
  {
    if (verifyColumnName(paramString).isForeignCollection())
      throw new IllegalArgumentException("Can't orderBy foreign colletion field: " + paramString);
    if (this.g == null)
      this.g = new ArrayList();
    this.g.add(new OrderBy(paramString, paramBoolean));
    return this;
  }

  public QueryBuilder<T, ID> orderByRaw(String paramString)
  {
    this.h = paramString;
    return this;
  }

  public PreparedQuery<T> prepare()
  {
    return super.prepareStatement(this.n);
  }

  public List<T> query()
  {
    return this.dao.query(prepare());
  }

  public T queryForFirst()
  {
    return this.dao.queryForFirst(prepare());
  }

  public String[] queryRawFirst()
  {
    return (String[])this.dao.queryRaw(prepareStatementString(), new String[0]).getFirstResult();
  }

  public QueryBuilder<T, ID> selectColumns(Iterable<String> paramIterable)
  {
    if (this.e == null)
      this.e = new ArrayList();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      a((String)localIterator.next());
    return this;
  }

  public QueryBuilder<T, ID> selectColumns(String[] paramArrayOfString)
  {
    if (this.e == null)
      this.e = new ArrayList();
    int i1 = paramArrayOfString.length;
    for (int i2 = 0; i2 < i1; i2++)
      a(paramArrayOfString[i2]);
    return this;
  }

  public QueryBuilder<T, ID> selectRaw(String[] paramArrayOfString)
  {
    if (this.f == null)
      this.f = new ArrayList();
    int i1 = paramArrayOfString.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      String str = paramArrayOfString[i2];
      this.f.add(str);
    }
    return this;
  }

  public QueryBuilder<T, ID> setCountOf(boolean paramBoolean)
  {
    this.l = paramBoolean;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.QueryBuilder
 * JD-Core Version:    0.6.2
 */