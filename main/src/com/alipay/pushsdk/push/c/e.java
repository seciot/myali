package com.alipay.pushsdk.push.c;

import com.alipay.pushsdk.c.a.c;

public class e extends AppBundle
{
  private static final String c = BundlesManagerImpl.getBundle(HostClassLoader.class);
  private int d = BundlesManager.BundlesManagerImpl;
  private int e = BundlesManager.ZLog;

  public e()
  {
    f(BundlesManager.BundlesManagerImpl);
    g(BundlesManager.ZLog);
    getBundlePath();
  }

  public final void b(byte[] paramArrayOfByte)
  {
    if (this.a != 3)
    {
      byte[] arrayOfByte = new byte[4];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, 4);
      int i = d(arrayOfByte);
      removeBundle(i);
      BundlesManagerImpl.e(4, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgLen=" + i);
    }
  }

  public final void c(byte[] paramArrayOfByte)
  {
    int i = 0xF & paramArrayOfByte[0];
    int j = paramArrayOfByte[1];
    int k = 0x1 & j >>> 7;
    int m = 0x1 & j >>> 6;
    int n = 0x1 & j >>> 5;
    getBundle(i);
    b(k);
    c(m);
    d(n);
    BundlesManagerImpl.e(4, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgId=" + i);
    BundlesManagerImpl.e(5, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgType=" + k);
  }

  public final int getRequireBundleName()
  {
    if (a() == 3)
      g(2);
    return this.b;
  }

  public final byte[] getBundleVersion()
  {
    int i = this.e;
    if (a() == 3)
      i = 2;
    byte[] arrayOfByte = new byte[i];
    arrayOfByte[0] = ((byte)(this.d << 4 | a()));
    arrayOfByte[1] = ((byte)(stop() << 7 | getBundleName() << 6 | getInitLevel() << 5 | getFullBundleName() << 4));
    BundlesManagerImpl.e(4, BundlesManagerImpl, "getHdrbufforWrite() the 1st buffer:" + arrayOfByte[0]);
    BundlesManagerImpl.e(4, BundlesManagerImpl, "getHdrbufforWrite() the 2nd buffer:" + arrayOfByte[1]);
    if (a() != 3)
    {
      System.arraycopy(h(g()), 0, arrayOfByte, 2, 4);
      System.arraycopy(new byte[8], 0, arrayOfByte, 6, 8);
      BundlesManagerImpl.e(4, BundlesManagerImpl, "getHdrbufforWrite() all len=6");
    }
    return arrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.c.e
 * JD-Core Version:    0.6.2
 */