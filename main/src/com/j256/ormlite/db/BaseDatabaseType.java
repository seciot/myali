package com.j256.ormlite.db;

import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.sql.Driver;
import java.sql.SQLException;
import java.util.List;

public abstract class BaseDatabaseType
  implements DatabaseType
{
  protected static String DEFAULT_SEQUENCE_SUFFIX = "_id_seq";
  protected Driver driver;

  private void addSingleUnique(StringBuilder paramStringBuilder, FieldType paramFieldType, List<String> paramList1, List<String> paramList2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" UNIQUE (");
    appendEscapedEntityName(localStringBuilder, paramFieldType.getColumnName());
    localStringBuilder.append(")");
    paramList1.add(localStringBuilder.toString());
  }

  private void appendCanBeNull(StringBuilder paramStringBuilder, FieldType paramFieldType)
  {
  }

  private void appendDefaultValue(StringBuilder paramStringBuilder, FieldType paramFieldType, Object paramObject)
  {
    if (paramFieldType.isEscapedDefaultValue())
    {
      appendEscapedWord(paramStringBuilder, paramObject.toString());
      return;
    }
    paramStringBuilder.append(paramObject);
  }

  private void appendDoubleType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("DOUBLE PRECISION");
  }

  private void appendFloatType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("FLOAT");
  }

  private void appendIntegerType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("INTEGER");
  }

  public void addPrimaryKeySql(FieldType[] paramArrayOfFieldType, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    int i = paramArrayOfFieldType.length;
    StringBuilder localStringBuilder = null;
    int j = 0;
    if (j < i)
    {
      FieldType localFieldType = paramArrayOfFieldType[j];
      if (((!localFieldType.isGeneratedId()) || (generatedIdSqlAtEnd()) || (localFieldType.isSelfGeneratedId())) && (localFieldType.isId()))
      {
        if (localStringBuilder != null)
          break label95;
        localStringBuilder = new StringBuilder(48);
        localStringBuilder.append("PRIMARY KEY (");
      }
      while (true)
      {
        appendEscapedEntityName(localStringBuilder, localFieldType.getColumnName());
        j++;
        break;
        label95: localStringBuilder.append(',');
      }
    }
    if (localStringBuilder != null)
    {
      localStringBuilder.append(") ");
      paramList1.add(localStringBuilder.toString());
    }
  }

  public void addUniqueComboSql(FieldType[] paramArrayOfFieldType, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    int i = paramArrayOfFieldType.length;
    StringBuilder localStringBuilder = null;
    int j = 0;
    if (j < i)
    {
      FieldType localFieldType = paramArrayOfFieldType[j];
      if (localFieldType.isUniqueCombo())
      {
        if (localStringBuilder != null)
          break label72;
        localStringBuilder = new StringBuilder(48);
        localStringBuilder.append("UNIQUE (");
      }
      while (true)
      {
        appendEscapedEntityName(localStringBuilder, localFieldType.getColumnName());
        j++;
        break;
        label72: localStringBuilder.append(',');
      }
    }
    if (localStringBuilder != null)
    {
      localStringBuilder.append(") ");
      paramList1.add(localStringBuilder.toString());
    }
  }

  protected void appendBigDecimalNumericType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("NUMERIC");
  }

  protected void appendBooleanType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("BOOLEAN");
  }

  protected void appendByteArrayType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("BLOB");
  }

  protected void appendByteType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("TINYINT");
  }

  protected void appendCharType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("CHAR");
  }

  public void appendColumnArg(String paramString, StringBuilder paramStringBuilder, FieldType paramFieldType, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    appendEscapedEntityName(paramStringBuilder, paramFieldType.getColumnName());
    paramStringBuilder.append(' ');
    DataPersister localDataPersister = paramFieldType.getDataPersister();
    int i = paramFieldType.getWidth();
    if (i == 0)
      i = localDataPersister.getDefaultWidth();
    switch (BaseDatabaseType.1.$SwitchMap$com$j256$ormlite$field$SqlType[localDataPersister.getSqlType().ordinal()])
    {
    default:
      throw new IllegalArgumentException("Unknown SQL-type " + localDataPersister.getSqlType());
    case 1:
      appendStringType(paramStringBuilder, i);
      paramStringBuilder.append(' ');
      if ((paramFieldType.isGeneratedIdSequence()) && (!paramFieldType.isSelfGeneratedId()))
      {
        configureGeneratedIdSequence(paramStringBuilder, paramFieldType, paramList2, paramList1, paramList4);
        label198: if (!paramFieldType.isGeneratedId())
        {
          Object localObject = paramFieldType.getDefaultValue();
          if (localObject != null)
          {
            paramStringBuilder.append("DEFAULT ");
            appendDefaultValue(paramStringBuilder, paramFieldType, localObject);
            paramStringBuilder.append(' ');
          }
          if (!paramFieldType.isCanBeNull())
            break label454;
          appendCanBeNull(paramStringBuilder, paramFieldType);
        }
      }
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    }
    while (true)
    {
      if (paramFieldType.isUnique())
        addSingleUnique(paramStringBuilder, paramFieldType, paramList1, paramList3);
      return;
      appendLongStringType(paramStringBuilder, i);
      break;
      appendBooleanType(paramStringBuilder, i);
      break;
      appendDateType(paramStringBuilder, i);
      break;
      appendCharType(paramStringBuilder, i);
      break;
      appendByteType(paramStringBuilder, i);
      break;
      appendByteArrayType(paramStringBuilder, i);
      break;
      appendShortType(paramStringBuilder, i);
      break;
      paramStringBuilder.append("INTEGER");
      break;
      appendLongType(paramFieldType, paramStringBuilder, i);
      break;
      paramStringBuilder.append("FLOAT");
      break;
      paramStringBuilder.append("DOUBLE PRECISION");
      break;
      appendSerializableType(paramStringBuilder, i);
      break;
      appendBigDecimalNumericType(paramStringBuilder, i);
      break;
      if ((paramFieldType.isGeneratedId()) && (!paramFieldType.isSelfGeneratedId()))
      {
        configureGeneratedId(paramString, paramStringBuilder, paramFieldType, paramList2, paramList3, paramList1, paramList4);
        break label198;
      }
      if (!paramFieldType.isId())
        break label198;
      configureId(paramStringBuilder, paramFieldType, paramList2, paramList1, paramList4);
      break label198;
      label454: paramStringBuilder.append("NOT NULL ");
    }
  }

  public void appendCreateTableSuffix(StringBuilder paramStringBuilder)
  {
  }

  protected void appendDateType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("TIMESTAMP");
  }

  public void appendEscapedEntityName(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('`').append(paramString).append('`');
  }

  public void appendEscapedWord(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('\'').append(paramString).append('\'');
  }

  public void appendLimitValue(StringBuilder paramStringBuilder, long paramLong, Long paramLong1)
  {
    paramStringBuilder.append("LIMIT ").append(paramLong).append(' ');
  }

  protected void appendLongStringType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("TEXT");
  }

  protected void appendLongType(FieldType paramFieldType, StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("BIGINT");
  }

  public void appendOffsetValue(StringBuilder paramStringBuilder, long paramLong)
  {
    paramStringBuilder.append("OFFSET ").append(paramLong).append(' ');
  }

  public void appendSelectNextValFromSequence(StringBuilder paramStringBuilder, String paramString)
  {
  }

  protected void appendSerializableType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("BLOB");
  }

  protected void appendShortType(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("SMALLINT");
  }

  protected void appendStringType(StringBuilder paramStringBuilder, int paramInt)
  {
    if (isVarcharFieldWidthSupported())
    {
      paramStringBuilder.append("VARCHAR(").append(paramInt).append(")");
      return;
    }
    paramStringBuilder.append("VARCHAR");
  }

  protected void configureGeneratedId(String paramString, StringBuilder paramStringBuilder, FieldType paramFieldType, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    throw new IllegalStateException("GeneratedId is not supported by database " + getDatabaseName() + " for field " + paramFieldType);
  }

  protected void configureGeneratedIdSequence(StringBuilder paramStringBuilder, FieldType paramFieldType, List<String> paramList1, List<String> paramList2, List<String> paramList3)
  {
    throw new SQLException("GeneratedIdSequence is not supported by database " + getDatabaseName() + " for field " + paramFieldType);
  }

  protected void configureId(StringBuilder paramStringBuilder, FieldType paramFieldType, List<String> paramList1, List<String> paramList2, List<String> paramList3)
  {
  }

  public void dropColumnArg(FieldType paramFieldType, List<String> paramList1, List<String> paramList2)
  {
  }

  public <T> DatabaseTableConfig<T> extractDatabaseTableConfig(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    return null;
  }

  public String generateIdSequenceName(String paramString, FieldType paramFieldType)
  {
    String str = paramString + DEFAULT_SEQUENCE_SUFFIX;
    if (isEntityNamesMustBeUpCase())
      str = str.toUpperCase();
    return str;
  }

  protected boolean generatedIdSqlAtEnd()
  {
    return true;
  }

  public String getCommentLinePrefix()
  {
    return "-- ";
  }

  protected abstract String getDriverClassName();

  public FieldConverter getFieldConverter(DataPersister paramDataPersister)
  {
    return paramDataPersister;
  }

  public String getPingStatement()
  {
    return "SELECT 1";
  }

  public boolean isAllowGeneratedIdInsertSupported()
  {
    return true;
  }

  public boolean isBatchUseTransaction()
  {
    return false;
  }

  public boolean isCreateIfNotExistsSupported()
  {
    return false;
  }

  public boolean isCreateIndexIfNotExistsSupported()
  {
    return isCreateIfNotExistsSupported();
  }

  public boolean isCreateTableReturnsNegative()
  {
    return false;
  }

  public boolean isCreateTableReturnsZero()
  {
    return true;
  }

  public boolean isEntityNamesMustBeUpCase()
  {
    return false;
  }

  public boolean isIdSequenceNeeded()
  {
    return false;
  }

  public boolean isLimitAfterSelect()
  {
    return false;
  }

  public boolean isLimitSqlSupported()
  {
    return true;
  }

  public boolean isNestedSavePointsSupported()
  {
    return true;
  }

  public boolean isOffsetLimitArgument()
  {
    return false;
  }

  public boolean isOffsetSqlSupported()
  {
    return true;
  }

  public boolean isSelectSequenceBeforeInsert()
  {
    return false;
  }

  public boolean isTruncateSupported()
  {
    return false;
  }

  public boolean isVarcharFieldWidthSupported()
  {
    return true;
  }

  public void loadDriver()
  {
    String str = getDriverClassName();
    if (str != null);
    try
    {
      Class.forName(str);
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw SqlExceptionUtil.create("Driver class was not found for " + getDatabaseName() + " database.  Missing jar with class " + str + ".", localClassNotFoundException);
    }
  }

  public void setDriver(Driver paramDriver)
  {
    this.driver = paramDriver;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.db.BaseDatabaseType
 * JD-Core Version:    0.6.2
 */