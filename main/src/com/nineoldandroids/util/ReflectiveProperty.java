package com.nineoldandroids.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ReflectiveProperty<T, V> extends Property<T, V>
{
  private Method a;
  private Method b;
  private Field c;

  public ReflectiveProperty(Class<T> paramClass, Class<V> paramClass1, String paramString)
  {
    super(paramClass1, paramString);
    char c1 = Character.toUpperCase(paramString.charAt(0));
    String str1 = paramString.substring(1);
    String str2 = c1 + str1;
    String str3 = "get" + str2;
    try
    {
      this.b = paramClass.getMethod(str3, null);
      localClass2 = this.b.getReturnType();
      if (!a(paramClass1, localClass2))
        throw new NoSuchPropertyException("Underlying type (" + localClass2 + ") does not match Property type (" + paramClass1 + ")");
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      Class localClass2;
      try
      {
        this.b = paramClass.getDeclaredMethod(str3, null);
        this.b.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        while (true)
        {
          String str4 = "is" + str2;
          try
          {
            this.b = paramClass.getMethod(str4, null);
          }
          catch (NoSuchMethodException localNoSuchMethodException3)
          {
            try
            {
              this.b = paramClass.getDeclaredMethod(str4, null);
              this.b.setAccessible(true);
            }
            catch (NoSuchMethodException localNoSuchMethodException4)
            {
              try
              {
                this.c = paramClass.getField(paramString);
                Class localClass1 = this.c.getType();
                if (a(paramClass1, localClass1))
                  break label355;
                throw new NoSuchPropertyException("Underlying type (" + localClass1 + ") does not match Property type (" + paramClass1 + ")");
              }
              catch (NoSuchFieldException localNoSuchFieldException)
              {
                throw new NoSuchPropertyException("No accessor method or field found for property with name " + paramString);
              }
            }
          }
        }
      }
      String str5 = "set" + str2;
      try
      {
        this.a = paramClass.getDeclaredMethod(str5, new Class[] { localClass2 });
        this.a.setAccessible(true);
        label355: return;
      }
      catch (NoSuchMethodException localNoSuchMethodException5)
      {
      }
    }
  }

  private static boolean a(Class<V> paramClass, Class paramClass1)
  {
    if (paramClass1 != paramClass)
    {
      boolean bool1 = paramClass1.isPrimitive();
      boolean bool2 = false;
      if (bool1)
        if (((paramClass1 != Float.TYPE) || (paramClass != Float.class)) && ((paramClass1 != Integer.TYPE) || (paramClass != Integer.class)) && ((paramClass1 != Boolean.TYPE) || (paramClass != Boolean.class)) && ((paramClass1 != Long.TYPE) || (paramClass != Long.class)) && ((paramClass1 != Double.TYPE) || (paramClass != Double.class)) && ((paramClass1 != Short.TYPE) || (paramClass != Short.class)) && ((paramClass1 != Byte.TYPE) || (paramClass != Byte.class)))
        {
          Class localClass = Character.TYPE;
          bool2 = false;
          if (paramClass1 == localClass)
          {
            bool2 = false;
            if (paramClass != Character.class);
          }
        }
        else
        {
          bool2 = true;
        }
      return bool2;
    }
    return true;
  }

  public V get(T paramT)
  {
    if (this.b != null)
      try
      {
        Object localObject2 = this.b.invoke(paramT, null);
        return localObject2;
      }
      catch (IllegalAccessException localIllegalAccessException2)
      {
        throw new AssertionError();
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        throw new RuntimeException(localInvocationTargetException.getCause());
      }
    if (this.c != null)
      try
      {
        Object localObject1 = this.c.get(paramT);
        return localObject1;
      }
      catch (IllegalAccessException localIllegalAccessException1)
      {
        throw new AssertionError();
      }
    throw new AssertionError();
  }

  public boolean isReadOnly()
  {
    return (this.a == null) && (this.c == null);
  }

  public void set(T paramT, V paramV)
  {
    if (this.a != null)
      try
      {
        this.a.invoke(paramT, new Object[] { paramV });
        return;
      }
      catch (IllegalAccessException localIllegalAccessException2)
      {
        throw new AssertionError();
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        throw new RuntimeException(localInvocationTargetException.getCause());
      }
    if (this.c != null)
      try
      {
        this.c.set(paramT, paramV);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException1)
      {
        throw new AssertionError();
      }
    throw new UnsupportedOperationException("Property " + getName() + " is read-only");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.util.ReflectiveProperty
 * JD-Core Version:    0.6.2
 */