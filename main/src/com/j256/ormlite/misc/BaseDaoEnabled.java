package com.j256.ormlite.misc;

import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;

public abstract class BaseDaoEnabled<T, ID>
{
  protected transient Dao<T, ID> dao;

  private void a()
  {
    if (this.dao == null)
      throw new SQLException("Dao has not been set on " + getClass() + " object: " + this);
  }

  public int create()
  {
    a();
    return this.dao.create(this);
  }

  public int delete()
  {
    a();
    return this.dao.delete(this);
  }

  public ID extractId()
  {
    a();
    return this.dao.extractId(this);
  }

  public Dao<T, ID> getDao()
  {
    return this.dao;
  }

  public String objectToString()
  {
    try
    {
      a();
      return this.dao.objectToString(this);
    }
    catch (SQLException localSQLException)
    {
      throw new IllegalArgumentException(localSQLException);
    }
  }

  public boolean objectsEqual(T paramT)
  {
    a();
    return this.dao.objectsEqual(this, paramT);
  }

  public int refresh()
  {
    a();
    return this.dao.refresh(this);
  }

  public void setDao(Dao<T, ID> paramDao)
  {
    this.dao = paramDao;
  }

  public int update()
  {
    a();
    return this.dao.update(this);
  }

  public int updateId(ID paramID)
  {
    a();
    return this.dao.updateId(this, paramID);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.misc.BaseDaoEnabled
 * JD-Core Version:    0.6.2
 */