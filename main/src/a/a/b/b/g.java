package a.a.b.b;

import a.a.a.e;
import java.util.StringTokenizer;

abstract class g
  implements e
{
  private static boolean a = true;
  static String[] k = new String[0];
  static Class[] l = new Class[0];
  private String b;
  int e = -1;
  String f;
  String g;
  Class h;
  h i;
  ClassLoader j = null;

  g(int paramInt, String paramString, Class paramClass)
  {
    this.e = paramInt;
    this.f = paramString;
    this.h = paramClass;
  }

  private ClassLoader b()
  {
    if (this.j == null)
      this.j = getClass().getClassLoader();
    return this.j;
  }

  public final Class a()
  {
    if (this.h == null)
      this.h = b(2);
    return this.h;
  }

  final String a(int paramInt)
  {
    int m = 0;
    int n = this.b.indexOf('-');
    while (true)
    {
      int i1 = paramInt - 1;
      if (paramInt <= 0)
        break;
      m = n + 1;
      n = this.b.indexOf('-', m);
      paramInt = i1;
    }
    if (n == -1)
      n = this.b.length();
    return this.b.substring(m, n);
  }

  protected abstract String a(k paramk);

  final Class b(int paramInt)
  {
    return b.v(a(paramInt), b());
  }

  final String b(k paramk)
  {
    boolean bool = a;
    String str = null;
    if ((!bool) || (this.i == null));
    while (true)
    {
      try
      {
        this.i = new i();
        if (str == null)
          str = a(paramk);
        if (a)
          this.i.a(paramk.i, str);
        return str;
      }
      catch (Throwable localThrowable)
      {
        a = false;
        str = null;
        continue;
      }
      str = this.i.a(paramk.i);
    }
  }

  final Class[] c(int paramInt)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(a(paramInt), ":");
    int m = localStringTokenizer.countTokens();
    Class[] arrayOfClass = new Class[m];
    for (int n = 0; n < m; n++)
      arrayOfClass[n] = b.v(localStringTokenizer.nextToken(), b());
    return arrayOfClass;
  }

  public final String toString()
  {
    return b(k.k);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     a.a.b.b.g
 * JD-Core Version:    0.6.2
 */