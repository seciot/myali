package com.alipay.pushsdk.push.c;

import com.alipay.pushsdk.c.a.c;

public class d extends AppBundle
{
  private static final String c = BundlesManagerImpl.getBundle(ZLog.class);
  private int d = BundlesManager.AppBundle;
  private int e = BundlesManager.MinPriorityThreadFactory;

  public d()
  {
    f(BundlesManager.AppBundle);
    g(BundlesManager.MinPriorityThreadFactory);
  }

  public final void b(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[0];
    BundlesManagerImpl.e(5, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgType=" + i);
    byte[] arrayOfByte = new byte[4];
    System.arraycopy(paramArrayOfByte, 1, arrayOfByte, 0, 4);
    int j = d(arrayOfByte);
    BundlesManagerImpl.e(4, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgLen=" + j);
    b(i);
    removeBundle(j);
  }

  public final void c(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[1];
    BundlesManagerImpl.e(4, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgId=" + i);
    getBundle(i);
  }

  public final byte[] getBundleVersion()
  {
    byte[] arrayOfByte = new byte[this.e];
    arrayOfByte[0] = Integer.valueOf(this.d).byteValue();
    arrayOfByte[1] = Integer.valueOf(a()).byteValue();
    arrayOfByte[2] = Integer.valueOf(stop()).byteValue();
    System.arraycopy(h(g()), 0, arrayOfByte, 3, 4);
    System.arraycopy(new byte[4], 0, arrayOfByte, 7, 4);
    System.arraycopy(new byte[4], 0, arrayOfByte, 11, 4);
    return arrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.c.d
 * JD-Core Version:    0.6.2
 */