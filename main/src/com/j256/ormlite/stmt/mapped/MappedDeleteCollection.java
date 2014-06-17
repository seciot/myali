package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;

public class MappedDeleteCollection<T, ID> extends BaseMappedStatement<T, ID>
{
  private MappedDeleteCollection(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType);
  }

  private static <T, ID> int a(DatabaseConnection paramDatabaseConnection, Class<T> paramClass, MappedDeleteCollection<T, ID> paramMappedDeleteCollection, Object[] paramArrayOfObject, ObjectCache paramObjectCache)
  {
    try
    {
      int i = paramDatabaseConnection.delete(paramMappedDeleteCollection.statement, paramArrayOfObject, paramMappedDeleteCollection.argFieldTypes);
      if ((i > 0) && (paramObjectCache != null))
      {
        int j = paramArrayOfObject.length;
        for (int k = 0; k < j; k++)
          paramObjectCache.remove(paramClass, paramArrayOfObject[k]);
      }
      logger.debug("delete-collection with statement '{}' and {} args, changed {} rows", paramMappedDeleteCollection.statement, Integer.valueOf(paramArrayOfObject.length), Integer.valueOf(i));
      if (paramArrayOfObject.length > 0)
        logger.trace("delete-collection arguments: {}", paramArrayOfObject);
      return i;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Unable to run delete collection stmt: " + paramMappedDeleteCollection.statement, localSQLException);
    }
  }

  private static <T, ID> MappedDeleteCollection<T, ID> a(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, int paramInt)
  {
    FieldType localFieldType = paramTableInfo.getIdField();
    if (localFieldType == null)
      throw new SQLException("Cannot delete " + paramTableInfo.getDataClass() + " because it doesn't have an id field defined");
    StringBuilder localStringBuilder = new StringBuilder(128);
    appendTableName(paramDatabaseType, localStringBuilder, "DELETE FROM ", paramTableInfo.getTableName());
    FieldType[] arrayOfFieldType = new FieldType[paramInt];
    a(paramDatabaseType, localFieldType, localStringBuilder, paramInt, arrayOfFieldType);
    return new MappedDeleteCollection(paramTableInfo, localStringBuilder.toString(), arrayOfFieldType);
  }

  private static void a(DatabaseType paramDatabaseType, FieldType paramFieldType, StringBuilder paramStringBuilder, int paramInt, FieldType[] paramArrayOfFieldType)
  {
    paramStringBuilder.append("WHERE ");
    paramDatabaseType.appendEscapedEntityName(paramStringBuilder, paramFieldType.getColumnName());
    paramStringBuilder.append(" IN (");
    int i = 1;
    int j = 0;
    if (j < paramInt)
    {
      if (i != 0)
        i = 0;
      while (true)
      {
        paramStringBuilder.append('?');
        if (paramArrayOfFieldType != null)
          paramArrayOfFieldType[j] = paramFieldType;
        j++;
        break;
        paramStringBuilder.append(',');
      }
    }
    paramStringBuilder.append(") ");
  }

  public static <T, ID> int deleteIds(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, DatabaseConnection paramDatabaseConnection, Collection<ID> paramCollection, ObjectCache paramObjectCache)
  {
    MappedDeleteCollection localMappedDeleteCollection = a(paramDatabaseType, paramTableInfo, paramCollection.size());
    Object[] arrayOfObject = new Object[paramCollection.size()];
    FieldType localFieldType = paramTableInfo.getIdField();
    int i = 0;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      arrayOfObject[i] = localFieldType.convertJavaFieldToSqlArgValue(localIterator.next());
      i++;
    }
    return a(paramDatabaseConnection, paramTableInfo.getDataClass(), localMappedDeleteCollection, arrayOfObject, paramObjectCache);
  }

  public static <T, ID> int deleteObjects(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, DatabaseConnection paramDatabaseConnection, Collection<T> paramCollection, ObjectCache paramObjectCache)
  {
    MappedDeleteCollection localMappedDeleteCollection = a(paramDatabaseType, paramTableInfo, paramCollection.size());
    Object[] arrayOfObject = new Object[paramCollection.size()];
    FieldType localFieldType = paramTableInfo.getIdField();
    int i = 0;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      arrayOfObject[i] = localFieldType.extractJavaFieldToSqlArgValue(localIterator.next());
      i++;
    }
    return a(paramDatabaseConnection, paramTableInfo.getDataClass(), localMappedDeleteCollection, arrayOfObject, paramObjectCache);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedDeleteCollection
 * JD-Core Version:    0.6.2
 */