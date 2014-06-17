package com.alibaba.fastjson.util;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class AntiCollisionHashMap$HashIterator<E>
  implements Iterator<E>
{
  AntiCollisionHashMap.Entry<K, V> current;
  int expectedModCount;
  int index;
  AntiCollisionHashMap.Entry<K, V> next;

  AntiCollisionHashMap$HashIterator(AntiCollisionHashMap paramAntiCollisionHashMap)
  {
    this.expectedModCount = paramAntiCollisionHashMap.modCount;
    if (paramAntiCollisionHashMap.size > 0)
    {
      AntiCollisionHashMap.Entry[] arrayOfEntry = paramAntiCollisionHashMap.table;
      AntiCollisionHashMap.Entry localEntry;
      do
      {
        if (this.index >= arrayOfEntry.length)
          break;
        int i = this.index;
        this.index = (i + 1);
        localEntry = arrayOfEntry[i];
        this.next = localEntry;
      }
      while (localEntry == null);
    }
  }

  public final boolean hasNext()
  {
    return this.next != null;
  }

  final AntiCollisionHashMap.Entry<K, V> nextEntry()
  {
    if (this.this$0.modCount != this.expectedModCount)
      throw new ConcurrentModificationException();
    AntiCollisionHashMap.Entry localEntry1 = this.next;
    if (localEntry1 == null)
      throw new NoSuchElementException();
    AntiCollisionHashMap.Entry localEntry2 = localEntry1.next;
    this.next = localEntry2;
    if (localEntry2 == null)
    {
      AntiCollisionHashMap.Entry[] arrayOfEntry = this.this$0.table;
      AntiCollisionHashMap.Entry localEntry3;
      do
      {
        if (this.index >= arrayOfEntry.length)
          break;
        int i = this.index;
        this.index = (i + 1);
        localEntry3 = arrayOfEntry[i];
        this.next = localEntry3;
      }
      while (localEntry3 == null);
    }
    this.current = localEntry1;
    return localEntry1;
  }

  public void remove()
  {
    if (this.current == null)
      throw new IllegalStateException();
    if (this.this$0.modCount != this.expectedModCount)
      throw new ConcurrentModificationException();
    Object localObject = this.current.key;
    this.current = null;
    this.this$0.removeEntryForKey(localObject);
    this.expectedModCount = this.this$0.modCount;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.AntiCollisionHashMap.HashIterator
 * JD-Core Version:    0.6.2
 */