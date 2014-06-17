package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.query.Clause;
import com.j256.ormlite.stmt.query.SetExpression;
import com.j256.ormlite.stmt.query.SetValue;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UpdateBuilder<T, ID> extends StatementBuilder<T, ID>
{
  private List<Clause> a = null;

  public UpdateBuilder(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao)
  {
    super(paramDatabaseType, paramTableInfo, paramDao, StatementBuilder.StatementType.UPDATE);
  }

  private void a(Clause paramClause)
  {
    if (this.a == null)
      this.a = new ArrayList();
    this.a.add(paramClause);
  }

  protected void appendStatementEnd(StringBuilder paramStringBuilder)
  {
  }

  protected void appendStatementStart(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if ((this.a == null) || (this.a.isEmpty()))
      throw new IllegalArgumentException("UPDATE statements must have at least one SET column");
    paramStringBuilder.append("UPDATE ");
    this.databaseType.appendEscapedEntityName(paramStringBuilder, this.tableInfo.getTableName());
    paramStringBuilder.append(" SET ");
    Iterator localIterator = this.a.iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      Clause localClause = (Clause)localIterator.next();
      if (i != 0)
        i = 0;
      while (true)
      {
        localClause.appendSql(this.databaseType, paramStringBuilder, paramList);
        break;
        paramStringBuilder.append(',');
      }
    }
  }

  public void clear()
  {
    super.clear();
    this.a = null;
  }

  public String escapeColumnName(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(4 + paramString.length());
    this.databaseType.appendEscapedEntityName(localStringBuilder, paramString);
    return localStringBuilder.toString();
  }

  public void escapeColumnName(StringBuilder paramStringBuilder, String paramString)
  {
    this.databaseType.appendEscapedEntityName(paramStringBuilder, paramString);
  }

  public String escapeValue(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(4 + paramString.length());
    this.databaseType.appendEscapedWord(localStringBuilder, paramString);
    return localStringBuilder.toString();
  }

  public void escapeValue(StringBuilder paramStringBuilder, String paramString)
  {
    this.databaseType.appendEscapedWord(paramStringBuilder, paramString);
  }

  public PreparedUpdate<T> prepare()
  {
    return super.prepareStatement(null);
  }

  public int update()
  {
    return this.dao.update(prepare());
  }

  public StatementBuilder<T, ID> updateColumnExpression(String paramString1, String paramString2)
  {
    FieldType localFieldType = verifyColumnName(paramString1);
    if (localFieldType.isForeignCollection())
      throw new SQLException("Can't update foreign colletion field: " + paramString1);
    a(new SetExpression(paramString1, localFieldType, paramString2));
    return this;
  }

  public StatementBuilder<T, ID> updateColumnValue(String paramString, Object paramObject)
  {
    FieldType localFieldType = verifyColumnName(paramString);
    if (localFieldType.isForeignCollection())
      throw new SQLException("Can't update foreign colletion field: " + paramString);
    a(new SetValue(paramString, localFieldType, paramObject));
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.UpdateBuilder
 * JD-Core Version:    0.6.2
 */