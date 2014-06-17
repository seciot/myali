package com.alipay.android.mini.uielement;

public enum ElementType
{
  private String v;

  static
  {
    ElementType[] arrayOfElementType = new ElementType[21];
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
  }

  private ElementType(String arg3)
  {
    Object localObject;
    this.v = localObject;
  }

  public static ElementType a(String paramString)
  {
    for (ElementType localElementType : values())
      if (localElementType.v.equalsIgnoreCase(paramString))
        return localElementType;
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ElementType
 * JD-Core Version:    0.6.2
 */