package a.a.b.b;

import a.a.a.a.c;

final class f extends a
  implements c
{
  Class d;

  f(int paramInt, String paramString, Class paramClass1, Class[] paramArrayOfClass1, String[] paramArrayOfString, Class[] paramArrayOfClass2, Class paramClass2)
  {
    super(paramInt, paramString, paramClass1, paramArrayOfClass1, paramArrayOfString, paramArrayOfClass2);
    this.d = paramClass2;
  }

  protected final String a(k paramk)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (this.e == -1)
      this.e = Integer.parseInt(a(0), 16);
    localStringBuffer.append(paramk.a(this.e));
    if (paramk.b)
    {
      if (this.d == null)
        this.d = b(6);
      localStringBuffer.append(paramk.a(this.d));
    }
    if (paramk.b)
      localStringBuffer.append(" ");
    Class localClass = a();
    if (this.g == null)
      this.g = a().getName();
    localStringBuffer.append(paramk.a(localClass, this.g));
    localStringBuffer.append(".");
    if (this.f == null)
      this.f = a(1);
    localStringBuffer.append(this.f);
    if (this.a == null)
      this.a = c(3);
    paramk.a(localStringBuffer, this.a);
    if (this.c == null)
      this.c = c(5);
    paramk.b(localStringBuffer, this.c);
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     a.a.b.b.f
 * JD-Core Version:    0.6.2
 */