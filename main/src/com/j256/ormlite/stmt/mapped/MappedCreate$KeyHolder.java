package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.support.GeneratedKeyHolder;
import java.sql.SQLException;

class MappedCreate$KeyHolder
  implements GeneratedKeyHolder
{
  Number key;

  public void addKey(Number paramNumber)
  {
    if (this.key == null)
    {
      this.key = paramNumber;
      return;
    }
    throw new SQLException("generated key has already been set to " + this.key + ", now set to " + paramNumber);
  }

  public Number getKey()
  {
    return this.key;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedCreate.KeyHolder
 * JD-Core Version:    0.6.2
 */