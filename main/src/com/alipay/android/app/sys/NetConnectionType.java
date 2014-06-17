package com.alipay.android.app.sys;

public enum NetConnectionType
{
  private int q;
  private String r;

  static
  {
    NetConnectionType[] arrayOfNetConnectionType = new NetConnectionType[16];
    arrayOfNetConnectionType[0] = a;
    arrayOfNetConnectionType[1] = b;
    arrayOfNetConnectionType[2] = c;
    arrayOfNetConnectionType[3] = d;
    arrayOfNetConnectionType[4] = e;
    arrayOfNetConnectionType[5] = f;
    arrayOfNetConnectionType[6] = g;
    arrayOfNetConnectionType[7] = h;
    arrayOfNetConnectionType[8] = i;
    arrayOfNetConnectionType[9] = j;
    arrayOfNetConnectionType[10] = k;
    arrayOfNetConnectionType[11] = l;
    arrayOfNetConnectionType[12] = m;
    arrayOfNetConnectionType[13] = n;
    arrayOfNetConnectionType[14] = o;
    arrayOfNetConnectionType[15] = p;
  }

  private NetConnectionType(int arg3, String arg4)
  {
    int i1;
    this.q = i1;
    Object localObject;
    this.r = localObject;
  }

  public static NetConnectionType a(int paramInt)
  {
    for (NetConnectionType localNetConnectionType : values())
      if (localNetConnectionType.q == paramInt)
        return localNetConnectionType;
    return o;
  }

  public final String a()
  {
    return this.r;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.sys.NetConnectionType
 * JD-Core Version:    0.6.2
 */