package a.a.b.b;

import a.a.a.a;
import a.a.a.e;
import java.util.Hashtable;
import java.util.StringTokenizer;

public final class b
{
  static Hashtable e;
  static Class f;
  private static Object[] g = new Object[0];
  Class a;
  ClassLoader b;
  String c;
  int d;

  static
  {
    Hashtable localHashtable = new Hashtable();
    e = localHashtable;
    localHashtable.put("void", Void.TYPE);
    e.put("boolean", Boolean.TYPE);
    e.put("byte", Byte.TYPE);
    e.put("char", Character.TYPE);
    e.put("short", Short.TYPE);
    e.put("int", Integer.TYPE);
    e.put("long", Long.TYPE);
    e.put("float", Float.TYPE);
    e.put("double", Double.TYPE);
  }

  public b(String paramString, Class paramClass)
  {
    this.c = paramString;
    this.a = paramClass;
    this.d = 0;
    this.b = paramClass.getClassLoader();
  }

  public static a a(AppBundle.a.a.BundlesManager paramb, Object paramObject1, Object paramObject2)
  {
    return new c(paramb, paramObject1, paramObject2, g);
  }

  public static a a(AppBundle.a.a.BundlesManager paramb, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    return new c(paramb, paramObject1, paramObject2, new Object[] { paramObject3 });
  }

  public static a a(AppBundle.a.a.BundlesManager paramb, Object paramObject1, Object paramObject2, Object paramObject3, Object paramObject4)
  {
    return new c(paramb, paramObject1, paramObject2, new Object[] { paramObject3, paramObject4 });
  }

  public static a a(AppBundle.a.a.BundlesManager paramb, Object paramObject1, Object paramObject2, Object[] paramArrayOfObject)
  {
    return new c(paramb, paramObject1, paramObject2, paramArrayOfObject);
  }

  private static Class a(String paramString)
  {
    try
    {
      Class localClass = Class.forName(paramString);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new NoClassDefFoundError(localClassNotFoundException.getMessage());
    }
  }

  static Class a(String paramString, ClassLoader paramClassLoader)
  {
    Class localClass1;
    if (paramString.equals("*"))
      localClass1 = null;
    do
    {
      return localClass1;
      localClass1 = (Class)e.get(paramString);
    }
    while (localClass1 != null);
    if (paramClassLoader == null);
    try
    {
      return Class.forName(paramString);
      Class localClass3 = Class.forName(paramString, false, paramClassLoader);
      return localClass3;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      if (f == null)
      {
        Class localClass2 = a("java.lang.ClassNotFoundException");
        f = localClass2;
        return localClass2;
      }
    }
    return f;
  }

  public final AppBundle.a.a.a.BundlesManagerImpl a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    int i = Integer.parseInt(paramString1, 16);
    Class localClass = a(paramString3, this.b);
    StringTokenizer localStringTokenizer1 = new StringTokenizer(paramString4, ":");
    int j = localStringTokenizer1.countTokens();
    Class[] arrayOfClass1 = new Class[j];
    for (int k = 0; k < j; k++)
      arrayOfClass1[k] = a(localStringTokenizer1.nextToken(), this.b);
    StringTokenizer localStringTokenizer2 = new StringTokenizer(paramString5, ":");
    int m = localStringTokenizer2.countTokens();
    String[] arrayOfString = new String[m];
    for (int n = 0; n < m; n++)
      arrayOfString[n] = localStringTokenizer2.nextToken();
    StringTokenizer localStringTokenizer3 = new StringTokenizer(paramString6, ":");
    int i1 = localStringTokenizer3.countTokens();
    Class[] arrayOfClass2 = new Class[i1];
    for (int i2 = 0; i2 < i1; i2++)
      arrayOfClass2[i2] = a(localStringTokenizer3.nextToken(), this.b);
    return new f(i, paramString2, localClass, arrayOfClass1, arrayOfString, arrayOfClass2, a(paramString7, this.b));
  }

  public final AppBundle.a.a.BundlesManager a(String paramString, e parame, int paramInt)
  {
    int i = this.d;
    this.d = (i + 1);
    return new d(i, paramString, parame, new j(this.a, this.c, paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     a.a.b.b.b
 * JD-Core Version:    0.6.2
 */