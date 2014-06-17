package com.j256.ormlite.table;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.JavaxPersistence;
import com.j256.ormlite.support.ConnectionSource;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DatabaseTableConfig<T>
{
  private Constructor<T> constructor;
  private Class<T> dataClass;
  private List<DatabaseFieldConfig> fieldConfigs;
  private FieldType[] fieldTypes;
  private String tableName;

  public DatabaseTableConfig()
  {
  }

  public DatabaseTableConfig(Class<T> paramClass, String paramString, List<DatabaseFieldConfig> paramList)
  {
    this.dataClass = paramClass;
    this.tableName = paramString;
    this.fieldConfigs = paramList;
  }

  private DatabaseTableConfig(Class<T> paramClass, String paramString, FieldType[] paramArrayOfFieldType)
  {
    this.dataClass = paramClass;
    this.tableName = paramString;
    this.fieldTypes = paramArrayOfFieldType;
  }

  public DatabaseTableConfig(Class<T> paramClass, List<DatabaseFieldConfig> paramList)
  {
    this(paramClass, extractTableName(paramClass), paramList);
  }

  private FieldType[] convertFieldConfigs(ConnectionSource paramConnectionSource, String paramString, List<DatabaseFieldConfig> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      DatabaseFieldConfig localDatabaseFieldConfig = (DatabaseFieldConfig)localIterator.next();
      Class localClass = this.dataClass;
      FieldType localFieldType;
      while (true)
      {
        localFieldType = null;
        if (localClass != null);
        try
        {
          Field localField = localClass.getDeclaredField(localDatabaseFieldConfig.getFieldName());
          if (localField != null)
          {
            localFieldType = new FieldType(paramConnectionSource, paramString, localField, localDatabaseFieldConfig, this.dataClass);
            if (localFieldType != null)
              break;
            throw new SQLException("Could not find declared field with name '" + localDatabaseFieldConfig.getFieldName() + "' for " + this.dataClass);
          }
        }
        catch (NoSuchFieldException localNoSuchFieldException)
        {
          localClass = localClass.getSuperclass();
        }
      }
      localArrayList.add(localFieldType);
    }
    if (localArrayList.isEmpty())
      throw new SQLException("No fields were configured for class " + this.dataClass);
    return (FieldType[])localArrayList.toArray(new FieldType[localArrayList.size()]);
  }

  private static <T> FieldType[] extractFieldTypes(ConnectionSource paramConnectionSource, Class<T> paramClass, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (Object localObject = paramClass; localObject != null; localObject = ((Class)localObject).getSuperclass())
    {
      Field[] arrayOfField = ((Class)localObject).getDeclaredFields();
      int i = arrayOfField.length;
      for (int j = 0; j < i; j++)
      {
        FieldType localFieldType = FieldType.createFieldType(paramConnectionSource, paramString, arrayOfField[j], paramClass);
        if (localFieldType != null)
          localArrayList.add(localFieldType);
      }
    }
    if (localArrayList.isEmpty())
      throw new IllegalArgumentException("No fields have a " + DatabaseField.class.getSimpleName() + " annotation in " + paramClass);
    return (FieldType[])localArrayList.toArray(new FieldType[localArrayList.size()]);
  }

  public static <T> String extractTableName(Class<T> paramClass)
  {
    DatabaseTable localDatabaseTable = (DatabaseTable)paramClass.getAnnotation(DatabaseTable.class);
    String str;
    if ((localDatabaseTable != null) && (localDatabaseTable.tableName() != null) && (localDatabaseTable.tableName().length() > 0))
      str = localDatabaseTable.tableName();
    do
    {
      return str;
      str = JavaxPersistence.getEntityName(paramClass);
    }
    while (str != null);
    return paramClass.getSimpleName().toLowerCase();
  }

  // ERROR //
  public static <T> Constructor<T> findNoArgConstructor(Class<T> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 176	java/lang/Class:getDeclaredConstructors	()[Ljava/lang/reflect/Constructor;
    //   4: checkcast 178	[Ljava/lang/reflect/Constructor;
    //   7: astore_2
    //   8: aload_2
    //   9: arraylength
    //   10: istore_3
    //   11: iconst_0
    //   12: istore 4
    //   14: iload 4
    //   16: iload_3
    //   17: if_icmpge +93 -> 110
    //   20: aload_2
    //   21: iload 4
    //   23: aaload
    //   24: astore 5
    //   26: aload 5
    //   28: invokevirtual 184	java/lang/reflect/Constructor:getParameterTypes	()[Ljava/lang/Class;
    //   31: arraylength
    //   32: ifne +72 -> 104
    //   35: aload 5
    //   37: invokevirtual 187	java/lang/reflect/Constructor:isAccessible	()Z
    //   40: ifne +9 -> 49
    //   43: aload 5
    //   45: iconst_1
    //   46: invokevirtual 191	java/lang/reflect/Constructor:setAccessible	(Z)V
    //   49: aload 5
    //   51: areturn
    //   52: astore_1
    //   53: new 135	java/lang/IllegalArgumentException
    //   56: dup
    //   57: new 83	java/lang/StringBuilder
    //   60: dup
    //   61: ldc 193
    //   63: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   66: aload_0
    //   67: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: aload_1
    //   74: invokespecial 196	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   77: athrow
    //   78: astore 6
    //   80: new 135	java/lang/IllegalArgumentException
    //   83: dup
    //   84: new 83	java/lang/StringBuilder
    //   87: dup
    //   88: ldc 198
    //   90: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_0
    //   94: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokespecial 145	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   103: athrow
    //   104: iinc 4 1
    //   107: goto -93 -> 14
    //   110: aload_0
    //   111: invokevirtual 201	java/lang/Class:getEnclosingClass	()Ljava/lang/Class;
    //   114: ifnonnull +27 -> 141
    //   117: new 135	java/lang/IllegalArgumentException
    //   120: dup
    //   121: new 83	java/lang/StringBuilder
    //   124: dup
    //   125: ldc 203
    //   127: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: aload_0
    //   131: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokespecial 145	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   140: athrow
    //   141: new 135	java/lang/IllegalArgumentException
    //   144: dup
    //   145: new 83	java/lang/StringBuilder
    //   148: dup
    //   149: ldc 203
    //   151: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: aload_0
    //   155: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   158: ldc 205
    //   160: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokespecial 145	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   169: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	52	java/lang/Exception
    //   43	49	78	java/lang/SecurityException
  }

  public static <T> DatabaseTableConfig<T> fromClass(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    String str = extractTableName(paramClass);
    if (paramConnectionSource.getDatabaseType().isEntityNamesMustBeUpCase())
      str = str.toUpperCase();
    return new DatabaseTableConfig(paramClass, str, extractFieldTypes(paramConnectionSource, paramClass, str));
  }

  public void extractFieldTypes(ConnectionSource paramConnectionSource)
  {
    if (this.fieldTypes == null)
    {
      if (this.fieldConfigs == null)
        this.fieldTypes = extractFieldTypes(paramConnectionSource, this.dataClass, this.tableName);
    }
    else
      return;
    this.fieldTypes = convertFieldConfigs(paramConnectionSource, this.tableName, this.fieldConfigs);
  }

  public Constructor<T> getConstructor()
  {
    if (this.constructor == null)
      this.constructor = findNoArgConstructor(this.dataClass);
    return this.constructor;
  }

  public Class<T> getDataClass()
  {
    return this.dataClass;
  }

  public List<DatabaseFieldConfig> getFieldConfigs()
  {
    return this.fieldConfigs;
  }

  public FieldType[] getFieldTypes(DatabaseType paramDatabaseType)
  {
    if (this.fieldTypes == null)
      throw new SQLException("Field types have not been extracted in table config");
    return this.fieldTypes;
  }

  public String getTableName()
  {
    return this.tableName;
  }

  public void initialize()
  {
    if (this.dataClass == null)
      throw new IllegalStateException("dataClass was never set on " + getClass().getSimpleName());
    if (this.tableName == null)
      this.tableName = extractTableName(this.dataClass);
  }

  public void setConstructor(Constructor<T> paramConstructor)
  {
    this.constructor = paramConstructor;
  }

  public void setDataClass(Class<T> paramClass)
  {
    this.dataClass = paramClass;
  }

  public void setFieldConfigs(List<DatabaseFieldConfig> paramList)
  {
    this.fieldConfigs = paramList;
  }

  public void setTableName(String paramString)
  {
    this.tableName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.table.DatabaseTableConfig
 * JD-Core Version:    0.6.2
 */