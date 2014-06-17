package com.j256.ormlite.stmt;

import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.support.DatabaseResults;

class StatementExecutor$ObjectArrayRowMapper
  implements GenericRowMapper<Object[]>
{
  private final DataType[] a;

  public StatementExecutor$ObjectArrayRowMapper(DataType[] paramArrayOfDataType)
  {
    this.a = paramArrayOfDataType;
  }

  public Object[] mapRow(DatabaseResults paramDatabaseResults)
  {
    int i = paramDatabaseResults.getColumnCount();
    Object[] arrayOfObject = new Object[i];
    int j = 0;
    if (j < i)
    {
      if (j >= this.a.length);
      for (DataType localDataType = DataType.STRING; ; localDataType = this.a[j])
      {
        arrayOfObject[j] = localDataType.getDataPersister().resultToJava(null, paramDatabaseResults, j);
        j++;
        break;
      }
    }
    return arrayOfObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.StatementExecutor.ObjectArrayRowMapper
 * JD-Core Version:    0.6.2
 */