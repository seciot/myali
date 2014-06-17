package com.j256.ormlite.field;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.types.VoidType;
import com.j256.ormlite.misc.JavaxPersistence;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class DatabaseFieldConfig
{
  private static final boolean DEFAULT_CAN_BE_NULL = true;
  private static final DataType DEFAULT_DATA_TYPE = DataType.UNKNOWN;
  private static final int DEFAULT_MAX_EAGER_FOREIGN_COLLECTION_LEVEL = 1;
  private static final Class<? extends DataPersister> DEFAULT_PERSISTER_CLASS = VoidType.class;
  private boolean allowGeneratedIdInsert;
  private boolean canBeNull = true;
  private String columnDefinition;
  private String columnName;
  private DataPersister dataPersister;
  private DataType dataType = DEFAULT_DATA_TYPE;
  private String defaultValue;
  private String fieldName;
  private boolean foreign;
  private boolean foreignAutoCreate;
  private boolean foreignAutoRefresh;
  private boolean foreignCollection;
  private String foreignCollectionColumnName;
  private boolean foreignCollectionEager;
  private String foreignCollectionForeignFieldName;
  private int foreignCollectionMaxEagerLevel = 1;
  private String foreignCollectionOrderColumnName;
  private String foreignColumnName;
  private DatabaseTableConfig<?> foreignTableConfig;
  private String format;
  private boolean generatedId;
  private String generatedIdSequence;
  private boolean id;
  private boolean index;
  private String indexName;
  private int maxForeignAutoRefreshLevel = -1;
  private boolean persisted = true;
  private Class<? extends DataPersister> persisterClass = DEFAULT_PERSISTER_CLASS;
  private boolean throwIfNull;
  private boolean unique;
  private boolean uniqueCombo;
  private boolean uniqueIndex;
  private String uniqueIndexName;
  private Enum<?> unknownEnumValue;
  private boolean useGetSet;
  private boolean version;
  private int width;

  public DatabaseFieldConfig()
  {
  }

  public DatabaseFieldConfig(String paramString)
  {
    this.fieldName = paramString;
  }

  public DatabaseFieldConfig(String paramString1, String paramString2, DataType paramDataType, String paramString3, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString4, boolean paramBoolean4, DatabaseTableConfig<?> paramDatabaseTableConfig, boolean paramBoolean5, Enum<?> paramEnum, boolean paramBoolean6, String paramString5, boolean paramBoolean7, String paramString6, String paramString7, boolean paramBoolean8, int paramInt2, int paramInt3)
  {
    this.fieldName = paramString1;
    this.columnName = paramString2;
    this.dataType = DataType.UNKNOWN;
    this.defaultValue = paramString3;
    this.width = paramInt1;
    this.canBeNull = paramBoolean1;
    this.id = paramBoolean2;
    this.generatedId = paramBoolean3;
    this.generatedIdSequence = paramString4;
    this.foreign = paramBoolean4;
    this.foreignTableConfig = paramDatabaseTableConfig;
    this.useGetSet = paramBoolean5;
    this.unknownEnumValue = paramEnum;
    this.throwIfNull = paramBoolean6;
    this.format = paramString5;
    this.unique = paramBoolean7;
    this.indexName = paramString6;
    this.uniqueIndexName = paramString7;
    this.foreignAutoRefresh = paramBoolean8;
    this.maxForeignAutoRefreshLevel = paramInt2;
    this.foreignCollectionMaxEagerLevel = paramInt3;
  }

  public static Method findGetMethod(Field paramField, boolean paramBoolean)
  {
    String str = methodFromField(paramField, "get");
    Method localMethod1;
    try
    {
      localMethod2 = paramField.getDeclaringClass().getMethod(str, new Class[0]);
      if (localMethod2.getReturnType() != paramField.getType())
      {
        localMethod1 = null;
        if (!paramBoolean)
          break label112;
        throw new IllegalArgumentException("Return type of get method " + str + " does not return " + paramField.getType());
      }
    }
    catch (Exception localException)
    {
      Method localMethod2;
      localMethod1 = null;
      if (paramBoolean)
      {
        throw new IllegalArgumentException("Could not find appropriate get method for " + paramField);
        localMethod1 = localMethod2;
      }
    }
    label112: return localMethod1;
  }

  private String findIndexName(String paramString)
  {
    if (this.columnName == null)
      return paramString + "_" + this.fieldName + "_idx";
    return paramString + "_" + this.columnName + "_idx";
  }

  public static Enum<?> findMatchingEnumVal(Field paramField, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return null;
    for (Enum localEnum : (Enum[])paramField.getType().getEnumConstants())
      if (localEnum.name().equals(paramString))
        return localEnum;
    throw new IllegalArgumentException("Unknwown enum unknown name " + paramString + " for field " + paramField);
  }

  public static Method findSetMethod(Field paramField, boolean paramBoolean)
  {
    String str = methodFromField(paramField, "set");
    Method localMethod1;
    try
    {
      Class localClass = paramField.getDeclaringClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = paramField.getType();
      localMethod2 = localClass.getMethod(str, arrayOfClass);
      if (localMethod2.getReturnType() != Void.TYPE)
      {
        localMethod1 = null;
        if (!paramBoolean)
          break label133;
        throw new IllegalArgumentException("Return type of set method " + str + " returns " + localMethod2.getReturnType() + " instead of void");
      }
    }
    catch (Exception localException)
    {
      Method localMethod2;
      localMethod1 = null;
      if (paramBoolean)
      {
        throw new IllegalArgumentException("Could not find appropriate set method for " + paramField);
        localMethod1 = localMethod2;
      }
    }
    label133: return localMethod1;
  }

  public static DatabaseFieldConfig fromDatabaseField(DatabaseType paramDatabaseType, String paramString, Field paramField, DatabaseField paramDatabaseField)
  {
    DatabaseFieldConfig localDatabaseFieldConfig = new DatabaseFieldConfig();
    localDatabaseFieldConfig.fieldName = paramField.getName();
    if (paramDatabaseType.isEntityNamesMustBeUpCase())
      localDatabaseFieldConfig.fieldName = localDatabaseFieldConfig.fieldName.toUpperCase();
    localDatabaseFieldConfig.columnName = valueIfNotBlank(paramDatabaseField.columnName());
    localDatabaseFieldConfig.dataType = paramDatabaseField.dataType();
    String str = paramDatabaseField.defaultValue();
    if (!str.equals("__ormlite__ no default value string was specified"))
      localDatabaseFieldConfig.defaultValue = str;
    localDatabaseFieldConfig.width = paramDatabaseField.width();
    localDatabaseFieldConfig.canBeNull = paramDatabaseField.canBeNull();
    localDatabaseFieldConfig.id = paramDatabaseField.id();
    localDatabaseFieldConfig.generatedId = paramDatabaseField.generatedId();
    localDatabaseFieldConfig.generatedIdSequence = valueIfNotBlank(paramDatabaseField.generatedIdSequence());
    localDatabaseFieldConfig.foreign = paramDatabaseField.foreign();
    localDatabaseFieldConfig.useGetSet = paramDatabaseField.useGetSet();
    localDatabaseFieldConfig.unknownEnumValue = findMatchingEnumVal(paramField, paramDatabaseField.unknownEnumName());
    localDatabaseFieldConfig.throwIfNull = paramDatabaseField.throwIfNull();
    localDatabaseFieldConfig.format = valueIfNotBlank(paramDatabaseField.format());
    localDatabaseFieldConfig.unique = paramDatabaseField.unique();
    localDatabaseFieldConfig.uniqueCombo = paramDatabaseField.uniqueCombo();
    localDatabaseFieldConfig.index = paramDatabaseField.index();
    localDatabaseFieldConfig.indexName = valueIfNotBlank(paramDatabaseField.indexName());
    localDatabaseFieldConfig.uniqueIndex = paramDatabaseField.uniqueIndex();
    localDatabaseFieldConfig.uniqueIndexName = valueIfNotBlank(paramDatabaseField.uniqueIndexName());
    localDatabaseFieldConfig.foreignAutoRefresh = paramDatabaseField.foreignAutoRefresh();
    localDatabaseFieldConfig.maxForeignAutoRefreshLevel = paramDatabaseField.maxForeignAutoRefreshLevel();
    localDatabaseFieldConfig.persisterClass = paramDatabaseField.persisterClass();
    localDatabaseFieldConfig.allowGeneratedIdInsert = paramDatabaseField.allowGeneratedIdInsert();
    localDatabaseFieldConfig.columnDefinition = valueIfNotBlank(paramDatabaseField.columnDefinition());
    localDatabaseFieldConfig.foreignAutoCreate = paramDatabaseField.foreignAutoCreate();
    localDatabaseFieldConfig.version = paramDatabaseField.version();
    localDatabaseFieldConfig.foreignColumnName = valueIfNotBlank(paramDatabaseField.foreignColumnName());
    return localDatabaseFieldConfig;
  }

  public static DatabaseFieldConfig fromField(DatabaseType paramDatabaseType, String paramString, Field paramField)
  {
    DatabaseField localDatabaseField = (DatabaseField)paramField.getAnnotation(DatabaseField.class);
    if (localDatabaseField != null)
    {
      if (localDatabaseField.persisted())
        return fromDatabaseField(paramDatabaseType, paramString, paramField, localDatabaseField);
      return null;
    }
    ForeignCollectionField localForeignCollectionField = (ForeignCollectionField)paramField.getAnnotation(ForeignCollectionField.class);
    if (localForeignCollectionField != null)
      return fromForeignCollection(paramDatabaseType, paramField, localForeignCollectionField);
    return JavaxPersistence.createFieldConfig(paramDatabaseType, paramField);
  }

  private static DatabaseFieldConfig fromForeignCollection(DatabaseType paramDatabaseType, Field paramField, ForeignCollectionField paramForeignCollectionField)
  {
    DatabaseFieldConfig localDatabaseFieldConfig = new DatabaseFieldConfig();
    localDatabaseFieldConfig.fieldName = paramField.getName();
    if (paramForeignCollectionField.columnName().length() > 0)
      localDatabaseFieldConfig.columnName = paramForeignCollectionField.columnName();
    localDatabaseFieldConfig.foreignCollection = true;
    localDatabaseFieldConfig.foreignCollectionEager = paramForeignCollectionField.eager();
    int i = paramForeignCollectionField.maxEagerForeignCollectionLevel();
    if (i != 1);
    String str;
    for (localDatabaseFieldConfig.foreignCollectionMaxEagerLevel = i; ; localDatabaseFieldConfig.foreignCollectionMaxEagerLevel = paramForeignCollectionField.maxEagerLevel())
    {
      localDatabaseFieldConfig.foreignCollectionOrderColumnName = valueIfNotBlank(paramForeignCollectionField.orderColumnName());
      localDatabaseFieldConfig.foreignCollectionColumnName = valueIfNotBlank(paramForeignCollectionField.columnName());
      str = valueIfNotBlank(paramForeignCollectionField.foreignFieldName());
      if (str != null)
        break;
      localDatabaseFieldConfig.foreignCollectionForeignFieldName = valueIfNotBlank(valueIfNotBlank(paramForeignCollectionField.foreignColumnName()));
      return localDatabaseFieldConfig;
    }
    localDatabaseFieldConfig.foreignCollectionForeignFieldName = str;
    return localDatabaseFieldConfig;
  }

  private static String methodFromField(Field paramField, String paramString)
  {
    return paramString + paramField.getName().substring(0, 1).toUpperCase() + paramField.getName().substring(1);
  }

  private static String valueIfNotBlank(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      paramString = null;
    return paramString;
  }

  public String getColumnDefinition()
  {
    return this.columnDefinition;
  }

  public String getColumnName()
  {
    return this.columnName;
  }

  public DataPersister getDataPersister()
  {
    if (this.dataPersister == null)
      return this.dataType.getDataPersister();
    return this.dataPersister;
  }

  public DataType getDataType()
  {
    return this.dataType;
  }

  public String getDefaultValue()
  {
    return this.defaultValue;
  }

  public String getFieldName()
  {
    return this.fieldName;
  }

  public String getForeignCollectionColumnName()
  {
    return this.foreignCollectionColumnName;
  }

  public String getForeignCollectionForeignFieldName()
  {
    return this.foreignCollectionForeignFieldName;
  }

  public int getForeignCollectionMaxEagerLevel()
  {
    return this.foreignCollectionMaxEagerLevel;
  }

  public String getForeignCollectionOrderColumnName()
  {
    return this.foreignCollectionOrderColumnName;
  }

  public String getForeignColumnName()
  {
    return this.foreignColumnName;
  }

  public DatabaseTableConfig<?> getForeignTableConfig()
  {
    return this.foreignTableConfig;
  }

  public String getFormat()
  {
    return this.format;
  }

  public String getGeneratedIdSequence()
  {
    return this.generatedIdSequence;
  }

  public String getIndexName(String paramString)
  {
    if ((this.index) && (this.indexName == null))
      this.indexName = findIndexName(paramString);
    return this.indexName;
  }

  public int getMaxForeignAutoRefreshLevel()
  {
    return this.maxForeignAutoRefreshLevel;
  }

  public Class<? extends DataPersister> getPersisterClass()
  {
    return this.persisterClass;
  }

  public String getUniqueIndexName(String paramString)
  {
    if ((this.uniqueIndex) && (this.uniqueIndexName == null))
      this.uniqueIndexName = findIndexName(paramString);
    return this.uniqueIndexName;
  }

  public Enum<?> getUnknownEnumValue()
  {
    return this.unknownEnumValue;
  }

  @Deprecated
  public Enum<?> getUnknownEnumvalue()
  {
    return this.unknownEnumValue;
  }

  public int getWidth()
  {
    return this.width;
  }

  public boolean isAllowGeneratedIdInsert()
  {
    return this.allowGeneratedIdInsert;
  }

  public boolean isCanBeNull()
  {
    return this.canBeNull;
  }

  public boolean isForeign()
  {
    return this.foreign;
  }

  public boolean isForeignAutoCreate()
  {
    return this.foreignAutoCreate;
  }

  public boolean isForeignAutoRefresh()
  {
    return this.foreignAutoRefresh;
  }

  public boolean isForeignCollection()
  {
    return this.foreignCollection;
  }

  public boolean isForeignCollectionEager()
  {
    return this.foreignCollectionEager;
  }

  public boolean isGeneratedId()
  {
    return this.generatedId;
  }

  public boolean isId()
  {
    return this.id;
  }

  public boolean isIndex()
  {
    return this.index;
  }

  public boolean isPersisted()
  {
    return this.persisted;
  }

  public boolean isThrowIfNull()
  {
    return this.throwIfNull;
  }

  public boolean isUnique()
  {
    return this.unique;
  }

  public boolean isUniqueCombo()
  {
    return this.uniqueCombo;
  }

  public boolean isUniqueIndex()
  {
    return this.uniqueIndex;
  }

  public boolean isUseGetSet()
  {
    return this.useGetSet;
  }

  public boolean isVersion()
  {
    return this.version;
  }

  public void postProcess()
  {
    if (this.foreignColumnName != null)
      this.foreignAutoRefresh = true;
    if ((this.foreignAutoRefresh) && (this.maxForeignAutoRefreshLevel == -1))
      this.maxForeignAutoRefreshLevel = 2;
  }

  public void setAllowGeneratedIdInsert(boolean paramBoolean)
  {
    this.allowGeneratedIdInsert = paramBoolean;
  }

  public void setCanBeNull(boolean paramBoolean)
  {
    this.canBeNull = paramBoolean;
  }

  public void setColumnDefinition(String paramString)
  {
    this.columnDefinition = paramString;
  }

  public void setColumnName(String paramString)
  {
    this.columnName = paramString;
  }

  public void setDataPersister(DataPersister paramDataPersister)
  {
    this.dataPersister = paramDataPersister;
  }

  public void setDataType(DataType paramDataType)
  {
    this.dataType = paramDataType;
  }

  public void setDefaultValue(String paramString)
  {
    this.defaultValue = paramString;
  }

  public void setFieldName(String paramString)
  {
    this.fieldName = paramString;
  }

  public void setForeign(boolean paramBoolean)
  {
    this.foreign = paramBoolean;
  }

  public void setForeignAutoCreate(boolean paramBoolean)
  {
    this.foreignAutoCreate = paramBoolean;
  }

  public void setForeignAutoRefresh(boolean paramBoolean)
  {
    this.foreignAutoRefresh = paramBoolean;
  }

  public void setForeignCollection(boolean paramBoolean)
  {
    this.foreignCollection = paramBoolean;
  }

  public void setForeignCollectionColumnName(String paramString)
  {
    this.foreignCollectionColumnName = paramString;
  }

  public void setForeignCollectionEager(boolean paramBoolean)
  {
    this.foreignCollectionEager = paramBoolean;
  }

  @Deprecated
  public void setForeignCollectionForeignColumnName(String paramString)
  {
    this.foreignCollectionForeignFieldName = paramString;
  }

  public void setForeignCollectionForeignFieldName(String paramString)
  {
    this.foreignCollectionForeignFieldName = paramString;
  }

  @Deprecated
  public void setForeignCollectionMaxEagerForeignCollectionLevel(int paramInt)
  {
    this.foreignCollectionMaxEagerLevel = paramInt;
  }

  public void setForeignCollectionMaxEagerLevel(int paramInt)
  {
    this.foreignCollectionMaxEagerLevel = paramInt;
  }

  @Deprecated
  public void setForeignCollectionOrderColumn(String paramString)
  {
    this.foreignCollectionOrderColumnName = paramString;
  }

  public void setForeignCollectionOrderColumnName(String paramString)
  {
    this.foreignCollectionOrderColumnName = paramString;
  }

  public void setForeignColumnName(String paramString)
  {
    this.foreignColumnName = paramString;
  }

  public void setForeignTableConfig(DatabaseTableConfig<?> paramDatabaseTableConfig)
  {
    this.foreignTableConfig = paramDatabaseTableConfig;
  }

  public void setFormat(String paramString)
  {
    this.format = paramString;
  }

  public void setGeneratedId(boolean paramBoolean)
  {
    this.generatedId = paramBoolean;
  }

  public void setGeneratedIdSequence(String paramString)
  {
    this.generatedIdSequence = paramString;
  }

  public void setId(boolean paramBoolean)
  {
    this.id = paramBoolean;
  }

  public void setIndex(boolean paramBoolean)
  {
    this.index = paramBoolean;
  }

  public void setIndexName(String paramString)
  {
    this.indexName = paramString;
  }

  @Deprecated
  public void setMaxEagerForeignCollectionLevel(int paramInt)
  {
    this.foreignCollectionMaxEagerLevel = paramInt;
  }

  public void setMaxForeignAutoRefreshLevel(int paramInt)
  {
    this.maxForeignAutoRefreshLevel = paramInt;
  }

  public void setPersisted(boolean paramBoolean)
  {
    this.persisted = paramBoolean;
  }

  public void setPersisterClass(Class<? extends DataPersister> paramClass)
  {
    this.persisterClass = paramClass;
  }

  public void setThrowIfNull(boolean paramBoolean)
  {
    this.throwIfNull = paramBoolean;
  }

  public void setUnique(boolean paramBoolean)
  {
    this.unique = paramBoolean;
  }

  public void setUniqueCombo(boolean paramBoolean)
  {
    this.uniqueCombo = paramBoolean;
  }

  public void setUniqueIndex(boolean paramBoolean)
  {
    this.uniqueIndex = paramBoolean;
  }

  public void setUniqueIndexName(String paramString)
  {
    this.uniqueIndexName = paramString;
  }

  public void setUnknownEnumValue(Enum<?> paramEnum)
  {
    this.unknownEnumValue = paramEnum;
  }

  public void setUseGetSet(boolean paramBoolean)
  {
    this.useGetSet = paramBoolean;
  }

  public void setVersion(boolean paramBoolean)
  {
    this.version = paramBoolean;
  }

  public void setWidth(int paramInt)
  {
    this.width = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.field.DatabaseFieldConfig
 * JD-Core Version:    0.6.2
 */