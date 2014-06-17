package com.j256.ormlite.android;

import java.sql.Savepoint;

class AndroidDatabaseConnection$OurSavePoint
  implements Savepoint
{
  private String a;

  public AndroidDatabaseConnection$OurSavePoint(String paramString)
  {
    this.a = paramString;
  }

  public int getSavepointId()
  {
    return 0;
  }

  public String getSavepointName()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.AndroidDatabaseConnection.OurSavePoint
 * JD-Core Version:    0.6.2
 */