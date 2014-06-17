package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.stmt.mapped.MappedPreparedStmt;
import com.j256.ormlite.table.TableInfo;
import java.util.ArrayList;
import java.util.List;

public abstract class StatementBuilder<T, ID>
{
  private static Logger a = LoggerFactory.getLogger(StatementBuilder.class);
  private Where<T, ID> b = null;
  protected final Dao<T, ID> dao;
  protected final DatabaseType databaseType;
  protected final TableInfo<T, ID> tableInfo;
  protected StatementBuilder.StatementType type;

  public StatementBuilder(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao, StatementBuilder.StatementType paramStatementType)
  {
    this.databaseType = paramDatabaseType;
    this.tableInfo = paramTableInfo;
    this.dao = paramDao;
    this.type = paramStatementType;
    if (!paramStatementType.isOkForStatementBuilder())
      throw new IllegalStateException("Building a statement from a " + paramStatementType + " statement is not allowed");
  }

  private String a(List<ArgumentHolder> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    appendStatementString(localStringBuilder, paramList);
    String str = localStringBuilder.toString();
    a.debug("built statement {}", str);
    return str;
  }

  protected abstract void appendStatementEnd(StringBuilder paramStringBuilder);

  protected abstract void appendStatementStart(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList);

  protected void appendStatementString(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    appendStatementStart(paramStringBuilder, paramList);
    if (this.b != null)
    {
      paramStringBuilder.append("WHERE ");
      this.b.appendSql(paramStringBuilder, paramList);
    }
    appendStatementEnd(paramStringBuilder);
  }

  public void clear()
  {
    this.b = null;
  }

  protected FieldType[] getResultFieldTypes()
  {
    return null;
  }

  StatementBuilder.StatementType getType()
  {
    return this.type;
  }

  protected MappedPreparedStmt<T, ID> prepareStatement(Long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    String str = a(localArrayList);
    ArgumentHolder[] arrayOfArgumentHolder = (ArgumentHolder[])localArrayList.toArray(new ArgumentHolder[localArrayList.size()]);
    FieldType[] arrayOfFieldType1 = getResultFieldTypes();
    FieldType[] arrayOfFieldType2 = new FieldType[localArrayList.size()];
    for (int i = 0; i < arrayOfArgumentHolder.length; i++)
      arrayOfFieldType2[i] = arrayOfArgumentHolder[i].getFieldType();
    if (!this.type.isOkForStatementBuilder())
      throw new IllegalStateException("Building a statement from a " + this.type + " statement is not allowed");
    TableInfo localTableInfo = this.tableInfo;
    if (this.databaseType.isLimitSqlSupported());
    for (Long localLong = null; ; localLong = paramLong)
      return new MappedPreparedStmt(localTableInfo, str, arrayOfFieldType2, arrayOfFieldType1, arrayOfArgumentHolder, localLong, this.type);
  }

  public String prepareStatementString()
  {
    return a(new ArrayList());
  }

  public void setWhere(Where<T, ID> paramWhere)
  {
    this.b = paramWhere;
  }

  protected FieldType verifyColumnName(String paramString)
  {
    return this.tableInfo.getFieldTypeByColumnName(paramString);
  }

  public Where<T, ID> where()
  {
    this.b = new Where(this.tableInfo, this, this.databaseType);
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.StatementBuilder
 * JD-Core Version:    0.6.2
 */