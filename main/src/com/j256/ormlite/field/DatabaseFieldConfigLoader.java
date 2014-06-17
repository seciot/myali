package com.j256.ormlite.field;

import com.j256.ormlite.field.types.VoidType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.sql.SQLException;

public class DatabaseFieldConfigLoader
{
  private static final String CONFIG_FILE_END_MARKER = "# --field-end--";
  private static final String CONFIG_FILE_START_MARKER = "# --field-start--";
  private static final boolean DEFAULT_CAN_BE_NULL = true;
  private static final DataPersister DEFAULT_DATA_PERSISTER = DataType.UNKNOWN.getDataPersister();
  private static final int DEFAULT_MAX_EAGER_FOREIGN_COLLECTION_LEVEL = 1;
  private static final Class<? extends DataPersister> DEFAULT_PERSISTER_CLASS = VoidType.class;
  private static final String FIELD_NAME_ALLOW_GENERATED_ID_INSERT = "allowGeneratedIdInsert";
  private static final String FIELD_NAME_CAN_BE_NULL = "canBeNull";
  private static final String FIELD_NAME_COLUMN_DEFINITION = "columnDefinition";
  private static final String FIELD_NAME_COLUMN_NAME = "columnName";
  private static final String FIELD_NAME_DATA_PERSISTER = "dataPersister";
  private static final String FIELD_NAME_DEFAULT_VALUE = "defaultValue";
  private static final String FIELD_NAME_FIELD_NAME = "fieldName";
  private static final String FIELD_NAME_FOREIGN = "foreign";
  private static final String FIELD_NAME_FOREIGN_AUTO_CREATE = "foreignAutoCreate";
  private static final String FIELD_NAME_FOREIGN_AUTO_REFRESH = "foreignAutoRefresh";
  private static final String FIELD_NAME_FOREIGN_COLLECTION = "foreignCollection";
  private static final String FIELD_NAME_FOREIGN_COLLECTION_COLUMN_NAME = "foreignCollectionColumnName";
  private static final String FIELD_NAME_FOREIGN_COLLECTION_EAGER = "foreignCollectionEager";
  private static final String FIELD_NAME_FOREIGN_COLLECTION_FOREIGN_FIELD_NAME = "foreignCollectionForeignFieldName";
  private static final String FIELD_NAME_FOREIGN_COLLECTION_FOREIGN_FIELD_NAME_OLD = "foreignCollectionForeignColumnName";
  private static final String FIELD_NAME_FOREIGN_COLLECTION_ORDER_COLUMN_NAME = "foreignCollectionOrderColumnName";
  private static final String FIELD_NAME_FOREIGN_COLLECTION_ORDER_COLUMN_NAME_OLD = "foreignCollectionOrderColumn";
  private static final String FIELD_NAME_FORMAT = "format";
  private static final String FIELD_NAME_GENERATED_ID = "generatedId";
  private static final String FIELD_NAME_GENERATED_ID_SEQUENCE = "generatedIdSequence";
  private static final String FIELD_NAME_ID = "id";
  private static final String FIELD_NAME_INDEX = "index";
  private static final String FIELD_NAME_INDEX_NAME = "indexName";
  private static final String FIELD_NAME_MAX_EAGER_FOREIGN_COLLECTION_LEVEL = "foreignCollectionMaxEagerLevel";
  private static final String FIELD_NAME_MAX_EAGER_FOREIGN_COLLECTION_LEVEL_OLD = "maxEagerForeignCollectionLevel";
  private static final String FIELD_NAME_MAX_FOREIGN_AUTO_REFRESH_LEVEL = "maxForeignAutoRefreshLevel";
  private static final String FIELD_NAME_PERSISTER_CLASS = "persisterClass";
  private static final String FIELD_NAME_THROW_IF_NULL = "throwIfNull";
  private static final String FIELD_NAME_UNIQUE = "unique";
  private static final String FIELD_NAME_UNIQUE_COMBO = "uniqueCombo";
  private static final String FIELD_NAME_UNIQUE_INDEX = "uniqueIndex";
  private static final String FIELD_NAME_UNIQUE_INDEX_NAME = "uniqueIndexName";
  private static final String FIELD_NAME_UNKNOWN_ENUM_VALUE = "unknownEnumValue";
  private static final String FIELD_NAME_USE_GET_SET = "useGetSet";
  private static final String FIELD_NAME_VERSION = "version";
  private static final String FIELD_NAME_WIDTH = "width";
  private static final String FOREIGN_COLUMN_NAME = "foreignColumnName";

  public static DatabaseFieldConfig fromReader(BufferedReader paramBufferedReader)
  {
    DatabaseFieldConfig localDatabaseFieldConfig = new DatabaseFieldConfig();
    for (int i = 0; ; i = 1)
    {
      String[] arrayOfString;
      try
      {
        String str;
        do
        {
          str = paramBufferedReader.readLine();
          if ((str == null) || (str.equals("# --field-end--")))
            break;
        }
        while ((str.length() == 0) || (str.startsWith("#")) || (str.equals("# --field-start--")));
        arrayOfString = str.split("=", -2);
        if (arrayOfString.length != 2)
          throw new SQLException("DatabaseFieldConfig reading from stream cannot parse line: " + str);
      }
      catch (IOException localIOException)
      {
        throw SqlExceptionUtil.create("Could not read DatabaseFieldConfig from stream", localIOException);
      }
      readField(localDatabaseFieldConfig, arrayOfString[0], arrayOfString[1]);
    }
    if (i != 0)
      return localDatabaseFieldConfig;
    return null;
  }

  private static void readField(DatabaseFieldConfig paramDatabaseFieldConfig, String paramString1, String paramString2)
  {
    int i = 0;
    if (paramString1.equals("fieldName"))
      paramDatabaseFieldConfig.setFieldName(paramString2);
    do
    {
      do
      {
        return;
        if (paramString1.equals("columnName"))
        {
          paramDatabaseFieldConfig.setColumnName(paramString2);
          return;
        }
        if (paramString1.equals("dataPersister"))
        {
          paramDatabaseFieldConfig.setDataPersister(DataType.valueOf(paramString2).getDataPersister());
          return;
        }
        if (paramString1.equals("defaultValue"))
        {
          paramDatabaseFieldConfig.setDefaultValue(paramString2);
          return;
        }
        if (paramString1.equals("width"))
        {
          paramDatabaseFieldConfig.setWidth(Integer.parseInt(paramString2));
          return;
        }
        if (paramString1.equals("canBeNull"))
        {
          paramDatabaseFieldConfig.setCanBeNull(Boolean.parseBoolean(paramString2));
          return;
        }
        if (paramString1.equals("id"))
        {
          paramDatabaseFieldConfig.setId(Boolean.parseBoolean(paramString2));
          return;
        }
        if (paramString1.equals("generatedId"))
        {
          paramDatabaseFieldConfig.setGeneratedId(Boolean.parseBoolean(paramString2));
          return;
        }
        if (paramString1.equals("generatedIdSequence"))
        {
          paramDatabaseFieldConfig.setGeneratedIdSequence(paramString2);
          return;
        }
        if (paramString1.equals("foreign"))
        {
          paramDatabaseFieldConfig.setForeign(Boolean.parseBoolean(paramString2));
          return;
        }
        if (paramString1.equals("useGetSet"))
        {
          paramDatabaseFieldConfig.setUseGetSet(Boolean.parseBoolean(paramString2));
          return;
        }
        if (!paramString1.equals("unknownEnumValue"))
          break;
        String[] arrayOfString = paramString2.split("#", -2);
        if (arrayOfString.length != 2)
          throw new IllegalArgumentException("Invalid value for unknownEnumValue which should be in class#name format: " + paramString2);
        Object[] arrayOfObject;
        try
        {
          Class localClass = Class.forName(arrayOfString[0]);
          arrayOfObject = localClass.getEnumConstants();
          if (arrayOfObject == null)
            throw new IllegalArgumentException("Invalid class is not an Enum for unknownEnumValue: " + paramString2);
        }
        catch (ClassNotFoundException localClassNotFoundException2)
        {
          throw new IllegalArgumentException("Unknown class specified for unknownEnumValue: " + paramString2);
        }
        for (Enum localEnum : (Enum[])arrayOfObject)
          if (localEnum.name().equals(arrayOfString[1]))
          {
            paramDatabaseFieldConfig.setUnknownEnumValue(localEnum);
            i = 1;
          }
      }
      while (i != 0);
      throw new IllegalArgumentException("Invalid enum value name for unknownEnumvalue: " + paramString2);
      if (paramString1.equals("throwIfNull"))
      {
        paramDatabaseFieldConfig.setThrowIfNull(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("format"))
      {
        paramDatabaseFieldConfig.setFormat(paramString2);
        return;
      }
      if (paramString1.equals("unique"))
      {
        paramDatabaseFieldConfig.setUnique(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("uniqueCombo"))
      {
        paramDatabaseFieldConfig.setUniqueCombo(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("index"))
      {
        paramDatabaseFieldConfig.setIndex(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("indexName"))
      {
        paramDatabaseFieldConfig.setIndex(true);
        paramDatabaseFieldConfig.setIndexName(paramString2);
        return;
      }
      if (paramString1.equals("uniqueIndex"))
      {
        paramDatabaseFieldConfig.setUniqueIndex(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("uniqueIndexName"))
      {
        paramDatabaseFieldConfig.setUniqueIndex(true);
        paramDatabaseFieldConfig.setUniqueIndexName(paramString2);
        return;
      }
      if (paramString1.equals("foreignAutoRefresh"))
      {
        paramDatabaseFieldConfig.setForeignAutoRefresh(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("maxForeignAutoRefreshLevel"))
      {
        paramDatabaseFieldConfig.setMaxForeignAutoRefreshLevel(Integer.parseInt(paramString2));
        return;
      }
      if (paramString1.equals("persisterClass"))
        try
        {
          paramDatabaseFieldConfig.setPersisterClass(Class.forName(paramString2));
          return;
        }
        catch (ClassNotFoundException localClassNotFoundException1)
        {
          throw new IllegalArgumentException("Could not find persisterClass: " + paramString2);
        }
      if (paramString1.equals("allowGeneratedIdInsert"))
      {
        paramDatabaseFieldConfig.setAllowGeneratedIdInsert(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("columnDefinition"))
      {
        paramDatabaseFieldConfig.setColumnDefinition(paramString2);
        return;
      }
      if (paramString1.equals("foreignAutoCreate"))
      {
        paramDatabaseFieldConfig.setForeignAutoCreate(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("version"))
      {
        paramDatabaseFieldConfig.setVersion(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("foreignColumnName"))
      {
        paramDatabaseFieldConfig.setForeignColumnName(paramString2);
        return;
      }
      if (paramString1.equals("foreignCollection"))
      {
        paramDatabaseFieldConfig.setForeignCollection(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("foreignCollectionEager"))
      {
        paramDatabaseFieldConfig.setForeignCollectionEager(Boolean.parseBoolean(paramString2));
        return;
      }
      if (paramString1.equals("maxEagerForeignCollectionLevel"))
      {
        paramDatabaseFieldConfig.setForeignCollectionMaxEagerLevel(Integer.parseInt(paramString2));
        return;
      }
      if (paramString1.equals("foreignCollectionMaxEagerLevel"))
      {
        paramDatabaseFieldConfig.setForeignCollectionMaxEagerLevel(Integer.parseInt(paramString2));
        return;
      }
      if (paramString1.equals("foreignCollectionColumnName"))
      {
        paramDatabaseFieldConfig.setForeignCollectionColumnName(paramString2);
        return;
      }
      if (paramString1.equals("foreignCollectionOrderColumn"))
      {
        paramDatabaseFieldConfig.setForeignCollectionOrderColumnName(paramString2);
        return;
      }
      if (paramString1.equals("foreignCollectionOrderColumnName"))
      {
        paramDatabaseFieldConfig.setForeignCollectionOrderColumnName(paramString2);
        return;
      }
      if (paramString1.equals("foreignCollectionForeignColumnName"))
      {
        paramDatabaseFieldConfig.setForeignCollectionForeignFieldName(paramString2);
        return;
      }
    }
    while (!paramString1.equals("foreignCollectionForeignFieldName"));
    paramDatabaseFieldConfig.setForeignCollectionForeignFieldName(paramString2);
  }

  public static void write(BufferedWriter paramBufferedWriter, DatabaseFieldConfig paramDatabaseFieldConfig, String paramString)
  {
    try
    {
      writeConfig(paramBufferedWriter, paramDatabaseFieldConfig, paramString);
      return;
    }
    catch (IOException localIOException)
    {
      throw SqlExceptionUtil.create("Could not write config to writer", localIOException);
    }
  }

  public static void writeConfig(BufferedWriter paramBufferedWriter, DatabaseFieldConfig paramDatabaseFieldConfig, String paramString)
  {
    paramBufferedWriter.append("# --field-start--");
    paramBufferedWriter.newLine();
    if (paramDatabaseFieldConfig.getFieldName() != null)
    {
      paramBufferedWriter.append("fieldName").append('=').append(paramDatabaseFieldConfig.getFieldName());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getColumnName() != null)
    {
      paramBufferedWriter.append("columnName").append('=').append(paramDatabaseFieldConfig.getColumnName());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getDataPersister() != DEFAULT_DATA_PERSISTER)
    {
      DataType[] arrayOfDataType = DataType.values();
      int i = arrayOfDataType.length;
      for (int j = 0; ; j++)
      {
        int k = 0;
        if (j < i)
        {
          DataType localDataType = arrayOfDataType[j];
          if (localDataType.getDataPersister() == paramDatabaseFieldConfig.getDataPersister())
          {
            paramBufferedWriter.append("dataPersister").append('=').append(localDataType.name());
            paramBufferedWriter.newLine();
            k = 1;
          }
        }
        else
        {
          if (k != 0)
            break;
          throw new IllegalArgumentException("Unknown data persister field: " + paramDatabaseFieldConfig.getDataPersister());
        }
      }
    }
    if (paramDatabaseFieldConfig.getDefaultValue() != null)
    {
      paramBufferedWriter.append("defaultValue").append('=').append(paramDatabaseFieldConfig.getDefaultValue());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getWidth() != 0)
    {
      paramBufferedWriter.append("width").append('=').append(Integer.toString(paramDatabaseFieldConfig.getWidth()));
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isCanBeNull() != true)
    {
      paramBufferedWriter.append("canBeNull").append('=').append(Boolean.toString(paramDatabaseFieldConfig.isCanBeNull()));
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isId())
    {
      paramBufferedWriter.append("id").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isGeneratedId())
    {
      paramBufferedWriter.append("generatedId").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getGeneratedIdSequence() != null)
    {
      paramBufferedWriter.append("generatedIdSequence").append('=').append(paramDatabaseFieldConfig.getGeneratedIdSequence());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isForeign())
    {
      paramBufferedWriter.append("foreign").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isUseGetSet())
    {
      paramBufferedWriter.append("useGetSet").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getUnknownEnumValue() != null)
    {
      paramBufferedWriter.append("unknownEnumValue").append('=').append(paramDatabaseFieldConfig.getUnknownEnumValue().getClass().getName()).append("#").append(paramDatabaseFieldConfig.getUnknownEnumValue().name());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isThrowIfNull())
    {
      paramBufferedWriter.append("throwIfNull").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getFormat() != null)
    {
      paramBufferedWriter.append("format").append('=').append(paramDatabaseFieldConfig.getFormat());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isUnique())
    {
      paramBufferedWriter.append("unique").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isUniqueCombo())
    {
      paramBufferedWriter.append("uniqueCombo").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    String str1 = paramDatabaseFieldConfig.getIndexName(paramString);
    if (str1 != null)
    {
      paramBufferedWriter.append("indexName").append('=').append(str1);
      paramBufferedWriter.newLine();
    }
    String str2 = paramDatabaseFieldConfig.getUniqueIndexName(paramString);
    if (str2 != null)
    {
      paramBufferedWriter.append("uniqueIndexName").append('=').append(str2);
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isForeignAutoRefresh())
    {
      paramBufferedWriter.append("foreignAutoRefresh").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getMaxForeignAutoRefreshLevel() != -1)
    {
      paramBufferedWriter.append("maxForeignAutoRefreshLevel").append('=').append(Integer.toString(paramDatabaseFieldConfig.getMaxForeignAutoRefreshLevel()));
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getPersisterClass() != DEFAULT_PERSISTER_CLASS)
    {
      paramBufferedWriter.append("persisterClass").append('=').append(paramDatabaseFieldConfig.getPersisterClass().getName());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isAllowGeneratedIdInsert())
    {
      paramBufferedWriter.append("allowGeneratedIdInsert").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getColumnDefinition() != null)
    {
      paramBufferedWriter.append("columnDefinition").append('=').append(paramDatabaseFieldConfig.getColumnDefinition());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isForeignAutoCreate())
    {
      paramBufferedWriter.append("foreignAutoCreate").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isVersion())
    {
      paramBufferedWriter.append("version").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    String str3 = paramDatabaseFieldConfig.getForeignColumnName();
    if (str3 != null)
    {
      paramBufferedWriter.append("foreignColumnName").append('=').append(str3);
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isForeignCollection())
    {
      paramBufferedWriter.append("foreignCollection").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.isForeignCollectionEager())
    {
      paramBufferedWriter.append("foreignCollectionEager").append('=').append("true");
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getForeignCollectionMaxEagerLevel() != 1)
    {
      paramBufferedWriter.append("foreignCollectionMaxEagerLevel").append('=').append(Integer.toString(paramDatabaseFieldConfig.getForeignCollectionMaxEagerLevel()));
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getForeignCollectionColumnName() != null)
    {
      paramBufferedWriter.append("foreignCollectionColumnName").append('=').append(paramDatabaseFieldConfig.getForeignCollectionColumnName());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getForeignCollectionOrderColumnName() != null)
    {
      paramBufferedWriter.append("foreignCollectionOrderColumnName").append('=').append(paramDatabaseFieldConfig.getForeignCollectionOrderColumnName());
      paramBufferedWriter.newLine();
    }
    if (paramDatabaseFieldConfig.getForeignCollectionForeignFieldName() != null)
    {
      paramBufferedWriter.append("foreignCollectionForeignFieldName").append('=').append(paramDatabaseFieldConfig.getForeignCollectionForeignFieldName());
      paramBufferedWriter.newLine();
    }
    paramBufferedWriter.append("# --field-end--");
    paramBufferedWriter.newLine();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.DatabaseFieldConfigLoader
 * JD-Core Version:    0.6.2
 */