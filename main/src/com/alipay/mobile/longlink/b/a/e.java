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
  private static final String a = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(e.class);
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
      com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, AppBundle, "handleRecvMsg() got valid packet protocolVersion:" + i + ", msgByte1st: " + Integer.toBinaryString(paramArrayOfByte[0]));
    while (true)
    {
      try
      {
        com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle locala = com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.c.a(i);
        int m = BundlesManager.BundlesManagerImpl;
        byte[] arrayOfByte1 = new byte[m];
        int n = localByteArrayInputStream.read(arrayOfByte1, 0, m);
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, AppBundle, "handleRecvMsg() read baseHdrLen=" + n);
        int i1;
        if (n == m)
        {
          locala.c(arrayOfByte1);
          i1 = locala.g() - m;
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, AppBundle, "handleRecvMsg() leftHdrLen=" + i1);
          if (i1 > k - 2)
            com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(2, AppBundle, "handleRecvMsg() got error header!");
        }
        else
        {
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(5, AppBundle, "handleRecvMsg() done! leftLen=" + k + ", index=" + j);
          return j;
        }
        byte[] arrayOfByte2 = new byte[i1];
        if (localByteArrayInputStream.read(arrayOfByte2, 0, i1) != i1)
          break label517;
        locala.b(arrayOfByte2);
        int i2 = locala.getBundleName();
        if ((i2 > k - locala.g()) || (i2 < 0))
          continue;
        byte[] arrayOfByte3 = new byte[i2];
        localByteArrayInputStream.read(arrayOfByte3, 0, i2);
        int i3 = locala.getBundleName() + locala.g();
        if (locala.f() == 1)
        {
          arrayOfByte3 = com.alipay.mobile.longlink.BundlesManagerImpl.c.b(arrayOfByte3);
          locala.c(arrayOfByte3.length);
        }
        locala.a(arrayOfByte3);
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, AppBundle, "handleRecvMsg() got valid packet! rawData=" + locala.d());
        int i4 = 1;
        if (locala.e() != BundlesManager.AppBundle)
          i4 = 0;
        if (i4 == 0)
        {
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(2, AppBundle, "handleRecvMsg() it's unsupported packet!");
          int i5 = j + i3;
          k -= i3;
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, AppBundle, "handleRecvMsg() current thisLen=" + i3 + ", leftLen=" + k + ", index=" + i5);
          j = i5;
          break;
        }
        if (locala == null)
          continue;
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(5, AppBundle, "processPacket() are processing one valid packet!");
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
      label517: com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(2, AppBundle, "handleRecvMsg() got error packet!");
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
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(2, AppBundle, "notifyConnectionError()...Exception!");
    Iterator localIterator = this.d.b().iterator();
    while (localIterator.hasNext())
    {
      com.alipay.mobile.longlink.BundlesManager.b.BundlesManagerImpl localc = (com.alipay.mobile.longlink.BundlesManager.b.BundlesManagerImpl)localIterator.next();
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

  public final void getBundleName()
  {
    if (!this.e)
    {
      Iterator localIterator = this.d.b().iterator();
      while (localIterator.hasNext())
      {
        com.alipay.mobile.longlink.BundlesManager.b.BundlesManagerImpl localc = (com.alipay.mobile.longlink.BundlesManager.b.BundlesManagerImpl)localIterator.next();
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
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, AppBundle, "shutdown()...listenerExecutor.shutdown!");
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