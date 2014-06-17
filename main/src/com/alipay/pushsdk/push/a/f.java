package com.alipay.pushsdk.push.a;

import com.alipay.pushsdk.push.c.a;
import com.alipay.pushsdk.push.c.b;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

class f
{
  private static final String a = com.alipay.pushsdk.c.a.c.a(f.class);
  private Thread b;
  private ExecutorService c;
  private m d;
  private boolean e;
  private Semaphore f;

  protected f(m paramm)
  {
    this.d = paramm;
    a();
  }

  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.d.d();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    int j = 0;
    int k = paramInt;
    a locala;
    int i1;
    byte[] arrayOfByte2;
    int i4;
    while (k >= 2)
    {
      com.alipay.pushsdk.c.a.c.a(4, a, "handleRecvMsg() got valid packet msgVersion:" + i + ", msgByte1st: " + Integer.toBinaryString(paramArrayOfByte[0]));
      try
      {
        locala = com.alipay.pushsdk.push.c.c.a(i);
        int m = b.e;
        byte[] arrayOfByte1 = new byte[m];
        int n = localByteArrayInputStream.read(arrayOfByte1, 0, 2);
        com.alipay.pushsdk.c.a.c.a(4, a, "handleRecvMsg() readLen=" + n);
        if (n != m)
          break;
        locala.c(arrayOfByte1);
        i1 = locala.j() - m;
        com.alipay.pushsdk.c.a.c.a(4, a, "handleRecvMsg() leftHdrLen=" + i1);
        arrayOfByte2 = new byte[i1];
        if ((i != b.c) || (locala.a() != 3))
          break label276;
        a(locala);
        i4 = locala.j();
        j += i4;
        k -= i4;
        com.alipay.pushsdk.c.a.c.a(4, a, "handleRecvMsg() current thisLen=" + i4 + ", leftLen=" + k + ", index=" + j);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        j = paramInt;
      }
      continue;
      label276: if (i1 <= k - b.e)
        break label333;
      com.alipay.pushsdk.c.a.c.a(2, a, "handleRecvMsg() got error header!");
    }
    label296: label333: int i2;
    do
    {
      com.alipay.pushsdk.c.a.c.a(5, a, "handleRecvMsg() done! leftLen=" + k + ", index=" + j);
      return j;
      if (localByteArrayInputStream.read(arrayOfByte2, 0, i1) != i1)
        break;
      locala.b(arrayOfByte2);
      i2 = locala.g();
    }
    while ((i2 > k - locala.j()) || (i2 < 0));
    byte[] arrayOfByte3 = new byte[i2];
    localByteArrayInputStream.read(arrayOfByte3, 0, i2);
    locala.a(arrayOfByte3);
    com.alipay.pushsdk.c.a.c.a(4, a, "handleRecvMsg() got valid packet! rawData=" + locala.h());
    int i3 = 1;
    if ((locala.i() >= b.g) && (locala.i() <= b.f));
    while (true)
    {
      if (i3 == 0)
        com.alipay.pushsdk.c.a.c.a(2, a, "handleRecvMsg() it's unsupported packet!");
      while (true)
      {
        i4 = locala.g() + locala.j();
        break;
        a(locala);
      }
      com.alipay.pushsdk.c.a.c.a(2, a, "handleRecvMsg() got error packet!");
      break label296;
      i3 = 0;
    }
  }

  private void a(a parama)
  {
    if (parama == null)
      return;
    com.alipay.pushsdk.c.a.c.a(5, a, "processPacket() are processing one valid packet!");
    this.d.g();
    this.c.submit(new i(this, parama));
  }

  protected final void a()
  {
    this.e = false;
    this.b = new g(this);
    this.b.setName("Packet Reader (" + this.d.g + ")");
    this.b.setDaemon(true);
    this.c = Executors.newSingleThreadExecutor(new h(this));
  }

  final void a(p paramp)
  {
    if (paramp != null)
      paramp.printStackTrace();
    com.alipay.pushsdk.c.a.c.a(2, a, "notifyConnectionError()...Exception!");
    Iterator localIterator = this.d.b().iterator();
    while (localIterator.hasNext())
    {
      com.alipay.pushsdk.push.b.c localc = (com.alipay.pushsdk.push.b.c)localIterator.next();
      try
      {
        localc.a(paramp);
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
      this.f.tryAcquire(1000L, TimeUnit.MILLISECONDS);
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
        com.alipay.pushsdk.push.b.c localc = (com.alipay.pushsdk.push.b.c)localIterator.next();
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
    com.alipay.pushsdk.c.a.c.a(3, a, "shutdown()...listenerExecutor.shutdown!");
  }

  final void d()
  {
    this.d.c.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.f
 * JD-Core Version:    0.6.2
 */