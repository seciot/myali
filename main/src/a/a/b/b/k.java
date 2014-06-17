package a.a.b.b;

import java.lang.reflect.Modifier;

final class k
{
  static k j;
  static k k;
  static k l;
  boolean a = true;
  boolean b = true;
  boolean c = false;
  boolean d = false;
  boolean e = false;
  boolean f = true;
  boolean g = true;
  boolean h = true;
  int i;

  static
  {
    k localk1 = new k();
    j = localk1;
    localk1.a = true;
    j.b = false;
    j.c = false;
    j.d = false;
    j.e = true;
    j.f = false;
    j.g = false;
    j.i = 0;
    k localk2 = new k();
    k = localk2;
    localk2.a = true;
    k.b = true;
    k.c = false;
    k.d = false;
    k.e = false;
    j.i = 1;
    k localk3 = new k();
    l = localk3;
    localk3.a = false;
    l.b = true;
    l.c = false;
    l.d = true;
    l.e = false;
    l.h = false;
    l.i = 2;
  }

  private String a(Class paramClass, String paramString, boolean paramBoolean)
  {
    if (paramClass == null)
      return "ANONYMOUS";
    if (paramClass.isArray())
    {
      Class localClass = paramClass.getComponentType();
      return a(localClass, localClass.getName(), paramBoolean) + "[]";
    }
    if (paramBoolean)
    {
      int m = paramString.lastIndexOf('.');
      if (m == -1);
      while (true)
      {
        return paramString.replace('$', '.');
        paramString = paramString.substring(m + 1);
      }
    }
    return paramString.replace('$', '.');
  }

  static String a(String paramString)
  {
    int m = paramString.lastIndexOf('-');
    if (m == -1)
      return paramString;
    return paramString.substring(m + 1);
  }

  private void c(StringBuffer paramStringBuffer, Class[] paramArrayOfClass)
  {
    for (int m = 0; m < paramArrayOfClass.length; m++)
    {
      if (m > 0)
        paramStringBuffer.append(", ");
      paramStringBuffer.append(a(paramArrayOfClass[m]));
    }
  }

  final String a(int paramInt)
  {
    if (!this.d)
      return "";
    String str = Modifier.toString(paramInt);
    if (str.length() == 0)
      return "";
    return str + " ";
  }

  public final String a(Class paramClass)
  {
    return a(paramClass, paramClass.getName(), this.a);
  }

  public final String a(Class paramClass, String paramString)
  {
    return a(paramClass, paramString, this.e);
  }

  public final void a(StringBuffer paramStringBuffer, Class[] paramArrayOfClass)
  {
    if (paramArrayOfClass == null)
      return;
    if (!this.b)
    {
      if (paramArrayOfClass.length == 0)
      {
        paramStringBuffer.append("()");
        return;
      }
      paramStringBuffer.append("(..)");
      return;
    }
    paramStringBuffer.append("(");
    c(paramStringBuffer, paramArrayOfClass);
    paramStringBuffer.append(")");
  }

  public final void b(StringBuffer paramStringBuffer, Class[] paramArrayOfClass)
  {
    if ((!this.c) || (paramArrayOfClass == null) || (paramArrayOfClass.length == 0))
      return;
    paramStringBuffer.append(" throws ");
    c(paramStringBuffer, paramArrayOfClass);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     a.a.b.b.k
 * JD-Core Version:    0.6.2
 */