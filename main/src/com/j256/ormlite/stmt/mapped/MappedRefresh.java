package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedRefresh<T, ID> extends MappedQueryForId<T, ID>
{
  private MappedRefresh(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType1, FieldType[] paramArrayOfFieldType2)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType1, paramArrayOfFieldType2, "refresh");
  }

  public static <T, ID> MappedRefresh<T, ID> build(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo)
  {
    FieldType localFieldType = paramTableInfo.getIdField();
    if (localFieldType == null)
      throw new SQLException("Cannot refresh " + paramTableInfo.getDataClass() + " because it doesn't have an id field");
    String str = buildStatement(paramDatabaseType, paramTableInfo, localFieldType);
    FieldType[] arrayOfFieldType = new FieldType[1];
    arrayOfFieldType[0] = paramTableInfo.getIdField();
    return new MappedRefresh(paramTableInfo, str, arrayOfFieldType, paramTableInfo.getFieldTypes());
  }

  public int executeRefresh(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    Object localObject = super.execute(paramDatabaseConnection, this.idField.extractJavaFieldValue(paramT), null);
    if (localObject == null)
      return 0;
    for (FieldType localFieldType : this.resultsFieldTypes)
      if (localFieldType != this.idField)
        localFieldType.assignField(paramT, localFieldType.extractJavaFieldValue(localObject), false, paramObjectCache);
    return 1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedRefresh
 * JD-Core Version:    0.6.2
 */