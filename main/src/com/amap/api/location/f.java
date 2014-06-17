package com.amap.api.location;

public class f
{
  public long a;
  public float b;
  public AMapLocationListener c;
  public boolean d = true;
  public AMapLocation e = null;
  public String f;

  public f(long paramLong, float paramFloat, AMapLocationListener paramAMapLocationListener, String paramString)
  {
    this.a = paramLong;
    this.b = paramFloat;
    this.c = paramAMapLocationListener;
    this.f = paramString;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    f localf;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localf = (f)paramObject;
        if (this.c != null)
          break;
      }
      while (localf.c == null);
      return false;
    }
    while (this.c.equals(localf.c));
    return false;
  }

  public int hashCode()
  {
    if (this.c == null);
    for (int i = 0; ; i = this.c.hashCode())
      return i + 31;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.f
 * JD-Core Version:    0.6.2
 */