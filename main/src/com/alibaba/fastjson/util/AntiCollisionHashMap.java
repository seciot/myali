package com.alibaba.fastjson.util;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

public class AntiCollisionHashMap<K, V> extends AbstractMap<K, V>
  implements Serializable, Cloneable, Map<K, V>
{
  static final int DEFAULT_INITIAL_CAPACITY = 16;
  static final float DEFAULT_LOAD_FACTOR = 0.75F;
  static final int KEY = 16777619;
  static final int MAXIMUM_CAPACITY = 1073741824;
  static final int M_MASK = -2023358765;
  static final int SEED = -2128831035;
  private static final long serialVersionUID = 362498820763181265L;
  private transient Set<Map.Entry<K, V>> entrySet = null;
  volatile transient Set<K> keySet = null;
  final float loadFactor;
  volatile transient int modCount;
  final int random = new Random().nextInt(99999);
  transient int size;
  transient AntiCollisionHashMap.Entry<K, V>[] table;
  int threshold;
  volatile transient Collection<V> values = null;

  public AntiCollisionHashMap()
  {
    this.loadFactor = 0.75F;
    this.threshold = 12;
    this.table = new AntiCollisionHashMap.Entry[16];
    init();
  }

  public AntiCollisionHashMap(int paramInt)
  {
    this(paramInt, 0.75F);
  }

  public AntiCollisionHashMap(int paramInt, float paramFloat)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Illegal initial capacity: " + paramInt);
    if (paramInt > 1073741824)
      paramInt = 1073741824;
    if ((paramFloat <= 0.0F) || (Float.isNaN(paramFloat)))
      throw new IllegalArgumentException("Illegal load factor: " + paramFloat);
    int i = 1;
    while (i < paramInt)
      i <<= 1;
    this.loadFactor = paramFloat;
    this.threshold = ((int)(paramFloat * i));
    this.table = new AntiCollisionHashMap.Entry[i];
    init();
  }

  public AntiCollisionHashMap(Map<? extends K, ? extends V> paramMap)
  {
    this(Math.max(1 + (int)(paramMap.size() / 0.75F), 16), 0.75F);
    putAllForCreate(paramMap);
  }

  private boolean containsNullValue()
  {
    AntiCollisionHashMap.Entry[] arrayOfEntry = this.table;
    for (int i = 0; ; i++)
    {
      int j = arrayOfEntry.length;
      boolean bool = false;
      if (i < j);
      for (AntiCollisionHashMap.Entry localEntry = arrayOfEntry[i]; localEntry != null; localEntry = localEntry.next)
        if (localEntry.value == null)
        {
          bool = true;
          return bool;
        }
    }
  }

  private Set<Map.Entry<K, V>> entrySet0()
  {
    Set localSet = this.entrySet;
    if (localSet != null)
      return localSet;
    AntiCollisionHashMap.EntrySet localEntrySet = new AntiCollisionHashMap.EntrySet(this, null);
    this.entrySet = localEntrySet;
    return localEntrySet;
  }

  private V getForNullKey()
  {
    for (AntiCollisionHashMap.Entry localEntry = this.table[0]; localEntry != null; localEntry = localEntry.next)
      if (localEntry.key == null)
        return localEntry.value;
    return null;
  }

  static int hash(int paramInt)
  {
    int i = paramInt * paramInt;
    int j = i ^ (i >>> 20 ^ i >>> 12);
    return j ^ j >>> 7 ^ j >>> 4;
  }

  private int hashString(String paramString)
  {
    int i = -2128831035 * this.random;
    for (int j = 0; j < paramString.length(); j++)
      i = i * 16777619 ^ paramString.charAt(j);
    return 0x8765FED3 & (i ^ i >> 1);
  }

  static int indexFor(int paramInt1, int paramInt2)
  {
    return paramInt1 & paramInt2 - 1;
  }

  private void putAllForCreate(Map<? extends K, ? extends V> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      putForCreate(localEntry.getKey(), localEntry.getValue());
    }
  }

  private void putForCreate(K paramK, V paramV)
  {
    int i;
    int j;
    if (paramK == null)
    {
      i = 0;
      j = indexFor(i, this.table.length);
    }
    for (AntiCollisionHashMap.Entry localEntry = this.table[j]; ; localEntry = localEntry.next)
    {
      if (localEntry == null)
        break label116;
      if (localEntry.hash == i)
      {
        Object localObject = localEntry.key;
        if ((localObject == paramK) || ((paramK != null) && (paramK.equals(localObject))))
        {
          localEntry.value = paramV;
          return;
          if ((paramK instanceof String))
          {
            i = hash(hashString((String)paramK));
            break;
          }
          i = hash(paramK.hashCode());
          break;
        }
      }
    }
    label116: createEntry(i, paramK, paramV, j);
  }

  private V putForNullKey(V paramV)
  {
    for (AntiCollisionHashMap.Entry localEntry = this.table[0]; localEntry != null; localEntry = localEntry.next)
      if (localEntry.key == null)
      {
        Object localObject = localEntry.value;
        localEntry.value = paramV;
        localEntry.recordAccess(this);
        return localObject;
      }
    this.modCount = (1 + this.modCount);
    addEntry(0, null, paramV, 0);
    return null;
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.table = new AntiCollisionHashMap.Entry[paramObjectInputStream.readInt()];
    init();
    int i = paramObjectInputStream.readInt();
    for (int j = 0; j < i; j++)
      putForCreate(paramObjectInputStream.readObject(), paramObjectInputStream.readObject());
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    if (this.size > 0);
    for (Iterator localIterator = entrySet0().iterator(); ; localIterator = null)
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeInt(this.table.length);
      paramObjectOutputStream.writeInt(this.size);
      if (localIterator == null)
        break;
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramObjectOutputStream.writeObject(localEntry.getKey());
        paramObjectOutputStream.writeObject(localEntry.getValue());
      }
    }
  }

  void addEntry(int paramInt1, K paramK, V paramV, int paramInt2)
  {
    AntiCollisionHashMap.Entry localEntry = this.table[paramInt2];
    this.table[paramInt2] = new AntiCollisionHashMap.Entry(paramInt1, paramK, paramV, localEntry);
    int i = this.size;
    this.size = (i + 1);
    if (i >= this.threshold)
      resize(2 * this.table.length);
  }

  int capacity()
  {
    return this.table.length;
  }

  public void clear()
  {
    this.modCount = (1 + this.modCount);
    AntiCollisionHashMap.Entry[] arrayOfEntry = this.table;
    for (int i = 0; i < arrayOfEntry.length; i++)
      arrayOfEntry[i] = null;
    this.size = 0;
  }

  public Object clone()
  {
    try
    {
      localAntiCollisionHashMap = (AntiCollisionHashMap)super.clone();
      localAntiCollisionHashMap.table = new AntiCollisionHashMap.Entry[this.table.length];
      localAntiCollisionHashMap.entrySet = null;
      localAntiCollisionHashMap.modCount = 0;
      localAntiCollisionHashMap.size = 0;
      localAntiCollisionHashMap.init();
      localAntiCollisionHashMap.putAllForCreate(this);
      return localAntiCollisionHashMap;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        AntiCollisionHashMap localAntiCollisionHashMap = null;
    }
  }

  public boolean containsKey(Object paramObject)
  {
    return getEntry(paramObject) != null;
  }

  public boolean containsValue(Object paramObject)
  {
    boolean bool;
    if (paramObject == null)
    {
      bool = containsNullValue();
      return bool;
    }
    AntiCollisionHashMap.Entry[] arrayOfEntry = this.table;
    for (int i = 0; ; i++)
    {
      int j = arrayOfEntry.length;
      bool = false;
      if (i >= j)
        break;
      for (AntiCollisionHashMap.Entry localEntry = arrayOfEntry[i]; localEntry != null; localEntry = localEntry.next)
        if (paramObject.equals(localEntry.value))
          return true;
    }
  }

  void createEntry(int paramInt1, K paramK, V paramV, int paramInt2)
  {
    AntiCollisionHashMap.Entry localEntry = this.table[paramInt2];
    this.table[paramInt2] = new AntiCollisionHashMap.Entry(paramInt1, paramK, paramV, localEntry);
    this.size = (1 + this.size);
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    return entrySet0();
  }

  public V get(Object paramObject)
  {
    if (paramObject == null)
      return getForNullKey();
    int i;
    if ((paramObject instanceof String))
      i = hash(hashString((String)paramObject));
    for (AntiCollisionHashMap.Entry localEntry = this.table[indexFor(i, this.table.length)]; ; localEntry = localEntry.next)
    {
      if (localEntry == null)
        break label100;
      if (localEntry.hash == i)
      {
        Object localObject = localEntry.key;
        if ((localObject == paramObject) || (paramObject.equals(localObject)))
        {
          return localEntry.value;
          i = hash(paramObject.hashCode());
          break;
        }
      }
    }
    label100: return null;
  }

  final AntiCollisionHashMap.Entry<K, V> getEntry(Object paramObject)
  {
    int i;
    if (paramObject == null)
      i = 0;
    for (AntiCollisionHashMap.Entry localEntry = this.table[indexFor(i, this.table.length)]; ; localEntry = localEntry.next)
    {
      if (localEntry == null)
        break label101;
      if (localEntry.hash == i)
      {
        Object localObject = localEntry.key;
        if ((localObject == paramObject) || ((paramObject != null) && (paramObject.equals(localObject))))
        {
          return localEntry;
          if ((paramObject instanceof String))
          {
            i = hash(hashString((String)paramObject));
            break;
          }
          i = hash(paramObject.hashCode());
          break;
        }
      }
    }
    label101: return null;
  }

  void init()
  {
  }

  public boolean isEmpty()
  {
    return this.size == 0;
  }

  public Set<K> keySet()
  {
    Set localSet = this.keySet;
    if (localSet != null)
      return localSet;
    AntiCollisionHashMap.KeySet localKeySet = new AntiCollisionHashMap.KeySet(this, null);
    this.keySet = localKeySet;
    return localKeySet;
  }

  float loadFactor()
  {
    return this.loadFactor;
  }

  Iterator<Map.Entry<K, V>> newEntryIterator()
  {
    return new AntiCollisionHashMap.EntryIterator(this, null);
  }

  Iterator<K> newKeyIterator()
  {
    return new AntiCollisionHashMap.KeyIterator(this, null);
  }

  Iterator<V> newValueIterator()
  {
    return new AntiCollisionHashMap.ValueIterator(this, null);
  }

  public V put(K paramK, V paramV)
  {
    if (paramK == null)
      return putForNullKey(paramV);
    int i;
    int j;
    if ((paramK instanceof String))
    {
      i = hash(hashString((String)paramK));
      j = indexFor(i, this.table.length);
    }
    for (AntiCollisionHashMap.Entry localEntry = this.table[j]; ; localEntry = localEntry.next)
    {
      if (localEntry == null)
        break label128;
      if (localEntry.hash == i)
      {
        Object localObject1 = localEntry.key;
        if ((localObject1 == paramK) || (paramK.equals(localObject1)))
        {
          Object localObject2 = localEntry.value;
          localEntry.value = paramV;
          localEntry.recordAccess(this);
          return localObject2;
          i = hash(paramK.hashCode());
          break;
        }
      }
    }
    label128: this.modCount = (1 + this.modCount);
    addEntry(i, paramK, paramV, j);
    return null;
  }

  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    int i = 1073741824;
    int j = paramMap.size();
    if (j == 0)
      return;
    int k;
    if (j > this.threshold)
    {
      k = (int)(1.0F + j / this.loadFactor);
      if (k <= i)
        break label136;
    }
    while (true)
    {
      int m = this.table.length;
      while (m < i)
        m <<= 1;
      if (m > this.table.length)
        resize(m);
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        put(localEntry.getKey(), localEntry.getValue());
      }
      break;
      label136: i = k;
    }
  }

  public V remove(Object paramObject)
  {
    AntiCollisionHashMap.Entry localEntry = removeEntryForKey(paramObject);
    if (localEntry == null)
      return null;
    return localEntry.value;
  }

  final AntiCollisionHashMap.Entry<K, V> removeEntryForKey(Object paramObject)
  {
    int i;
    int j;
    Object localObject1;
    Object localObject2;
    if (paramObject == null)
    {
      i = 0;
      j = indexFor(i, this.table.length);
      localObject1 = this.table[j];
      localObject2 = localObject1;
    }
    while (true)
    {
      if (localObject1 == null)
        break label173;
      AntiCollisionHashMap.Entry localEntry = ((AntiCollisionHashMap.Entry)localObject1).next;
      if (((AntiCollisionHashMap.Entry)localObject1).hash == i)
      {
        Object localObject3 = ((AntiCollisionHashMap.Entry)localObject1).key;
        if ((localObject3 == paramObject) || ((paramObject != null) && (paramObject.equals(localObject3))))
        {
          this.modCount = (1 + this.modCount);
          this.size = (-1 + this.size);
          if (localObject2 == localObject1)
            this.table[j] = localEntry;
          while (true)
          {
            ((AntiCollisionHashMap.Entry)localObject1).recordRemoval(this);
            return localObject1;
            if ((paramObject instanceof String))
            {
              i = hash(hashString((String)paramObject));
              break;
            }
            i = hash(paramObject.hashCode());
            break;
            localObject2.next = localEntry;
          }
        }
      }
      localObject2 = localObject1;
      localObject1 = localEntry;
    }
    label173: return localObject1;
  }

  final AntiCollisionHashMap.Entry<K, V> removeMapping(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return null;
    Map.Entry localEntry = (Map.Entry)paramObject;
    Object localObject1 = localEntry.getKey();
    int i;
    int j;
    Object localObject2;
    Object localObject3;
    if (localObject1 == null)
    {
      i = 0;
      j = indexFor(i, this.table.length);
      localObject2 = this.table[j];
      localObject3 = localObject2;
    }
    while (true)
    {
      if (localObject2 == null)
        break label185;
      AntiCollisionHashMap.Entry localEntry1 = ((AntiCollisionHashMap.Entry)localObject2).next;
      if ((((AntiCollisionHashMap.Entry)localObject2).hash == i) && (((AntiCollisionHashMap.Entry)localObject2).equals(localEntry)))
      {
        this.modCount = (1 + this.modCount);
        this.size = (-1 + this.size);
        if (localObject3 == localObject2)
          this.table[j] = localEntry1;
        while (true)
        {
          ((AntiCollisionHashMap.Entry)localObject2).recordRemoval(this);
          return localObject2;
          if ((localObject1 instanceof String))
          {
            i = hash(hashString((String)localObject1));
            break;
          }
          i = hash(localObject1.hashCode());
          break;
          localObject3.next = localEntry1;
        }
      }
      localObject3 = localObject2;
      localObject2 = localEntry1;
    }
    label185: return localObject2;
  }

  void resize(int paramInt)
  {
    if (this.table.length == 1073741824)
    {
      this.threshold = 2147483647;
      return;
    }
    AntiCollisionHashMap.Entry[] arrayOfEntry = new AntiCollisionHashMap.Entry[paramInt];
    transfer(arrayOfEntry);
    this.table = arrayOfEntry;
    this.threshold = ((int)(paramInt * this.loadFactor));
  }

  public int size()
  {
    return this.size;
  }

  void transfer(AntiCollisionHashMap.Entry[] paramArrayOfEntry)
  {
    AntiCollisionHashMap.Entry[] arrayOfEntry = this.table;
    int i = paramArrayOfEntry.length;
    int j = 0;
    Object localObject;
    if (j < arrayOfEntry.length)
    {
      localObject = arrayOfEntry[j];
      if (localObject != null)
        arrayOfEntry[j] = null;
    }
    while (true)
    {
      AntiCollisionHashMap.Entry localEntry = ((AntiCollisionHashMap.Entry)localObject).next;
      int k = indexFor(((AntiCollisionHashMap.Entry)localObject).hash, i);
      ((AntiCollisionHashMap.Entry)localObject).next = paramArrayOfEntry[k];
      paramArrayOfEntry[k] = localObject;
      if (localEntry == null)
      {
        j++;
        break;
        return;
      }
      localObject = localEntry;
    }
  }

  public Collection<V> values()
  {
    Collection localCollection = this.values;
    if (localCollection != null)
      return localCollection;
    AntiCollisionHashMap.Values localValues = new AntiCollisionHashMap.Values(this, null);
    this.values = localValues;
    return localValues;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap
 * JD-Core Version:    0.6.2
 */