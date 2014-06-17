package com.taobao.security;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Queue;

public final class d
  implements Queue
{
  private Object[] a = new Object[5];
  private int b = 5;
  private int c = 0;
  private int d = (-1 + this.c) % 5;
  private int e = 0;
  private int f;

  public final void a(int paramInt)
  {
    int i = 0;
    try
    {
      int j = this.b;
      if (paramInt == j);
      while (true)
      {
        return;
        if ((paramInt < this.b) && (paramInt < this.e))
        {
          int m = this.e - paramInt;
          for (int n = 0; n < m; n++)
            poll();
        }
        Object[] arrayOfObject = new Object[paramInt];
        int k = this.e;
        while (i < k)
        {
          arrayOfObject[i] = poll();
          i++;
        }
        this.a = arrayOfObject;
        this.c = 0;
        this.d = (k - 1);
        this.e = k;
        this.f = 0;
        this.b = paramInt;
      }
    }
    finally
    {
    }
  }

  public final byte[] a()
  {
    while (true)
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      try
      {
        localByteArrayOutputStream = new ByteArrayOutputStream();
        localByteArrayOutputStream.write((byte)(0xFF & this.e));
        int i = this.c;
        int j = 0;
        int k = i;
        if (j < this.e)
        {
          byte[] arrayOfByte2;
          if (this.a[k] != null)
          {
            arrayOfByte2 = ((String)this.a[k]).getBytes();
            if (arrayOfByte2 != null)
            {
              localByteArrayOutputStream.write((byte)(arrayOfByte2.length >> 8));
              localByteArrayOutputStream.write((byte)arrayOfByte2.length);
            }
          }
          try
          {
            localByteArrayOutputStream.write(arrayOfByte2, 0, 0xFFFF & arrayOfByte2.length);
            int m = k + 1;
            int n = m % this.b;
            j++;
            k = n;
          }
          catch (Exception localException)
          {
          }
          try
          {
            localByteArrayOutputStream.close();
            localObject2 = null;
            return localObject2;
          }
          catch (IOException localIOException2)
          {
            localIOException2.printStackTrace();
            continue;
          }
        }
      }
      finally
      {
      }
      byte[] arrayOfByte1 = localByteArrayOutputStream.toByteArray();
      Object localObject2 = arrayOfByte1;
      try
      {
        localByteArrayOutputStream.close();
      }
      catch (IOException localIOException1)
      {
        localIOException1.printStackTrace();
      }
    }
  }

  public final boolean add(Object paramObject)
  {
    try
    {
      this.f = (1 + this.f);
      this.d = ((1 + this.d) % this.b);
      this.a[this.d] = paramObject;
      if (1 + this.e > this.b);
      int i;
      for (int j = this.b; ; j = i + 1)
      {
        this.e = j;
        this.c = ((1 + this.d + this.b - this.e) % this.b);
        return true;
        i = this.e;
      }
    }
    finally
    {
    }
  }

  public final boolean addAll(Collection paramCollection)
  {
    try
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        add(localIterator.next());
    }
    finally
    {
    }
    return true;
  }

  public final void clear()
  {
    try
    {
      this.f = (1 + this.f);
      this.e = 0;
      this.c = 0;
      this.d = ((-1 + this.c) % this.b);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean contains(Object paramObject)
  {
    boolean bool1 = true;
    if (paramObject == null);
    try
    {
      Object[] arrayOfObject2 = this.a;
      int k = arrayOfObject2.length;
      int m = 0;
      if (m < k)
      {
        Object localObject2 = arrayOfObject2[m];
        if (localObject2 != null);
      }
      while (true)
      {
        return bool1;
        m++;
        break;
        Object[] arrayOfObject1 = this.a;
        int i = arrayOfObject1.length;
        for (int j = 0; ; j++)
        {
          if (j >= i)
            break label94;
          boolean bool2 = paramObject.equals(arrayOfObject1[j]);
          if (bool2)
            break;
        }
        label94: bool1 = false;
      }
    }
    finally
    {
    }
  }

  public final boolean containsAll(Collection paramCollection)
  {
    try
    {
      int i = paramCollection.size();
      int j = this.e;
      boolean bool1 = false;
      if (i > j);
      while (true)
      {
        return bool1;
        Iterator localIterator = paramCollection.iterator();
        while (true)
          if (localIterator.hasNext())
          {
            boolean bool2 = contains(localIterator.next());
            if (!bool2)
            {
              bool1 = false;
              break;
            }
          }
        bool1 = true;
      }
    }
    finally
    {
    }
  }

  public final Object element()
  {
    try
    {
      if (this.e == 0)
        throw new NoSuchElementException();
    }
    finally
    {
    }
    Object localObject2 = this.a[this.c];
    return localObject2;
  }

  public final boolean isEmpty()
  {
    try
    {
      int i = this.e;
      if (i == 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final Iterator iterator()
  {
    try
    {
      d.a locala = new d.a(this, (byte)0);
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean offer(Object paramObject)
  {
    try
    {
      boolean bool = add(paramObject);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Object peek()
  {
    try
    {
      int i = this.e;
      if (i == 0);
      for (Object localObject2 = null; ; localObject2 = this.a[this.c])
        return localObject2;
    }
    finally
    {
    }
  }

  public final Object poll()
  {
    try
    {
      this.f = (1 + this.f);
      int i = this.e;
      Object localObject2;
      if (i == 0)
        localObject2 = null;
      while (true)
      {
        return localObject2;
        localObject2 = this.a[this.c];
        this.c = ((1 + this.c) % this.b);
        this.e = (-1 + this.e);
      }
    }
    finally
    {
    }
  }

  public final Object remove()
  {
    try
    {
      this.f = (1 + this.f);
      if (this.e == 0)
        throw new NoSuchElementException();
    }
    finally
    {
    }
    Object localObject2 = this.a[this.c];
    this.c = ((1 + this.c) % this.b);
    this.e = (-1 + this.e);
    return localObject2;
  }

  public final boolean remove(Object paramObject)
  {
    boolean bool = true;
    while (true)
    {
      int j;
      try
      {
        this.f = (1 + this.f);
        if (paramObject != null)
          break label192;
        i = this.c;
        j = 0;
        if (j >= this.e)
          break label360;
        if (this.a[i] == null)
        {
          if (i >= this.c)
          {
            System.arraycopy(this.a, this.c, this.a, (1 + this.c) % this.b, j);
            this.c = ((1 + this.c) % this.b);
            this.e = (-1 + this.e);
            return bool;
          }
          System.arraycopy(this.a, i + 1, this.a, i, -1 + (this.e - j));
          this.d = ((-1 + this.d) % this.b);
          this.e = (-1 + this.e);
          continue;
        }
      }
      finally
      {
      }
      j++;
      int k = i + 1;
      int i = k % this.b;
      continue;
      label192: int m = this.c;
      int n = 0;
      while (true)
      {
        if (n >= this.e)
          break label360;
        if (paramObject.equals(this.a[m]))
        {
          if (m >= this.c)
          {
            System.arraycopy(this.a, this.c, this.a, (1 + this.c) % this.b, n);
            this.c = ((1 + this.c) % this.b);
            this.e = (-1 + this.e);
            break;
          }
          System.arraycopy(this.a, m + 1, this.a, m, -1 + (this.e - n));
          this.d = ((-1 + this.d) % this.b);
          this.e = (-1 + this.e);
          break;
        }
        n++;
        m = (m + 1) % this.b;
      }
      label360: bool = false;
    }
  }

  public final boolean removeAll(Collection paramCollection)
  {
    try
    {
      Iterator localIterator = iterator();
      int i = 0;
      while (localIterator.hasNext())
        if (paramCollection.contains(localIterator.next()))
        {
          localIterator.remove();
          i++;
        }
      this.f = (i + this.f);
      boolean bool = false;
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
    }
  }

  public final boolean retainAll(Collection paramCollection)
  {
    try
    {
      Iterator localIterator = iterator();
      int i = 0;
      while (localIterator.hasNext())
        if (!paramCollection.contains(localIterator.next()))
        {
          localIterator.remove();
          i++;
        }
      this.f = (i + this.f);
      boolean bool = false;
      if (i != 0)
        bool = true;
      return bool;
    }
    finally
    {
    }
  }

  public final int size()
  {
    return this.e;
  }

  public final Object[] toArray()
  {
    try
    {
      Object[] arrayOfObject = new Object[this.e];
      int i = 0;
      for (int j = this.c; i < this.e; j = (j + 1) % this.b)
      {
        arrayOfObject[i] = this.a[j];
        i++;
      }
      return arrayOfObject;
    }
    finally
    {
    }
  }

  public final Object[] toArray(Object[] paramArrayOfObject)
  {
    int i = 0;
    try
    {
      Object[] arrayOfObject2;
      if (paramArrayOfObject.length < this.e)
      {
        arrayOfObject2 = (Object[])Array.newInstance(paramArrayOfObject.getClass().getComponentType(), this.e);
        for (int k = this.c; i < this.e; k = (k + 1) % this.b)
        {
          arrayOfObject2[i] = this.a[k];
          i++;
        }
      }
      for (Object[] arrayOfObject1 = (Object[])arrayOfObject2; ; arrayOfObject1 = paramArrayOfObject)
      {
        return arrayOfObject1;
        for (int j = this.c; i < this.e; j = (j + 1) % this.b)
        {
          paramArrayOfObject[i] = this.a[j];
          i++;
        }
        if (paramArrayOfObject.length > this.e)
          paramArrayOfObject[this.e] = null;
      }
    }
    finally
    {
    }
  }

  public final String toString()
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      int j = this.c;
      while (i < this.e)
      {
        if (i != 0)
          localStringBuilder.append(',');
        localStringBuilder.append(this.a[j]);
        j = (j + 1) % this.b;
        i++;
      }
      String str = localStringBuilder.toString();
      return str;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.d
 * JD-Core Version:    0.6.2
 */