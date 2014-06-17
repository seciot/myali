package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Log.Level;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedCreate<T, ID> extends BaseMappedStatement<T, ID>
{
  private final String a;
  private String b;
  private int c;

  private MappedCreate(TableInfo<T, ID> paramTableInfo, String paramString1, FieldType[] paramArrayOfFieldType, String paramString2, int paramInt)
  {
    super(paramTableInfo, paramString1, paramArrayOfFieldType);
    this.b = paramTableInfo.getDataClass().getSimpleName();
    this.a = paramString2;
    this.c = paramInt;
  }

  private void a(T paramT, Number paramNumber, String paramString, ObjectCache paramObjectCache)
  {
    this.idField.assignIdValue(paramT, paramNumber, paramObjectCache);
    if (logger.isLevelEnabled(Log.Level.DEBUG))
    {
      Logger localLogger = logger;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = paramNumber;
      arrayOfObject[1] = paramString;
      arrayOfObject[2] = this.idField.getFieldName();
      arrayOfObject[3] = this.b;
      localLogger.debug("assigned id '{}' from {} to '{}' in {} object", arrayOfObject);
    }
  }

  private static boolean a(DatabaseType paramDatabaseType, FieldType paramFieldType)
  {
    if (paramFieldType.isForeignCollection());
    do
    {
      return false;
      if ((paramDatabaseType.isIdSequenceNeeded()) && (paramDatabaseType.isSelectSequenceBeforeInsert()))
        return true;
    }
    while ((paramFieldType.isGeneratedId()) && (!paramFieldType.isSelfGeneratedId()) && (!paramFieldType.isAllowGeneratedIdInsert()));
    return true;
  }

  private static boolean a(FieldType[] paramArrayOfFieldType, Object paramObject)
  {
    int i = paramArrayOfFieldType.length;
    for (int j = 0; j < i; j++)
      if (paramArrayOfFieldType[j].extractJavaFieldValue(paramObject) == null)
        return false;
    return true;
  }

  public static <T, ID> MappedCreate<T, ID> build(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo)
  {
    StringBuilder localStringBuilder1 = new StringBuilder(128);
    appendTableName(paramDatabaseType, localStringBuilder1, "INSERT INTO ", paramTableInfo.getTableName());
    localStringBuilder1.append('(');
    int i = -1;
    FieldType[] arrayOfFieldType1 = paramTableInfo.getFieldTypes();
    int j = arrayOfFieldType1.length;
    int k = 0;
    int m = 0;
    while (k < j)
    {
      FieldType localFieldType3 = arrayOfFieldType1[k];
      if (a(paramDatabaseType, localFieldType3))
      {
        if (localFieldType3.isVersion())
          i = m;
        m++;
      }
      k++;
    }
    FieldType[] arrayOfFieldType2 = new FieldType[m];
    FieldType[] arrayOfFieldType3 = paramTableInfo.getFieldTypes();
    int n = arrayOfFieldType3.length;
    int i1 = 0;
    int i2 = 1;
    int i3 = 0;
    label151: int i7;
    if (i1 < n)
    {
      FieldType localFieldType2 = arrayOfFieldType3[i1];
      if (!a(paramDatabaseType, localFieldType2))
        break label355;
      if (i2 != 0)
      {
        i2 = 0;
        appendFieldColumnName(paramDatabaseType, localStringBuilder1, localFieldType2, null);
        i7 = i3 + 1;
        arrayOfFieldType2[i3] = localFieldType2;
      }
    }
    while (true)
    {
      i1++;
      i3 = i7;
      break;
      localStringBuilder1.append(",");
      break label151;
      localStringBuilder1.append(") VALUES (");
      FieldType[] arrayOfFieldType4 = paramTableInfo.getFieldTypes();
      int i4 = arrayOfFieldType4.length;
      int i5 = 0;
      int i6 = 1;
      if (i5 < i4)
      {
        if (a(paramDatabaseType, arrayOfFieldType4[i5]))
        {
          if (i6 == 0)
            break label256;
          i6 = 0;
        }
        while (true)
        {
          localStringBuilder1.append("?");
          i5++;
          break;
          label256: localStringBuilder1.append(",");
        }
      }
      localStringBuilder1.append(")");
      FieldType localFieldType1 = paramTableInfo.getIdField();
      String str2;
      if (localFieldType1 == null)
        str2 = null;
      while (true)
      {
        return new MappedCreate(paramTableInfo, localStringBuilder1.toString(), arrayOfFieldType2, str2, i);
        String str1 = localFieldType1.getGeneratedIdSequence();
        if (str1 == null)
        {
          str2 = null;
        }
        else
        {
          StringBuilder localStringBuilder2 = new StringBuilder(64);
          paramDatabaseType.appendSelectNextValFromSequence(localStringBuilder2, str1);
          str2 = localStringBuilder2.toString();
        }
      }
      label355: i7 = i3;
    }
  }

  public int insert(DatabaseType paramDatabaseType, DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    int i = 0;
    int m;
    if (this.idField != null)
      if ((this.idField.isAllowGeneratedIdInsert()) && (!this.idField.isObjectsFieldValueDefault(paramT)))
      {
        m = 0;
        if ((!this.idField.isSelfGeneratedId()) || (!this.idField.isGeneratedId()))
          break label172;
        if (m == 0)
          break label602;
        this.idField.assignField(paramT, this.idField.generateId(), false, paramObjectCache);
      }
    label172: label593: label596: label602: for (MappedCreate.KeyHolder localKeyHolder = null; ; localKeyHolder = null)
      while (true)
      {
        int j;
        Number localNumber;
        try
        {
          if (this.tableInfo.isForeignAutoCreate())
          {
            FieldType[] arrayOfFieldType = this.tableInfo.getFieldTypes();
            int k = arrayOfFieldType.length;
            if (i < k)
            {
              FieldType localFieldType2 = arrayOfFieldType[i];
              if (localFieldType2.isForeignAutoCreate())
              {
                Object localObject3 = localFieldType2.extractRawJavaFieldValue(paramT);
                if ((localObject3 != null) && (localFieldType2.getForeignIdField().isObjectsFieldValueDefault(localObject3)))
                  localFieldType2.createWithForeignDao(localObject3);
              }
              i++;
              continue;
              m = 1;
              break;
              if ((this.idField.isGeneratedIdSequence()) && (paramDatabaseType.isSelectSequenceBeforeInsert()))
              {
                if (m == 0)
                  break label602;
                long l = paramDatabaseConnection.queryForLong(this.a);
                logger.debug("queried for sequence {} using stmt: {}", Long.valueOf(l), this.a);
                if (l == 0L)
                  throw new SQLException("Should not have returned 0 for stmt: " + this.a);
                a(paramT, Long.valueOf(l), "sequence", paramObjectCache);
                localKeyHolder = null;
                continue;
              }
              if ((!this.idField.isGeneratedId()) || (m == 0))
                break label602;
              localKeyHolder = new MappedCreate.KeyHolder(null);
              continue;
            }
          }
          Object[] arrayOfObject = getFieldObjects(paramT);
          if ((this.c < 0) || (arrayOfObject[this.c] != null))
            break label596;
          FieldType localFieldType1 = this.argFieldTypes[this.c];
          localObject1 = localFieldType1.moveToNextValue(null);
          arrayOfObject[this.c] = localFieldType1.convertJavaFieldToSqlArgValue(localObject1);
          j = paramDatabaseConnection.insert(this.statement, arrayOfObject, this.argFieldTypes, localKeyHolder);
          logger.debug("insert data with statement '{}' and {} args, changed {} rows", this.statement, Integer.valueOf(arrayOfObject.length), Integer.valueOf(j));
          if (arrayOfObject.length > 0)
            logger.trace("insert arguments: {}", arrayOfObject);
          if (j <= 0)
            break label593;
          if (localObject1 != null)
            this.argFieldTypes[this.c].assignField(paramT, localObject1, false, null);
          if (localKeyHolder == null)
            break label550;
          localNumber = localKeyHolder.getKey();
          if (localNumber == null)
            throw new SQLException("generated-id key was not set by the update call");
        }
        catch (SQLException localSQLException)
        {
          throw SqlExceptionUtil.create("Unable to run insert stmt on object " + paramT + ": " + this.statement, localSQLException);
        }
        if (localNumber.longValue() == 0L)
          throw new SQLException("generated-id key must not be 0 value");
        a(paramT, localNumber, "keyholder", paramObjectCache);
        if ((paramObjectCache != null) && (a(this.tableInfo.getForeignCollections(), paramT)))
        {
          Object localObject2 = this.idField.extractJavaFieldValue(paramT);
          paramObjectCache.put(this.clazz, localObject2, paramT);
        }
        return j;
        Object localObject1 = null;
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedCreate
 * JD-Core Version:    0.6.2
 */