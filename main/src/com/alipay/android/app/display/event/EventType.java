package com.alipay.android.app.display.event;

public enum EventType
{
  private String A;

  static
  {
    EventType[] arrayOfEventType = new EventType[26];
    arrayOfEventType[0] = a;
    arrayOfEventType[1] = b;
    arrayOfEventType[2] = c;
    arrayOfEventType[3] = d;
    arrayOfEventType[4] = e;
    arrayOfEventType[5] = f;
    arrayOfEventType[6] = g;
    arrayOfEventType[7] = h;
    arrayOfEventType[8] = i;
    arrayOfEventType[9] = j;
    arrayOfEventType[10] = k;
    arrayOfEventType[11] = l;
    arrayOfEventType[12] = m;
    arrayOfEventType[13] = n;
    arrayOfEventType[14] = o;
    arrayOfEventType[15] = p;
    arrayOfEventType[16] = q;
    arrayOfEventType[17] = r;
    arrayOfEventType[18] = s;
    arrayOfEventType[19] = t;
    arrayOfEventType[20] = u;
    arrayOfEventType[21] = v;
    arrayOfEventType[22] = w;
    arrayOfEventType[23] = x;
    arrayOfEventType[24] = y;
    arrayOfEventType[25] = z;
  }

  private EventType(String arg3)
  {
    Object localObject;
    this.A = localObject;
  }

  public static EventType a(String paramString)
  {
    for (EventType localEventType : values())
      if (localEventType.A.equalsIgnoreCase(paramString))
        return localEventType;
    return null;
  }

  public final String a()
  {
    return this.A;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.event.EventType
 * JD-Core Version:    0.6.2
 */