package com.alipay.android.app.display.uielement;

import android.text.TextUtils;

public enum ElementDimension
{
  String d;

  static
  {
    ElementDimension[] arrayOfElementDimension = new ElementDimension[3];
    arrayOfElementDimension[0] = a;
    arrayOfElementDimension[1] = b;
    arrayOfElementDimension[2] = c;
  }

  private ElementDimension(String arg3)
  {
    Object localObject;
    this.d = localObject;
  }

  static ElementDimension a(String paramString)
  {
    for (ElementDimension localElementDimension : values())
      if (TextUtils.equals(paramString, localElementDimension.d))
        return localElementDimension;
    return null;
  }

  public final String a()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ElementDimension
 * JD-Core Version:    0.6.2
 */