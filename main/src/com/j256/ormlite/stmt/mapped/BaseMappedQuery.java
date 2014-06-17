package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.BaseForeignCollection;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseMappedQuery<T, ID> extends BaseMappedStatement<T, ID>
  implements GenericRowMapper<T>
{
  private Map<String, Integer> a = null;
  private Object b = null;
  private Object c = null;
  protected final FieldType[] resultsFieldTypes;

  protected BaseMappedQuery(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType1, FieldType[] paramArrayOfFieldType2)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType1);
    this.resultsFieldTypes = paramArrayOfFieldType2;
  }

  public T mapRow(DatabaseResults paramDatabaseResults)
  {
    if (this.a == null);
    ObjectCache localObjectCache;
    for (Object localObject1 = new HashMap(); ; localObject1 = this.a)
    {
      localObjectCache = paramDatabaseResults.getObjectCache();
      if (localObjectCache == null)
        break;
      Object localObject5 = this.idField.resultToJava(paramDatabaseResults, (Map)localObject1);
      Object localObject6 = localObjectCache.get(this.clazz, localObject5);
      if (localObject6 == null)
        break;
      return localObject6;
    }
    Object localObject2 = this.tableInfo.createObject();
    Object localObject3 = null;
    FieldType[] arrayOfFieldType1 = this.resultsFieldTypes;
    int i = arrayOfFieldType1.length;
    int j = 0;
    int k = 0;
    if (j < i)
    {
      FieldType localFieldType2 = arrayOfFieldType1[j];
      if (localFieldType2.isForeignCollection())
        k = 1;
      label219: 
      while (true)
      {
        j++;
        break;
        Object localObject4 = localFieldType2.resultToJava(paramDatabaseResults, (Map)localObject1);
        if ((localObject4 != null) && (this.b != null) && (localFieldType2.getField().getType() == this.b.getClass()) && (localObject4.equals(this.c)))
          localFieldType2.assignField(localObject2, this.b, true, localObjectCache);
        while (true)
        {
          if (localFieldType2 != this.idField)
            break label219;
          localObject3 = localObject4;
          break;
          localFieldType2.assignField(localObject2, localObject4, false, localObjectCache);
        }
      }
    }
    if (k != 0)
      for (FieldType localFieldType1 : this.resultsFieldTypes)
        if (localFieldType1.isForeignCollection())
        {
          BaseForeignCollection localBaseForeignCollection = localFieldType1.buildForeignCollection(localObject2, localObject3, false);
          if (localBaseForeignCollection != null)
            localFieldType1.assignField(localObject2, localBaseForeignCollection, false, localObjectCache);
        }
    if ((localObjectCache != null) && (localObject3 != null))
      localObjectCache.put(this.clazz, localObject3, localObject2);
    if (this.a == null)
      this.a = ((Map)localObject1);
    return localObject2;
  }

  public void setParentInformation(Object paramObject1, Object paramObject2)
  {
    this.b = paramObject1;
    this.c = paramObject2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.BaseMappedQuery
 * JD-Core Version:    0.6.2
 */