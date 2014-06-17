package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Log.Level;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.PreparedUpdate;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedPreparedStmt<T, ID> extends BaseMappedQuery<T, ID>
  implements PreparedDelete<T>, PreparedQuery<T>, PreparedUpdate<T>
{
  private final ArgumentHolder[] a;
  private final Long b;
  private final StatementBuilder.StatementType c;

  public MappedPreparedStmt(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType1, FieldType[] paramArrayOfFieldType2, ArgumentHolder[] paramArrayOfArgumentHolder, Long paramLong, StatementBuilder.StatementType paramStatementType)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType1, paramArrayOfFieldType2);
    this.a = paramArrayOfArgumentHolder;
    this.b = paramLong;
    this.c = paramStatementType;
  }

  private CompiledStatement a(CompiledStatement paramCompiledStatement)
  {
    while (true)
    {
      try
      {
        if (this.b != null)
          paramCompiledStatement.setMaxRows(this.b.intValue());
        boolean bool = logger.isLevelEnabled(Log.Level.TRACE);
        Object[] arrayOfObject = null;
        if (bool)
        {
          int i = this.a.length;
          arrayOfObject = null;
          if (i > 0)
          {
            arrayOfObject = new Object[this.a.length];
            break label200;
            if (j < this.a.length)
            {
              Object localObject2 = this.a[j].getSqlArgValue();
              FieldType localFieldType = this.argFieldTypes[j];
              if (localFieldType == null)
              {
                localSqlType = this.a[j].getSqlType();
                paramCompiledStatement.setObject(j, localObject2, localSqlType);
                if (arrayOfObject == null)
                  break label206;
                arrayOfObject[j] = localObject2;
                break label206;
              }
              SqlType localSqlType = localFieldType.getSqlType();
              continue;
            }
            logger.debug("prepared statement '{}' with {} args", this.statement, Integer.valueOf(this.a.length));
            if (arrayOfObject != null)
              logger.trace("prepared statement arguments: {}", arrayOfObject);
            return paramCompiledStatement;
          }
        }
      }
      finally
      {
        paramCompiledStatement.close();
      }
      label200: int j = 0;
      continue;
      label206: j++;
    }
  }

  public CompiledStatement compile(DatabaseConnection paramDatabaseConnection, StatementBuilder.StatementType paramStatementType)
  {
    return compile(paramDatabaseConnection, paramStatementType, -1);
  }

  public CompiledStatement compile(DatabaseConnection paramDatabaseConnection, StatementBuilder.StatementType paramStatementType, int paramInt)
  {
    if (this.c != paramStatementType)
      throw new SQLException("Could not compile this " + this.c + " statement since the caller is expecting a " + paramStatementType + " statement.  Check your QueryBuilder methods.");
    return a(paramDatabaseConnection.compileStatement(this.statement, paramStatementType, this.argFieldTypes, paramInt));
  }

  public String getStatement()
  {
    return this.statement;
  }

  public StatementBuilder.StatementType getType()
  {
    return this.c;
  }

  public void setArgumentHolderValue(int paramInt, Object paramObject)
  {
    if (paramInt < 0)
      throw new SQLException("argument holder index " + paramInt + " must be >= 0");
    if (this.a.length <= paramInt)
      throw new SQLException("argument holder index " + paramInt + " not valid, only " + this.a.length + " in statement");
    this.a[paramInt].setValue(paramObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedPreparedStmt
 * JD-Core Version:    0.6.2
 */