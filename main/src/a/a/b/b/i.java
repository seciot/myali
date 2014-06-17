package a.a.b.b;

import java.lang.ref.SoftReference;

final class i
  implements h
{
  private SoftReference a;

  public i()
  {
    b();
  }

  private String[] a()
  {
    return (String[])this.a.get();
  }

  private String[] b()
  {
    String[] arrayOfString = new String[3];
    this.a = new SoftReference(arrayOfString);
    return arrayOfString;
  }

  public final String a(int paramInt)
  {
    String[] arrayOfString = a();
    if (arrayOfString == null)
      return null;
    return arrayOfString[paramInt];
  }

  public final void a(int paramInt, String paramString)
  {
    String[] arrayOfString = a();
    if (arrayOfString == null)
      arrayOfString = b();
    arrayOfString[paramInt] = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     a.a.b.b.i
 * JD-Core Version:    0.6.2
 */