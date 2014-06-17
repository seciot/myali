package com.j256.ormlite.dao;

public class Dao$CreateOrUpdateStatus
{
  private boolean a;
  private boolean b;
  private int c;

  public Dao$CreateOrUpdateStatus(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.c = paramInt;
  }

  public int getNumLinesChanged()
  {
    return this.c;
  }

  public boolean isCreated()
  {
    return this.a;
  }

  public boolean isUpdated()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.Dao.CreateOrUpdateStatus
 * JD-Core Version:    0.6.2
 */