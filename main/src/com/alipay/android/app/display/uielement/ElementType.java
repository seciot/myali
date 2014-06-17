package com.alipay.android.app.display.uielement;

public enum ElementType
{
  private String y;

  static
  {
    ElementType[] arrayOfElementType = new ElementType[24];
    arrayOfElementType[0] = a;
    arrayOfElementType[1] = b;
    arrayOfElementType[2] = c;
    arrayOfElementType[3] = d;
    arrayOfElementType[4] = e;
    arrayOfElementType[5] = f;
    arrayOfElementType[6] = g;
    arrayOfElementType[7] = h;
    arrayOfElementType[8] = i;
    arrayOfElementType[9] = j;
    arrayOfElementType[10] = k;
    arrayOfElementType[11] = l;
    arrayOfElementType[12] = m;
    arrayOfElementType[13] = n;
    arrayOfElementType[14] = o;
    arrayOfElementType[15] = p;
    arrayOfElementType[16] = q;
    arrayOfElementType[17] = r;
    arrayOfElementType[18] = s;
    arrayOfElementType[19] = t;
    arrayOfElementType[20] = u;
    arrayOfElementType[21] = v;
    arrayOfElementType[22] = w;
    arrayOfElementType[23] = x;
  }

  private ElementType(String arg3)
  {
    Object localObject;
    this.y = localObject;
  }

  public static ElementType a(String paramString)
  {
    for (ElementType localElementType : values())
      if (localElementType.y.equalsIgnoreCase(paramString))
        return localElementType;
    return null;
  }

  public final String a()
  {
    return this.y;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ElementType
 * JD-Core Version:    0.6.2
 */