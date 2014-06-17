package com.j256.ormlite.table;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.BaseDaoEnabled;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.ConnectionSource;
import java.lang.reflect.Constructor;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class TableInfo<T, ID>
{
  private static final FieldType[] NO_FOREIGN_COLLECTIONS = new FieldType[0];
  private final Constructor<T> constructor;
  private final Dao<T, ID> dao;
  private final Class<T> dataClass;
  private Map<String, FieldType> fieldNameMap;
  private final FieldType[] fieldTypes;
  private final boolean foreignAutoCreate;
  private final FieldType[] foreignCollections;
  private final FieldType idField;
  private final String tableName;

  public TableInfo(DatabaseType paramDatabaseType, Dao<T, ID> paramDao, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    this.dao = paramDao;
    this.dataClass = paramDatabaseTableConfig.getDataClass();
    this.tableName = paramDatabaseTableConfig.getTableName();
    this.fieldTypes = paramDatabaseTableConfig.getFieldTypes(paramDatabaseType);
    Object localObject = null;
    FieldType[] arrayOfFieldType1 = this.fieldTypes;
    int i = arrayOfFieldType1.length;
    int j = 0;
    int k = 0;
    boolean bool = false;
    if (j < i)
    {
      FieldType localFieldType2 = arrayOfFieldType1[j];
      if ((localFieldType2.isId()) || (localFieldType2.isGeneratedId()) || (localFieldType2.isGeneratedIdSequence()))
      {
        if (localObject != null)
          throw new SQLException("More than 1 idField configured for class " + this.dataClass + " (" + localObject + "," + localFieldType2 + ")");
        localObject = localFieldType2;
      }
      if (localFieldType2.isForeignAutoCreate())
        bool = true;
      if (!localFieldType2.isForeignCollection())
        break label290;
    }
    label290: for (int i2 = k + 1; ; i2 = k)
    {
      j++;
      k = i2;
      break;
      this.idField = localObject;
      this.constructor = paramDatabaseTableConfig.getConstructor();
      this.foreignAutoCreate = bool;
      if (k == 0)
        this.foreignCollections = NO_FOREIGN_COLLECTIONS;
      while (true)
      {
        return;
        this.foreignCollections = new FieldType[k];
        FieldType[] arrayOfFieldType2 = this.fieldTypes;
        int m = arrayOfFieldType2.length;
        int n = 0;
        int i1 = 0;
        while (n < m)
        {
          FieldType localFieldType1 = arrayOfFieldType2[n];
          if (localFieldType1.isForeignCollection())
          {
            this.foreignCollections[i1] = localFieldType1;
            i1++;
          }
          n++;
        }
      }
    }
  }

  public TableInfo(ConnectionSource paramConnectionSource, Dao<T, ID> paramDao, Class<T> paramClass)
  {
    this(paramConnectionSource.getDatabaseType(), paramDao, DatabaseTableConfig.fromClass(paramConnectionSource, paramClass));
  }

  public static <T, ID> T createObject(Constructor<?> paramConstructor, Dao<T, ID> paramDao)
  {
    try
    {
      Object localObject = paramConstructor.newInstance(new Object[0]);
      if ((localObject instanceof BaseDaoEnabled))
        ((BaseDaoEnabled)localObject).setDao(paramDao);
      return localObject;
    }
    catch (Exception localException)
    {
      throw SqlExceptionUtil.create("Could not create object for " + paramConstructor.getDeclaringClass(), localException);
    }
  }

  public T createObject()
  {
    return createObject(this.constructor, this.dao);
  }

  public Constructor<T> getConstructor()
  {
    return this.constructor;
  }

  public Class<T> getDataClass()
  {
    return this.dataClass;
  }

  public FieldType getFieldTypeByColumnName(String paramString)
  {
    if (this.fieldNameMap == null)
    {
      HashMap localHashMap = new HashMap();
      for (FieldType localFieldType3 : this.fieldTypes)
        localHashMap.put(localFieldType3.getColumnName(), localFieldType3);
      this.fieldNameMap = localHashMap;
    }
    FieldType localFieldType1 = (FieldType)this.fieldNameMap.get(paramString);
    if (localFieldType1 != null)
      return localFieldType1;
    for (FieldType localFieldType2 : this.fieldTypes)
      if (localFieldType2.getFieldName().equals(paramString))
        throw new IllegalArgumentException("You should use columnName '" + localFieldType2.getColumnName() + "' for table " + this.tableName + " instead of fieldName '" + localFieldType2.getFieldName() + "'");
    throw new IllegalArgumentException("Unknown column name '" + paramString + "' in table " + this.tableName);
  }

  public FieldType[] getFieldTypes()
  {
    return this.fieldTypes;
  }

  public FieldType[] getForeignCollections()
  {
    return this.foreignCollections;
  }

  public FieldType getIdField()
  {
    return this.idField;
  }

  public String getTableName()
  {
    return this.tableName;
  }

  public boolean hasColumnName(String paramString)
  {
    FieldType[] arrayOfFieldType = this.fieldTypes;
    int i = arrayOfFieldType.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (arrayOfFieldType[j].getColumnName().equals(paramString))
          bool = true;
      }
      else
        return bool;
    }
  }

  public boolean isForeignAutoCreate()
  {
    return this.foreignAutoCreate;
  }

  public boolean isUpdatable()
  {
    return (this.idField != null) && (this.fieldTypes.length > 1);
  }

  public String objectToString(T paramT)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append(paramT.getClass().getSimpleName());
    FieldType[] arrayOfFieldType = this.fieldTypes;
    int i = arrayOfFieldType.length;
    int j = 0;
    while (j < i)
    {
      FieldType localFieldType = arrayOfFieldType[j];
      localStringBuilder.append(' ').append(localFieldType.getColumnName()).append("=");
      try
      {
        localStringBuilder.append(localFieldType.extractJavaFieldValue(paramT));
        j++;
      }
      catch (Exception localException)
      {
        throw new IllegalStateException("Could not generate toString of field " + localFieldType, localException);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.table.TableInfo
 * JD-Core Version:    0.6.2
 */