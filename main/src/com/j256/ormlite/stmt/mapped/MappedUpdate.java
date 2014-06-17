package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedUpdate<T, ID> extends BaseMappedStatement<T, ID>
{
  private final FieldType a;
  private final int b;

  private MappedUpdate(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType, FieldType paramFieldType, int paramInt)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType);
    this.a = paramFieldType;
    this.b = paramInt;
  }

  private static boolean a(FieldType paramFieldType1, FieldType paramFieldType2)
  {
    return (paramFieldType1 != paramFieldType2) && (!paramFieldType1.isForeignCollection());
  }

  public static <T, ID> MappedUpdate<T, ID> build(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo)
  {
    FieldType localFieldType1 = paramTableInfo.getIdField();
    if (localFieldType1 == null)
      throw new SQLException("Cannot update " + paramTableInfo.getDataClass() + " because it doesn't have an id field");
    StringBuilder localStringBuilder = new StringBuilder(64);
    appendTableName(paramDatabaseType, localStringBuilder, "UPDATE ", paramTableInfo.getTableName());
    Object localObject = null;
    int i = -1;
    FieldType[] arrayOfFieldType1 = paramTableInfo.getFieldTypes();
    int j = arrayOfFieldType1.length;
    int k = 0;
    int m = 0;
    while (k < j)
    {
      FieldType localFieldType3 = arrayOfFieldType1[k];
      if (a(localFieldType3, localFieldType1))
      {
        if (localFieldType3.isVersion())
        {
          i = m;
          localObject = localFieldType3;
        }
        m++;
      }
      k++;
    }
    int n = m + 1;
    if (localObject != null)
      n++;
    FieldType[] arrayOfFieldType2 = new FieldType[n];
    int i1 = 0;
    FieldType[] arrayOfFieldType3 = paramTableInfo.getFieldTypes();
    int i2 = arrayOfFieldType3.length;
    int i3 = 1;
    int i4 = 0;
    label212: int i8;
    int i6;
    if (i4 < i2)
    {
      FieldType localFieldType2 = arrayOfFieldType3[i4];
      if (!a(localFieldType2, localFieldType1))
        break label351;
      if (i3 != 0)
      {
        localStringBuilder.append("SET ");
        i3 = 0;
        appendFieldColumnName(paramDatabaseType, localStringBuilder, localFieldType2, null);
        i8 = i1 + 1;
        arrayOfFieldType2[i1] = localFieldType2;
        localStringBuilder.append("= ?");
        i6 = i3;
      }
    }
    for (int i7 = i8; ; i7 = i1)
    {
      i4++;
      i1 = i7;
      i3 = i6;
      break;
      localStringBuilder.append(", ");
      break label212;
      localStringBuilder.append(' ');
      appendWhereFieldEq(paramDatabaseType, localFieldType1, localStringBuilder, null);
      int i5 = i1 + 1;
      arrayOfFieldType2[i1] = localFieldType1;
      if (localObject != null)
      {
        localStringBuilder.append(" AND ");
        appendFieldColumnName(paramDatabaseType, localStringBuilder, localObject, null);
        localStringBuilder.append("= ?");
        arrayOfFieldType2[i5] = localObject;
      }
      return new MappedUpdate(paramTableInfo, localStringBuilder.toString(), arrayOfFieldType2, localObject, i);
      label351: i6 = i3;
    }
  }

  public int update(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    int i = 0;
    while (true)
    {
      try
      {
        if (this.argFieldTypes.length <= 1)
          return 0;
        Object[] arrayOfObject = getFieldObjects(paramT);
        if (this.a != null)
        {
          Object localObject4 = this.a.extractJavaFieldValue(paramT);
          Object localObject5 = this.a.moveToNextValue(localObject4);
          arrayOfObject[this.b] = this.a.convertJavaFieldToSqlArgValue(localObject5);
          localObject1 = localObject5;
          int j = paramDatabaseConnection.update(this.statement, arrayOfObject, this.argFieldTypes);
          if (j > 0)
          {
            if (localObject1 != null)
              this.a.assignField(paramT, localObject1, false, null);
            if (paramObjectCache != null)
            {
              Object localObject2 = this.idField.extractJavaFieldValue(paramT);
              Object localObject3 = paramObjectCache.get(this.clazz, localObject2);
              if ((localObject3 != null) && (localObject3 != paramT))
              {
                FieldType[] arrayOfFieldType = this.tableInfo.getFieldTypes();
                int k = arrayOfFieldType.length;
                if (i < k)
                {
                  FieldType localFieldType = arrayOfFieldType[i];
                  if (localFieldType == this.idField)
                    break label287;
                  localFieldType.assignField(localObject3, localFieldType.extractJavaFieldValue(paramT), false, paramObjectCache);
                  break label287;
                }
              }
            }
          }
          logger.debug("update data with statement '{}' and {} args, changed {} rows", this.statement, Integer.valueOf(arrayOfObject.length), Integer.valueOf(j));
          if (arrayOfObject.length > 0)
            logger.trace("update arguments: {}", arrayOfObject);
          return j;
        }
      }
      catch (SQLException localSQLException)
      {
        throw SqlExceptionUtil.create("Unable to run update stmt on object " + paramT + ": " + this.statement, localSQLException);
      }
      Object localObject1 = null;
      continue;
      label287: i++;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedUpdate
 * JD-Core Version:    0.6.2
 */