package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedQueryForId<T, ID> extends BaseMappedQuery<T, ID>
{
  private final String a;

  protected MappedQueryForId(TableInfo<T, ID> paramTableInfo, String paramString1, FieldType[] paramArrayOfFieldType1, FieldType[] paramArrayOfFieldType2, String paramString2)
  {
    super(paramTableInfo, paramString1, paramArrayOfFieldType1, paramArrayOfFieldType2);
    this.a = paramString2;
  }

  private void a(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject.length > 0)
      logger.trace("{} arguments: {}", this.a, paramArrayOfObject);
  }

  public static <T, ID> MappedQueryForId<T, ID> build(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, FieldType paramFieldType)
  {
    if (paramFieldType == null)
    {
      paramFieldType = paramTableInfo.getIdField();
      if (paramFieldType == null)
        throw new SQLException("Cannot query-for-id with " + paramTableInfo.getDataClass() + " because it doesn't have an id field");
    }
    return new MappedQueryForId(paramTableInfo, buildStatement(paramDatabaseType, paramTableInfo, paramFieldType), new FieldType[] { paramFieldType }, paramTableInfo.getFieldTypes(), "query-for-id");
  }

  protected static <T, ID> String buildStatement(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, FieldType paramFieldType)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    appendTableName(paramDatabaseType, localStringBuilder, "SELECT * FROM ", paramTableInfo.getTableName());
    appendWhereFieldEq(paramDatabaseType, paramFieldType, localStringBuilder, null);
    return localStringBuilder.toString();
  }

  public T execute(DatabaseConnection paramDatabaseConnection, ID paramID, ObjectCache paramObjectCache)
  {
    if (paramObjectCache != null)
    {
      Object localObject2 = paramObjectCache.get(this.clazz, paramID);
      if (localObject2 != null)
        return localObject2;
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = convertIdToFieldObject(paramID);
    Object localObject1 = paramDatabaseConnection.queryForOne(this.statement, arrayOfObject, this.argFieldTypes, this, paramObjectCache);
    if (localObject1 == null)
      logger.debug("{} using '{}' and {} args, got no results", this.a, this.statement, Integer.valueOf(arrayOfObject.length));
    while (true)
    {
      a(arrayOfObject);
      return localObject1;
      if (localObject1 == DatabaseConnection.MORE_THAN_ONE)
      {
        logger.error("{} using '{}' and {} args, got >1 results", this.a, this.statement, Integer.valueOf(arrayOfObject.length));
        a(arrayOfObject);
        throw new SQLException(this.a + " got more than 1 result: " + this.statement);
      }
      logger.debug("{} using '{}' and {} args, got 1 result", this.a, this.statement, Integer.valueOf(arrayOfObject.length));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedQueryForId
 * JD-Core Version:    0.6.2
 */