package com.alipay.android.mini.data;

public enum MiniStatus
{
  private String k;

  static
  {
    MiniStatus[] arrayOfMiniStatus = new MiniStatus[10];
    arrayOfMiniStatus[0] = a;
    arrayOfMiniStatus[1] = b;
    arrayOfMiniStatus[2] = c;
    arrayOfMiniStatus[3] = d;
    arrayOfMiniStatus[4] = e;
    arrayOfMiniStatus[5] = f;
    arrayOfMiniStatus[6] = g;
    arrayOfMiniStatus[7] = h;
    arrayOfMiniStatus[8] = i;
    arrayOfMiniStatus[9] = j;
  }

  private MiniStatus(String arg3)
  {
    Object localObject;
    this.k = localObject;
  }

  public static MiniStatus a(String paramString)
  {
    Object localObject1 = null;
    MiniStatus[] arrayOfMiniStatus = values();
    int m = arrayOfMiniStatus.length;
    int n = 0;
    Object localObject2;
    if (n < m)
    {
      localObject2 = arrayOfMiniStatus[n];
      if (!paramString.startsWith(((MiniStatus)localObject2).k))
        break label47;
    }
    while (true)
    {
      n++;
      localObject1 = localObject2;
      break;
      return localObject1;
      label47: localObject2 = localObject1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.data.MiniStatus
 * JD-Core Version:    0.6.2
 */