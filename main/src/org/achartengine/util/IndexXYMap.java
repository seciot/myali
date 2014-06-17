package org.achartengine.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

public class IndexXYMap<K, V> extends TreeMap<K, V>
{
  private final List<K> a = new ArrayList();
  private double b = 0.0D;

  private void a()
  {
    if (this.a.size() < 2)
      this.b = 0.0D;
    while (Math.abs(((Double)this.a.get(-1 + this.a.size())).doubleValue() - ((Double)this.a.get(-2 + this.a.size())).doubleValue()) <= this.b)
      return;
    this.b = Math.abs(((Double)this.a.get(-1 + this.a.size())).doubleValue() - ((Double)this.a.get(-2 + this.a.size())).doubleValue());
  }

  public void clear()
  {
    a();
    super.clear();
    this.a.clear();
  }

  public XYEntry<K, V> getByIndex(int paramInt)
  {
    Object localObject = this.a.get(paramInt);
    return new XYEntry(localObject, get(localObject));
  }

  public int getIndexForKey(K paramK)
  {
    return Collections.binarySearch(this.a, paramK, null);
  }

  public double getMaxXDifference()
  {
    return this.b;
  }

  public K getXByIndex(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public V getYByIndex(int paramInt)
  {
    return get(this.a.get(paramInt));
  }

  public V put(int paramInt, K paramK, V paramV)
  {
    this.a.add(paramInt, paramK);
    a();
    return super.put(paramK, paramV);
  }

  public V put(K paramK, V paramV)
  {
    this.a.add(paramK);
    a();
    return super.put(paramK, paramV);
  }

  public XYEntry<K, V> removeByIndex(int paramInt)
  {
    Object localObject = this.a.remove(paramInt);
    return new XYEntry(localObject, remove(localObject));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.achartengine.util.IndexXYMap
 * JD-Core Version:    0.6.2
 */