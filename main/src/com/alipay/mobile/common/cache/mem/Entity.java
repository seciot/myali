package com.alipay.mobile.common.cache.mem;

public class Entity
{
  protected String mGroup;
  protected String mOwner;
  protected Object mValue;

  public Entity(String paramString1, String paramString2, Object paramObject)
  {
    if (paramString1 == null);
    for (this.mOwner = "-"; ; this.mOwner = paramString1)
    {
      this.mGroup = paramString2;
      this.mValue = paramObject;
      return;
    }
  }

  public boolean authenticate(String paramString)
  {
    if (this.mOwner.equalsIgnoreCase("-"));
    do
    {
      return true;
      if (paramString == null)
        return false;
    }
    while (paramString.contains(this.mOwner));
    return false;
  }

  public String getGroup()
  {
    return this.mGroup;
  }

  public String getOwner()
  {
    return this.mOwner;
  }

  public Object getValue()
  {
    return this.mValue;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.mValue.toString();
    return String.format("value: %s", arrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.mem.Entity
 * JD-Core Version:    0.6.2
 */