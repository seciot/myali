package a.a.b.b;

import a.a.a.b;
import a.a.a.d;
import a.a.a.e;

final class c
  implements d
{
  Object a;
  Object b;
  Object[] c;
  b d;

  public c(b paramb, Object paramObject1, Object paramObject2, Object[] paramArrayOfObject)
  {
    this.d = paramb;
    this.a = paramObject1;
    this.b = paramObject2;
    this.c = paramArrayOfObject;
  }

  public final Object a()
  {
    return this.a;
  }

  public final Object b()
  {
    return this.b;
  }

  public final Object[] c()
  {
    if (this.c == null)
      this.c = new Object[0];
    Object[] arrayOfObject = new Object[this.c.length];
    System.arraycopy(this.c, 0, arrayOfObject, 0, this.c.length);
    return arrayOfObject;
  }

  public final e d()
  {
    return this.d.a();
  }

  public final String e()
  {
    return this.d.b();
  }

  public final String toString()
  {
    return this.d.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     a.a.b.b.c
 * JD-Core Version:    0.6.2
 */