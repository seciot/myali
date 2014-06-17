package com.alipay.android.app.empty;

public enum MonitorType
{
  private int k;
  private String l;

  static
  {
    MonitorType[] arrayOfMonitorType = new MonitorType[10];
    arrayOfMonitorType[0] = a;
    arrayOfMonitorType[1] = b;
    arrayOfMonitorType[2] = c;
    arrayOfMonitorType[3] = d;
    arrayOfMonitorType[4] = e;
    arrayOfMonitorType[5] = f;
    arrayOfMonitorType[6] = g;
    arrayOfMonitorType[7] = h;
    arrayOfMonitorType[8] = i;
    arrayOfMonitorType[9] = j;
  }

  private MonitorType(int arg3, String arg4)
  {
    int n;
    this.k = n;
    Object localObject;
    this.l = localObject;
  }

  public static MonitorType a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return a;
    case 0:
      return b;
    case 1:
      return c;
    case 2:
      return d;
    case 3:
      return e;
    case 4:
      return f;
    case 5:
      return g;
    case 6:
      return h;
    case 7:
      return i;
    case 8:
    }
    return j;
  }

  public final int a()
  {
    return this.k;
  }

  public final String b()
  {
    return this.l;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.empty.MonitorType
 * JD-Core Version:    0.6.2
 */