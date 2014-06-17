package com.nineoldandroids.util;

public abstract class Property<T, V>
{
  private final String a;
  private final Class<V> b;

  public Property(Class<V> paramClass, String paramString)
  {
    this.a = paramString;
    this.b = paramClass;
  }

  public static <T, V> Property<T, V> of(Class<T> paramClass, Class<V> paramClass1, String paramString)
  {
    return new ReflectiveProperty(paramClass, paramClass1, paramString);
  }

  public abstract V get(T paramT);

  public String getName()
  {
    return this.a;
  }

  public Class<V> getType()
  {
    return this.b;
  }

  public boolean isReadOnly()
  {
    return false;
  }

  public void set(T paramT, V paramV)
  {
    throw new UnsupportedOperationException("Property " + getName() + " is read-only");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.util.Property
 * JD-Core Version:    0.6.2
 */