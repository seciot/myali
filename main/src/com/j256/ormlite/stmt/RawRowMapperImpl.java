package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.table.TableInfo;

public class RawRowMapperImpl<T, ID>
  implements RawRowMapper<T>
{
  private final TableInfo<T, ID> a;

  public RawRowMapperImpl(TableInfo<T, ID> paramTableInfo)
  {
    this.a = paramTableInfo;
  }

  public T mapRow(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    Object localObject = this.a.createObject();
    for (int i = 0; i < paramArrayOfString1.length; i++)
      if (i < paramArrayOfString2.length)
      {
        FieldType localFieldType = this.a.getFieldTypeByColumnName(paramArrayOfString1[i]);
        localFieldType.assignField(localObject, localFieldType.convertStringToJavaField(paramArrayOfString2[i], i), false, null);
      }
    return localObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.RawRowMapperImpl
 * JD-Core Version:    0.6.2
 */