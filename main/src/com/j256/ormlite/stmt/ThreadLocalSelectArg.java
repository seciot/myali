package com.j256.ormlite.stmt;

import com.j256.ormlite.field.SqlType;

public class ThreadLocalSelectArg extends BaseArgumentHolder
  implements ArgumentHolder
{
  private ThreadLocal<ThreadLocalSelectArg.ValueWrapper> a = new ThreadLocal();

  public ThreadLocalSelectArg()
  {
  }

  public ThreadLocalSelectArg(SqlType paramSqlType, Object paramObject)
  {
    super(paramSqlType);
    setValue(paramObject);
  }

  public ThreadLocalSelectArg(Object paramObject)
  {
    setValue(paramObject);
  }

  public ThreadLocalSelectArg(String paramString, Object paramObject)
  {
    super(paramString);
    setValue(paramObject);
  }

  protected Object getValue()
  {
    ThreadLocalSelectArg.ValueWrapper localValueWrapper = (ThreadLocalSelectArg.ValueWrapper)this.a.get();
    if (localValueWrapper == null)
      return null;
    return localValueWrapper.value;
  }

  protected boolean isValueSet()
  {
    return this.a.get() != null;
  }

  public void setValue(Object paramObject)
  {
    this.a.set(new ThreadLocalSelectArg.ValueWrapper(paramObject));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.stmt.ThreadLocalSelectArg
 * JD-Core Version:    0.6.2
 */