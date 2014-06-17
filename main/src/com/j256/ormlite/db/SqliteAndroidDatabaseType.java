package com.j256.ormlite.db;

import com.j256.ormlite.android.DatabaseTableConfigUtil;
import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.FieldConverter;
import com.j256.ormlite.field.types.DateStringType;
import com.j256.ormlite.misc.VersionUtils;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;

public class SqliteAndroidDatabaseType extends BaseSqliteDatabaseType
  implements DatabaseType
{
  public SqliteAndroidDatabaseType()
  {
    VersionUtils.checkCoreVersusAndroidVersions();
  }

  protected void appendBooleanType(StringBuilder paramStringBuilder, int paramInt)
  {
    appendShortType(paramStringBuilder, paramInt);
  }

  protected void appendDateType(StringBuilder paramStringBuilder, int paramInt)
  {
    appendStringType(paramStringBuilder, paramInt);
  }

  public <T> DatabaseTableConfig<T> extractDatabaseTableConfig(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    return DatabaseTableConfigUtil.fromClass(paramConnectionSource, paramClass);
  }

  public String getDatabaseName()
  {
    return "Android SQLite";
  }

  protected String getDriverClassName()
  {
    return null;
  }

  public FieldConverter getFieldConverter(DataPersister paramDataPersister)
  {
    switch (SqliteAndroidDatabaseType.1.$SwitchMap$com$j256$ormlite$field$SqlType[paramDataPersister.getSqlType().ordinal()])
    {
    default:
      return super.getFieldConverter(paramDataPersister);
    case 1:
    }
    return DateStringType.getSingleton();
  }

  public boolean isBatchUseTransaction()
  {
    return true;
  }

  public boolean isDatabaseUrlThisType(String paramString1, String paramString2)
  {
    return true;
  }

  public boolean isNestedSavePointsSupported()
  {
    return false;
  }

  public void loadDriver()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.db.SqliteAndroidDatabaseType
 * JD-Core Version:    0.6.2
 */