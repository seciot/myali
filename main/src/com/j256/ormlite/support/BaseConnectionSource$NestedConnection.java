package com.j256.ormlite.support;

class BaseConnectionSource$NestedConnection
{
  private int a;
  public final DatabaseConnection connection;

  public BaseConnectionSource$NestedConnection(DatabaseConnection paramDatabaseConnection)
  {
    this.connection = paramDatabaseConnection;
    this.a = 1;
  }

  public int decrementAndGet()
  {
    this.a = (-1 + this.a);
    return this.a;
  }

  public void increment()
  {
    this.a = (1 + this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.support.BaseConnectionSource.NestedConnection
 * JD-Core Version:    0.6.2
 */