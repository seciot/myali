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
  private static final String a = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.getBundle(HostClassLoader.class);
  private Thread b;
  private ExecutorService c;
  private k d;
  private boolean e;
  private Semaphore f;

  protected e(k paramk)
  {
    this.d = paramk;
    getInstance();
  }

  private int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.d.getInitLevel();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    int j = 0;
    int k = paramInt;
    if (k >= 2)
      com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(4, AppBundle, "handleRecvMsg() got valid packet protocolVersion:" + i + ", msgByte1st: " + Integer.toBinaryString(paramArrayOfByte[0]));
    while (true)
    {
      try
      {
        com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle locala = com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.FileUitl.getBundle(i);
        int m = BundlesManager.BundlesManagerImpl;
        byte[] arrayOfByte1 = new byte[m];
        int n = localByteArrayInputStream.read(arrayOfByte1, 0, m);
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(4, AppBundle, "handleRecvMsg() read baseHdrLen=" + n);
        int i1;
        if (n == m)
        {
          locala.getBundleByComponentName(arrayOfByte1);
          i1 = locala.g() - m;
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(4, AppBundle, "handleRecvMsg() leftHdrLen=" + i1);
          if (i1 > k - 2)
            com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(2, AppBundle, "handleRecvMsg() got error header!");
        }
        else
        {
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(5, AppBundle, "handleRecvMsg() done! leftLen=" + k + ", index=" + j);
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
        if (locala.getBundlePath() == 1)
        {
          arrayOfByte3 = com.alipay.mobile.longlink.BundlesManagerImpl.FileUitl.b(arrayOfByte3);
          locala.getBundleByComponentName(arrayOfByte3.length);
        }
        locala.getBundle(arrayOfByte3);
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(4, AppBundle, "handleRecvMsg() got valid packet! rawData=" + locala.getInitLevel());
        int i4 = 1;
        if (locala.getFullBundleName() != BundlesManager.AppBundle)
          i4 = 0;
        if (i4 == 0)
        {
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(2, AppBundle, "handleRecvMsg() it's unsupported packet!");
          int i5 = j + i3;
          k -= i3;
          com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(4, AppBundle, "handleRecvMsg() current thisLen=" + i3 + ", leftLen=" + k + ", index=" + i5);
          j = i5;
          break;
        }
        if (locala == null)
          continue;
        com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(5, AppBundle, "processPacket() are processing one valid packet!");
        this.d.g();
        this.c.submit(new Loadable(this, locala));
        continue;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        j = paramInt;
      }
      break;
      label517: com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(2, AppBundle, "handleRecvMsg() got error packet!");
    }
  }

  protected final void a()
  {
    this.e = false;
    this.b = new DefaultThreadFactory(this);
    this.b.setName("Packet Reader (" + this.d.g + ")");
    this.b.setDaemon(true);
    this.c = Executors.newSingleThreadExecutor(new g(this));
  }

  final void setBundlePath(n paramn)
  {
    if (paramn != null)
      paramn.printStackTrace();
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(2, AppBundle, "notifyConnectionError()...Exception!");
    Iterator localIterator = this.d.stop().iterator();
    while (localIterator.hasNext())
    {
      com.alipay.mobile.longlink.BundlesManager.MinPriorityThreadFactory.BundlesManagerImpl localc = (com.alipay.mobile.longlink.BundlesManager.MinPriorityThreadFactory.BundlesManagerImpl)localIterator.next();
      try
      {
        localc.getBundle(paramn);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  public final void stop()
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
      Iterator localIterator = this.d.stop().iterator();
      while (localIterator.hasNext())
      {
        com.alipay.mobile.longlink.BundlesManager.MinPriorityThreadFactory.BundlesManagerImpl localc = (com.alipay.mobile.longlink.BundlesManager.MinPriorityThreadFactory.BundlesManagerImpl)localIterator.next();
        try
        {
          localc.getInstance();
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
    this.e = true;
    this.c.shutdown();
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(3, AppBundle, "shutdown()...listenerExecutor.shutdown!");
  }

  final void getInitLevel()
  {
    this.d.c.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.e
 * JD-Core Version:    0.6.2
 */