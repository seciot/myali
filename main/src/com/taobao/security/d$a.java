package com.taobao.security;

import java.util.ConcurrentModificationException;
import java.util.Iterator;

final class d$a
  implements Iterator
{
  int a = 0;
  int b = -1;
  int c = d.a(this.d);

  private d$a(d paramd)
  {
  }

  private void a()
  {
    try
    {
      if (d.a(this.d) != this.c)
        throw new ConcurrentModificationException();
    }
    finally
    {
    }
  }

  public final boolean hasNext()
  {
    try
    {
      int i = this.a;
      int j = this.d.size();
      if (i != j)
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

  public final Object next()
  {
    try
    {
      a();
      Object localObject2 = d.b(this.d)[((d.c(this.d) + this.a) % d.d(this.d))];
      int i = this.a;
      this.a = (i + 1);
      this.b = i;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public final void remove()
  {
    try
    {
      if (this.b == -1)
        throw new IllegalStateException();
    }
    finally
    {
    }
    a();
    int i = (d.c(this.d) + this.b) % d.d(this.d);
    if (i >= d.c(this.d))
    {
      System.arraycopy(d.b(this.d), d.c(this.d), d.b(this.d), (1 + d.c(this.d)) % d.d(this.d), this.b);
      d.a(this.d, (1 + d.c(this.d)) % d.d(this.d));
      d.e(this.d);
    }
    while (true)
    {
      if (this.b < this.a)
        this.a = (-1 + this.a);
      this.b = -1;
      return;
      System.arraycopy(d.b(this.d), i + 1, d.b(this.d), i, -1 + (d.f(this.d) - this.b));
      d.b(this.d, (-1 + d.g(this.d)) % d.d(this.d));
      d.e(this.d);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.d.a
 * JD-Core Version:    0.6.2
 */