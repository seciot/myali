package org.achartengine.util;

import java.util.Map.Entry;

public class XYEntry<K, V>
  implements Map.Entry<K, V>
{
  private final K a;
  private V b;

  public XYEntry(K paramK, V paramV)
  {
    this.a = paramK;
    this.b = paramV;
  }

  public K getKey()
  {
    return this.a;
  }

  public V getValue()
  {
    return this.b;
  }

  public V setValue(V paramV)
  {
    this.b = paramV;
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.util.XYEntry
 * JD-Core Version:    0.6.2
 */