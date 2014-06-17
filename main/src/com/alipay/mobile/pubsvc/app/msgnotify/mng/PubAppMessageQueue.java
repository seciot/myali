package com.alipay.mobile.pubsvc.app.msgnotify.mng;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class PubAppMessageQueue<E>
  implements Serializable
{
  private String a;
  private LinkedList<E> b;
  private final ReentrantReadWriteLock c;
  private final ReentrantReadWriteLock.ReadLock d;
  private final ReentrantReadWriteLock.WriteLock e;

  public PubAppMessageQueue()
  {
    this.b = new LinkedList();
    this.c = new ReentrantReadWriteLock();
    this.d = this.c.readLock();
    this.e = this.c.writeLock();
  }

  public PubAppMessageQueue(Collection<? extends E> paramCollection)
  {
    this.b = new LinkedList(paramCollection);
    this.c = new ReentrantReadWriteLock();
    this.d = this.c.readLock();
    this.e = this.c.writeLock();
  }

  boolean add(E paramE)
  {
    this.e.lock();
    try
    {
      boolean bool = this.b.add(paramE);
      return bool;
    }
    finally
    {
      this.e.unlock();
    }
  }

  void clear()
  {
    this.e.lock();
    try
    {
      this.b.clear();
      return;
    }
    finally
    {
      this.e.unlock();
    }
  }

  public E deque()
  {
    this.d.lock();
    try
    {
      Object localObject2 = this.b.poll();
      return localObject2;
    }
    finally
    {
      this.d.unlock();
    }
  }

  public E get(int paramInt)
  {
    this.d.lock();
    try
    {
      Object localObject2 = this.b.get(paramInt);
      return localObject2;
    }
    finally
    {
      this.d.unlock();
    }
  }

  public String getSubscriberEnum()
  {
    return this.a;
  }

  public boolean hasNext()
  {
    return !isEmpty();
  }

  public boolean isEmpty()
  {
    this.d.lock();
    try
    {
      boolean bool = this.b.isEmpty();
      return bool;
    }
    finally
    {
      this.d.unlock();
    }
  }

  public boolean isGreatThanMaxMsgCount()
  {
    return size() > 50;
  }

  public Iterator<E> iterator()
  {
    this.d.lock();
    try
    {
      Iterator localIterator = this.b.iterator();
      return localIterator;
    }
    finally
    {
      this.d.unlock();
    }
  }

  public E remove(int paramInt)
  {
    this.e.lock();
    try
    {
      Object localObject2 = this.b.remove(paramInt);
      return localObject2;
    }
    finally
    {
      this.e.unlock();
    }
  }

  public boolean remove(Object paramObject)
  {
    this.e.lock();
    try
    {
      boolean bool = this.b.remove(paramObject);
      return bool;
    }
    finally
    {
      this.e.unlock();
    }
  }

  void setSubscriberEnum(String paramString)
  {
    this.a = paramString;
  }

  public int size()
  {
    this.d.lock();
    try
    {
      int i = this.b.size();
      return i;
    }
    finally
    {
      this.d.unlock();
    }
  }

  public String toString()
  {
    this.d.lock();
    try
    {
      String str = "PubAppMessageQueue [subscriberEnum=" + this.a + ", messageQueue=" + this.b + "]";
      return str;
    }
    finally
    {
      this.d.unlock();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.mng.PubAppMessageQueue
 * JD-Core Version:    0.6.2
 */