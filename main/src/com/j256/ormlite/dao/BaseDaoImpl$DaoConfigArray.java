package com.j256.ormlite.dao;

class BaseDaoImpl$DaoConfigArray
{
  private BaseDaoImpl<?, ?>[] a = new BaseDaoImpl[10];
  private int b = 0;

  public void addDao(BaseDaoImpl<?, ?> paramBaseDaoImpl)
  {
    if (this.b == this.a.length)
    {
      BaseDaoImpl[] arrayOfBaseDaoImpl2 = new BaseDaoImpl[2 * this.a.length];
      for (int j = 0; j < this.a.length; j++)
      {
        arrayOfBaseDaoImpl2[j] = this.a[j];
        this.a[j] = null;
      }
      this.a = arrayOfBaseDaoImpl2;
    }
    BaseDaoImpl[] arrayOfBaseDaoImpl1 = this.a;
    int i = this.b;
    this.b = (i + 1);
    arrayOfBaseDaoImpl1[i] = paramBaseDaoImpl;
  }

  public void clear()
  {
    for (int i = 0; i < this.b; i++)
      this.a[i] = null;
    this.b = 0;
  }

  public BaseDaoImpl<?, ?> get(int paramInt)
  {
    return this.a[paramInt];
  }

  public int size()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.BaseDaoImpl.DaoConfigArray
 * JD-Core Version:    0.6.2
 */