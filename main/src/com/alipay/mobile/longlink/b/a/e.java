package com.alipay.mobile.longlink.b.a;

import com.alipay.mobile.longlink.b.c.b;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

class e
{
  private static final String a = com.alipay.mobile.longlink.c.a.a(e.class);
  private Thread b;
  private ExecutorService c;
  private k d;
  private boolean e;
  private Semaphore f;

  protected e(k paramk)
  {
    this.d = paramk;
    a();
  }

  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.d.d();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    int j = 0;
    int k = paramInt;
    if (k >= 2)
      com.alipay.mobile.longlink.c.a.a(4, a, "handleRecvMsg() got valid packet protocolVersion:" + i + ", msgByte1st: " + Integer.toBinaryString(paramArrayOfByte[0]));
    while (true)
    {
      try
      {
        com.alipay.mobile.longlink.b.c.a locala = com.alipay.mobile.longlink.b.c.c.a(i);
        int m = b.c;
        byte[] arrayOfByte1 = new byte[m];
        int n = localByteArrayInputStream.read(arrayOfByte1, 0, m);
        com.alipay.mobile.longlink.c.a.a(4, a, "handleRecvMsg() read baseHdrLen=" + n);
        int i1;
        if (n == m)
        {
          locala.c(arrayOfByte1);
          i1 = locala.g() - m;
          com.alipay.mobile.longlink.c.a.a(4, a, "handleRecvMsg() leftHdrLen=" + i1);
          if (i1 > k - 2)
            com.alipay.mobile.longlink.c.a.a(2, a, "handleRecvMsg() got error header!");
        }
        else
        {
          com.alipay.mobile.longlink.c.a.a(5, a, "handleRecvMsg() done! leftLen=" + k + ", index=" + j);
          return j;
        }
        byte[] arrayOfByte2 = new byte[i1];
        if (localByteArrayInputStream.read(arrayOfByte2, 0, i1) != i1)
          break label517;
        locala.b(arrayOfByte2);
        int i2 = locala.c();
        if ((i2 > k - locala.g()) || (i2 < 0))
          continue;
        byte[] arrayOfByte3 = new byte[i2];
        localByteArrayInputStream.read(arrayOfByte3, 0, i2);
        int i3 = locala.c() + locala.g();
        if (locala.f() == 1)
        {
          arrayOfByte3 = com.alipay.mobile.longlink.c.c.b(arrayOfByte3);
          locala.c(arrayOfByte3.length);
        }
        locala.a(arrayOfByte3);
        com.alipay.mobile.longlink.c.a.a(4, a, "handleRecvMsg() got valid packet! rawData=" + locala.d());
        int i4 = 1;
        if (locala.e() != b.a)
          i4 = 0;
        if (i4 == 0)
        {
          com.alipay.mobile.longlink.c.a.a(2, a, "handleRecvMsg() it's unsupported packet!");
          int i5 = j + i3;
          k -= i3;
          com.alipay.mobile.longlink.c.a.a(4, a, "handleRecvMsg() current thisLen=" + i3 + ", leftLen=" + k + ", index=" + i5);
          j = i5;
          break;
        }
        if (locala == null)
          continue;
        com.alipay.mobile.longlink.c.a.a(5, a, "processPacket() are processing one valid packet!");
        this.d.g();
        this.c.submit(new h(this, locala));
        continue;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        j = paramInt;
      }
      break;
      label517: com.alipay.mobile.longlink.c.a.a(2, a, "handleRecvMsg() got error packet!");
    }
  }

  protected final void a()
  {
    this.e = false;
    this.b = new f(this);
    this.b.setName("Packet Reader (" + this.d.g + ")");
    this.b.setDaemon(true);
    this.c = Executors.newSingleThreadExecutor(new g(this));
  }

  final void a(n paramn)
  {
    if (paramn != null)
      paramn.printStackTrace();
    com.alipay.mobile.longlink.c.a.a(2, a, "notifyConnectionError()...Exception!");
    Iterator localIterator = this.d.b().iterator();
    while (localIterator.hasNext())
    {
      com.alipay.mobile.longlink.b.b.c localc = (com.alipay.mobile.longlink.b.b.c)localIterator.next();
      try
      {
        localc.a(paramn);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public final void b()
  {
    this.f = new Semaphore(1);
    this.b.start();
    try
    {
      this.f.acquire();
      this.f.tryAcquire(500L, TimeUnit.MILLISECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }

  public final void c()
  {
    if (!this.e)
    {
      Iterator localIterator = this.d.b().iterator();
      while (localIterator.hasNext())
      {
        com.alipay.mobile.longlink.b.b.c localc = (com.alipay.mobile.longlink.b.b.c)localIterator.next();
        try
        {
          localc.a();
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
    this.e = true;
    this.c.shutdown();
    com.alipay.mobile.longlink.c.a.a(3, a, "shutdown()...listenerExecutor.shutdown!");
  }

  final void d()
  {
    this.d.c.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.e
 * JD-Core Version:    0.6.2
 */