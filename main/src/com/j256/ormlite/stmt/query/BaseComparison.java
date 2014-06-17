package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.SelectArg;
import java.sql.SQLException;
import java.util.List;

abstract class BaseComparison
  implements Comparison
{
  private final Object a;
  protected final String columnName;
  protected final FieldType fieldType;

  protected BaseComparison(String paramString, FieldType paramFieldType, Object paramObject, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramFieldType != null) && (!paramFieldType.isComparable()))
      throw new SQLException("Field '" + paramString + "' is of data type " + paramFieldType.getDataPersister() + " which can not be compared");
    this.columnName = paramString;
    this.fieldType = paramFieldType;
    this.a = paramObject;
  }

  protected void appendArgOrValue(DatabaseType paramDatabaseType, FieldType paramFieldType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList, Object paramObject)
  {
    int i = 1;
    if (paramObject == null)
      throw new SQLException("argument for '" + paramFieldType.getFieldName() + "' is null");
    if ((paramObject instanceof ArgumentHolder))
    {
      paramStringBuilder.append('?');
      ArgumentHolder localArgumentHolder = (ArgumentHolder)paramObject;
      localArgumentHolder.setMetaInfo(this.columnName, paramFieldType);
      paramList.add(localArgumentHolder);
    }
    while (true)
    {
      if (i != 0)
        paramStringBuilder.append(' ');
      return;
      if (paramFieldType.isArgumentHolderRequired())
      {
        paramStringBuilder.append('?');
        SelectArg localSelectArg = new SelectArg();
        localSelectArg.setMetaInfo(this.columnName, paramFieldType);
        localSelectArg.setValue(paramObject);
        paramList.add(localSelectArg);
      }
      else if ((paramFieldType.isForeign()) && (paramFieldType.getType() == paramObject.getClass()))
      {
        FieldType localFieldType = paramFieldType.getForeignIdField();
        appendArgOrValue(paramDatabaseType, localFieldType, paramStringBuilder, paramList, localFieldType.extractJavaFieldValue(paramObject));
        i = 0;
      }
      else if (paramFieldType.isEscapedValue())
      {
        paramDatabaseType.appendEscapedWord(paramStringBuilder, paramFieldType.convertJavaFieldToSqlArgValue(paramObject).toString());
      }
      else
      {
        paramStringBuilder.append(paramFieldType.convertJavaFieldToSqlArgValue(paramObject));
      }
    }
  }

  public abstract void appendOperation(StringBuilder paramStringBuilder);

  public void appendSql(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramDatabaseType.appendEscapedEntityName(paramStringBuilder, this.columnName);
    paramStringBuilder.append(' ');
    appendOperation(paramStringBuilder);
    appendValue(paramDatabaseType, paramStringBuilder, paramList);
  }

  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    appendArgOrValue(paramDatabaseType, this.fieldType, paramStringBuilder, paramList, this.a);
  }

  public String getColumnName()
  {
    return this.columnName;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.columnName).append(' ');
    appendOperation(localStringBuilder);
    localStringBuilder.append(' ');
    localStringBuilder.append(this.a);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.query.BaseComparison
 * JD-Core Version:    0.6.2
 */