package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.query.Between;
import com.j256.ormlite.stmt.query.Clause;
import com.j256.ormlite.stmt.query.Exists;
import com.j256.ormlite.stmt.query.In;
import com.j256.ormlite.stmt.query.InSubQuery;
import com.j256.ormlite.stmt.query.IsNotNull;
import com.j256.ormlite.stmt.query.IsNull;
import com.j256.ormlite.stmt.query.ManyClause;
import com.j256.ormlite.stmt.query.NeedsFutureClause;
import com.j256.ormlite.stmt.query.Not;
import com.j256.ormlite.stmt.query.Raw;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Where<T, ID>
{
  private final TableInfo<T, ID> a;
  private final StatementBuilder<T, ID> b;
  private final FieldType c;
  private final String d;
  private final DatabaseType e;
  private Clause[] f = new Clause[4];
  private int g = 0;
  private NeedsFutureClause h = null;

  Where(TableInfo<T, ID> paramTableInfo, StatementBuilder<T, ID> paramStatementBuilder, DatabaseType paramDatabaseType)
  {
    this.a = paramTableInfo;
    this.b = paramStatementBuilder;
    this.c = paramTableInfo.getIdField();
    if (this.c == null);
    for (this.d = null; ; this.d = this.c.getColumnName())
    {
      this.e = paramDatabaseType;
      return;
    }
  }

  private FieldType a(String paramString)
  {
    return this.a.getFieldTypeByColumnName(paramString);
  }

  private Where<T, ID> a(boolean paramBoolean, String paramString, QueryBuilder<?, ?> paramQueryBuilder)
  {
    if (paramQueryBuilder.getSelectColumnCount() != 1)
      throw new SQLException("Inner query must have only 1 select column specified instead of " + paramQueryBuilder.getSelectColumnCount());
    paramQueryBuilder.enableInnerQuery();
    a(new InSubQuery(paramString, a(paramString), new QueryBuilder.InternalQueryBuilderWrapper(paramQueryBuilder), paramBoolean));
    return this;
  }

  private Where<T, ID> a(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject.length == 1)
    {
      if (paramArrayOfObject[0].getClass().isArray())
        throw new IllegalArgumentException("Object argument to IN seems to be an array within an array");
      if (paramArrayOfObject[0].getClass() == Where.class)
        throw new IllegalArgumentException("Object argument to IN seems to be a Where.class instead of a QueryBuilder.class");
    }
    a(new In(paramString, a(paramString), paramArrayOfObject, paramBoolean));
    return this;
  }

  private Clause a()
  {
    return this.f[(-1 + this.g)];
  }

  private void a(Clause paramClause)
  {
    if (this.h == null)
    {
      b(paramClause);
      return;
    }
    this.h.setMissingClause(paramClause);
    this.h = null;
  }

  private void a(NeedsFutureClause paramNeedsFutureClause)
  {
    if (this.h != null)
      throw new IllegalStateException(this.h + " is already waiting for a future clause, can't add: " + paramNeedsFutureClause);
    this.h = paramNeedsFutureClause;
    b(paramNeedsFutureClause);
  }

  private Clause[] a(Where<T, ID>[] paramArrayOfWhere, String paramString)
  {
    Clause[] arrayOfClause;
    if (paramArrayOfWhere.length == 0)
      arrayOfClause = null;
    while (true)
    {
      return arrayOfClause;
      arrayOfClause = new Clause[paramArrayOfWhere.length];
      for (int i = -1 + paramArrayOfWhere.length; i >= 0; i--)
        arrayOfClause[i] = b(paramString);
    }
  }

  private Clause b(String paramString)
  {
    if (this.g == 0)
      throw new IllegalStateException("Expecting there to be a clause already defined for '" + paramString + "' operation");
    Clause[] arrayOfClause = this.f;
    int i = -1 + this.g;
    this.g = i;
    Clause localClause = arrayOfClause[i];
    this.f[this.g] = null;
    return localClause;
  }

  private void b(Clause paramClause)
  {
    if (this.g == this.f.length)
    {
      Clause[] arrayOfClause2 = new Clause[2 * this.g];
      for (int j = 0; j < this.g; j++)
      {
        arrayOfClause2[j] = this.f[j];
        this.f[j] = null;
      }
      this.f = arrayOfClause2;
    }
    Clause[] arrayOfClause1 = this.f;
    int i = this.g;
    this.g = (i + 1);
    arrayOfClause1[i] = paramClause;
  }

  public Where<T, ID> and()
  {
    a(new ManyClause(b("AND"), "AND"));
    return this;
  }

  public Where<T, ID> and(int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Must have at least one clause in and(numClauses)");
    Clause[] arrayOfClause = new Clause[paramInt];
    for (int i = paramInt - 1; i >= 0; i--)
      arrayOfClause[i] = b("AND");
    a(new ManyClause(arrayOfClause, "AND"));
    return this;
  }

  public Where<T, ID> and(Where<T, ID> paramWhere1, Where<T, ID> paramWhere2, Where<T, ID>[] paramArrayOfWhere)
  {
    Clause[] arrayOfClause = a(paramArrayOfWhere, "AND");
    Clause localClause = b("AND");
    a(new ManyClause(b("AND"), localClause, arrayOfClause, "AND"));
    return this;
  }

  void appendSql(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if (this.g == 0)
      throw new IllegalStateException("No where clauses defined.  Did you miss a where operation?");
    if (this.g != 1)
      throw new IllegalStateException("Both the \"left-hand\" and \"right-hand\" clauses have been defined.  Did you miss an AND or OR?");
    a().appendSql(this.e, paramStringBuilder, paramList);
  }

  public Where<T, ID> between(String paramString, Object paramObject1, Object paramObject2)
  {
    a(new Between(paramString, a(paramString), paramObject1, paramObject2));
    return this;
  }

  public Where<T, ID> clear()
  {
    for (int i = 0; i < this.g; i++)
      this.f[i] = null;
    this.g = 0;
    return this;
  }

  public Where<T, ID> eq(String paramString, Object paramObject)
  {
    a(new SimpleComparison(paramString, a(paramString), paramObject, "="));
    return this;
  }

  public Where<T, ID> exists(QueryBuilder<?, ?> paramQueryBuilder)
  {
    paramQueryBuilder.enableInnerQuery();
    a(new Exists(new QueryBuilder.InternalQueryBuilderWrapper(paramQueryBuilder)));
    return this;
  }

  public Where<T, ID> ge(String paramString, Object paramObject)
  {
    a(new SimpleComparison(paramString, a(paramString), paramObject, ">="));
    return this;
  }

  public String getStatement()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    appendSql(localStringBuilder, new ArrayList());
    return localStringBuilder.toString();
  }

  public Where<T, ID> gt(String paramString, Object paramObject)
  {
    a(new SimpleComparison(paramString, a(paramString), paramObject, ">"));
    return this;
  }

  public <OD> Where<T, ID> idEq(Dao<OD, ?> paramDao, OD paramOD)
  {
    if (this.d == null)
      throw new SQLException("Object has no id column specified");
    a(new SimpleComparison(this.d, this.c, paramDao.extractId(paramOD), "="));
    return this;
  }

  public Where<T, ID> idEq(ID paramID)
  {
    if (this.d == null)
      throw new SQLException("Object has no id column specified");
    a(new SimpleComparison(this.d, this.c, paramID, "="));
    return this;
  }

  public Where<T, ID> in(String paramString, QueryBuilder<?, ?> paramQueryBuilder)
  {
    return a(true, paramString, paramQueryBuilder);
  }

  public Where<T, ID> in(String paramString, Iterable<?> paramIterable)
  {
    a(new In(paramString, a(paramString), paramIterable, true));
    return this;
  }

  public Where<T, ID> in(String paramString, Object[] paramArrayOfObject)
  {
    return a(true, paramString, paramArrayOfObject);
  }

  public Where<T, ID> isNotNull(String paramString)
  {
    a(new IsNotNull(paramString, a(paramString)));
    return this;
  }

  public Where<T, ID> isNull(String paramString)
  {
    a(new IsNull(paramString, a(paramString)));
    return this;
  }

  public CloseableIterator<T> iterator()
  {
    if ((this.b instanceof QueryBuilder))
      return ((QueryBuilder)this.b).iterator();
    throw new SQLException("Cannot call iterator on a statement of type " + this.b.getType());
  }

  public Where<T, ID> le(String paramString, Object paramObject)
  {
    a(new SimpleComparison(paramString, a(paramString), paramObject, "<="));
    return this;
  }

  public Where<T, ID> like(String paramString, Object paramObject)
  {
    a(new SimpleComparison(paramString, a(paramString), paramObject, "LIKE"));
    return this;
  }

  public Where<T, ID> lt(String paramString, Object paramObject)
  {
    a(new SimpleComparison(paramString, a(paramString), paramObject, "<"));
    return this;
  }

  public Where<T, ID> ne(String paramString, Object paramObject)
  {
    a(new SimpleComparison(paramString, a(paramString), paramObject, "<>"));
    return this;
  }

  public Where<T, ID> not()
  {
    a(new Not());
    return this;
  }

  public Where<T, ID> not(Where<T, ID> paramWhere)
  {
    a(new Not(b("NOT")));
    return this;
  }

  public Where<T, ID> notIn(String paramString, QueryBuilder<?, ?> paramQueryBuilder)
  {
    return a(false, paramString, paramQueryBuilder);
  }

  public Where<T, ID> notIn(String paramString, Iterable<?> paramIterable)
  {
    a(new In(paramString, a(paramString), paramIterable, false));
    return this;
  }

  public Where<T, ID> notIn(String paramString, Object[] paramArrayOfObject)
  {
    return a(false, paramString, paramArrayOfObject);
  }

  public Where<T, ID> or()
  {
    a(new ManyClause(b("OR"), "OR"));
    return this;
  }

  public Where<T, ID> or(int paramInt)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Must have at least one clause in or(numClauses)");
    Clause[] arrayOfClause = new Clause[paramInt];
    for (int i = paramInt - 1; i >= 0; i--)
      arrayOfClause[i] = b("OR");
    a(new ManyClause(arrayOfClause, "OR"));
    return this;
  }

  public Where<T, ID> or(Where<T, ID> paramWhere1, Where<T, ID> paramWhere2, Where<T, ID>[] paramArrayOfWhere)
  {
    Clause[] arrayOfClause = a(paramArrayOfWhere, "OR");
    Clause localClause = b("OR");
    a(new ManyClause(b("OR"), localClause, arrayOfClause, "OR"));
    return this;
  }

  public PreparedQuery<T> prepare()
  {
    return this.b.prepareStatement(null);
  }

  public List<T> query()
  {
    if ((this.b instanceof QueryBuilder))
      return ((QueryBuilder)this.b).query();
    throw new SQLException("Cannot call query on a statement of type " + this.b.getType());
  }

  public Where<T, ID> raw(String paramString, ArgumentHolder[] paramArrayOfArgumentHolder)
  {
    int i = paramArrayOfArgumentHolder.length;
    for (int j = 0; j < i; j++)
    {
      ArgumentHolder localArgumentHolder = paramArrayOfArgumentHolder[j];
      String str = localArgumentHolder.getColumnName();
      if (str == null)
      {
        if (localArgumentHolder.getSqlType() == null)
          throw new IllegalArgumentException("Either the column name or SqlType must be set on each argument");
      }
      else
        localArgumentHolder.setMetaInfo(a(str));
    }
    a(new Raw(paramString, paramArrayOfArgumentHolder));
    return this;
  }

  public Where<T, ID> rawComparison(String paramString1, String paramString2, Object paramObject)
  {
    a(new SimpleComparison(paramString1, a(paramString1), paramObject, paramString2));
    return this;
  }

  public String toString()
  {
    if (this.g == 0)
      return "empty where clause";
    Clause localClause = a();
    return "where clause: " + localClause;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.Where
 * JD-Core Version:    0.6.2
 */