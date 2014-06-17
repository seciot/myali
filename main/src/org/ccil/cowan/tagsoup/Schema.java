package org.ccil.cowan.tagsoup;

import java.util.HashMap;
import java.util.Locale;

public abstract class Schema
{
  private HashMap a = new HashMap();
  private HashMap b = new HashMap();
  private String c = "";
  private String d = "";
  private ElementType e = null;

  public final ElementType a()
  {
    return this.e;
  }

  public final ElementType a(String paramString)
  {
    return (ElementType)this.b.get(paramString.toLowerCase(Locale.getDefault()));
  }

  public final void a(String paramString, int paramInt)
  {
    this.a.put(paramString, Integer.valueOf(paramInt));
  }

  public final void a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    ElementType localElementType = new ElementType(paramString, paramInt1, paramInt2, paramInt3, this);
    this.b.put(paramString.toLowerCase(Locale.getDefault()), localElementType);
    if (paramInt2 == -2147483648)
      this.e = localElementType;
  }

  public final void a(String paramString1, String paramString2)
  {
    ElementType localElementType1 = a(paramString1);
    ElementType localElementType2 = a(paramString2);
    if (localElementType1 == null)
      throw new Error("No child " + paramString1 + " for parent " + paramString2);
    if (localElementType2 == null)
      throw new Error("No parent " + paramString2 + " for child " + paramString1);
    localElementType1.b(localElementType2);
  }

  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    ElementType localElementType = a(paramString1);
    if (localElementType == null)
      throw new Error("Attribute " + paramString2 + " specified for unknown element type " + paramString1);
    localElementType.a(paramString2, paramString3, paramString4);
  }

  public final int b(String paramString)
  {
    Integer localInteger = (Integer)this.a.get(paramString);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  public final String b()
  {
    return this.c;
  }

  public final String c()
  {
    return this.d;
  }

  public final void c(String paramString)
  {
    this.c = paramString;
  }

  public final void d(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.ccil.cowan.tagsoup.Schema
 * JD-Core Version:    0.6.2
 */