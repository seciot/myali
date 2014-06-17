package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.table.TableInfo;
import java.util.List;

public class DeleteBuilder<T, ID> extends StatementBuilder<T, ID>
{
  public DeleteBuilder(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao)
  {
    super(paramDatabaseType, paramTableInfo, paramDao, StatementBuilder.StatementType.DELETE);
  }

  protected void appendStatementEnd(StringBuilder paramStringBuilder)
  {
  }

  protected void appendStatementStart(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append("DELETE FROM ");
    this.databaseType.appendEscapedEntityName(paramStringBuilder, this.tableInfo.getTableName());
    paramStringBuilder.append(' ');
  }

  public void clear()
  {
    super.clear();
  }

  public int delete()
  {
    return this.dao.delete(prepare());
  }

  public PreparedDelete<T> prepare()
  {
    return super.prepareStatement(null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.DeleteBuilder
 * JD-Core Version:    0.6.2
 */