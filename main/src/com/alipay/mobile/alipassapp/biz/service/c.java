package com.alipay.mobile.alipassapp.biz.service;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alipay.mobile.alipassapp.biz.common.i;
import com.alipay.mobile.common.utils.StringUtils;
import java.util.HashMap;

final class c
  implements Runnable
{
  private boolean b = true;
  private String c;
  private boolean d;
  private long e;
  private Object f;
  private Object g = new Object();
  private Bitmap h;
  private String i;
  private String j;

  c(b paramb)
  {
  }

  public final void a()
  {
    synchronized (this.g)
    {
      this.d = true;
      return;
    }
  }

  public final void a(Object paramObject)
  {
    this.f = paramObject;
  }

  public final void a(String paramString)
  {
    this.c = paramString;
  }

  public final void b()
  {
    synchronized (this.g)
    {
      this.d = false;
      this.g.notifyAll();
      return;
    }
  }

  public final void b(String paramString)
  {
    this.j = paramString;
  }

  public final Bitmap c()
  {
    if ((this.h != null) && (this.h.isRecycled()))
      return null;
    return this.h;
  }

  public final String d()
  {
    return this.i;
  }

  public final void e()
  {
    this.b = false;
  }

  public final void f()
  {
    this.e = 0L;
  }

  public final void run()
  {
    Looper.prepare();
    while (true)
    {
      if (this.b)
      {
        if (System.currentTimeMillis() - this.e < 60000L)
        {
          try
          {
            Thread.sleep(100L);
          }
          catch (InterruptedException localInterruptedException2)
          {
          }
          continue;
        }
        synchronized (this.g)
        {
          boolean bool = this.d;
          if (!bool);
        }
      }
      try
      {
        this.g.wait();
        label62: if ((this.c == null) || (b.a(this.a) == null))
          continue;
        this.e = System.currentTimeMillis();
        if (!b.b(this.a).containsKey(this.c))
          continue;
        String str1 = this.a.getDynamicCode();
        String str2 = str1 + b.a(this.a);
        this.i = str2;
        Message localMessage = new Message();
        localMessage.obj = this.f;
        if (StringUtils.equals("dbarcode", this.c))
        {
          localMessage.what = 1;
          if (StringUtils.isBlank(str1));
        }
        try
        {
          this.h = i.a(str2);
          if (b.c(this.a) != null)
            b.c(this.a).sendMessage(localMessage);
          label223: 
          while (StringUtils.isBlank(str1))
          {
            this.h = null;
            this.i = "";
            if (b.c(this.a) == null)
              break;
            b.c(this.a).sendMessage(localMessage);
            break;
            localObject2 = finally;
            throw localObject2;
            if (StringUtils.equals("dqrcode", this.c))
            {
              localMessage.what = 2;
              if (!StringUtils.isBlank(str1))
              {
                if (StringUtils.isBlank(this.j))
                  this.j = "utf-8";
                try
                {
                  this.h = i.a(str2, this.j);
                  if (b.c(this.a) == null)
                    continue;
                  b.c(this.a).sendMessage(localMessage);
                }
                catch (Exception localException1)
                {
                }
              }
            }
            else if (StringUtils.equals("dwave", this.c))
            {
              localMessage.what = 4;
              if ((!StringUtils.isBlank(str1)) && (b.c(this.a) != null))
                b.c(this.a).sendMessage(localMessage);
            }
          }
          return;
        }
        catch (Exception localException2)
        {
          break label223;
        }
      }
      catch (InterruptedException localInterruptedException1)
      {
        break label62;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.c
 * JD-Core Version:    0.6.2
 */