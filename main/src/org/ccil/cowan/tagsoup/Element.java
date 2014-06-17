package org.ccil.cowan.tagsoup;

public class Element
{
  private ElementType a;
  private AttributesImpl b;
  private Element c;
  private boolean d;

  public Element(ElementType paramElementType, boolean paramBoolean)
  {
    this.a = paramElementType;
    if (paramBoolean);
    for (this.b = new AttributesImpl(paramElementType.f()); ; this.b = new AttributesImpl())
    {
      this.c = null;
      this.d = false;
      return;
    }
  }

  public final AttributesImpl a()
  {
    return this.b;
  }

  public final void a(String paramString1, String paramString2)
  {
    this.a.a(this.b, paramString1, null, paramString2);
  }

  public final void a(Element paramElement)
  {
    this.c = paramElement;
  }

  public final Element b()
  {
    return this.c;
  }

  public final boolean b(Element paramElement)
  {
    return this.a.a(paramElement.a);
  }

  public final String c()
  {
    return this.a.a();
  }

  public final String d()
  {
    return this.a.b();
  }

  public final String e()
  {
    return this.a.c();
  }

  public final int f()
  {
    return this.a.d();
  }

  public final int g()
  {
    return this.a.e();
  }

  public final ElementType h()
  {
    return this.a.g();
  }

  public final void i()
  {
    for (int i = -1 + this.b.getLength(); i >= 0; i--)
      if ((this.b.getType(i).equals("ID")) || (this.b.getQName(i).equals("name")))
        this.b.a(i);
  }

  public final void j()
  {
    for (int i = -1 + this.b.getLength(); i >= 0; i--)
    {
      String str = this.b.getLocalName(i);
      if ((this.b.getValue(i) == null) || (str == null) || (str.length() == 0))
        this.b.a(i);
    }
  }

  public final void k()
  {
    this.d = true;
  }

  public final boolean l()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.ccil.cowan.tagsoup.Element
 * JD-Core Version:    0.6.2
 */