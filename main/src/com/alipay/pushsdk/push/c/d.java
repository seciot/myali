package com.alipay.pushsdk.push.c;

import com.alipay.pushsdk.c.a.c;

public class d extends AppBundle
{
  private static final String c = BundlesManagerImpl.a(d.class);
  private int d = BundlesManager.AppBundle;
  private int e = BundlesManager.b;

  public d()
  {
    f(BundlesManager.AppBundle);
    g(BundlesManager.b);
  }

  public final void b(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[0];
    BundlesManagerImpl.a(5, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgType=" + i);
    byte[] arrayOfByte = new byte[4];
    System.arraycopy(paramArrayOfByte, 1, arrayOfByte, 0, 4);
    int j = d(arrayOfByte);
    BundlesManagerImpl.a(4, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgLen=" + j);
    b(i);
    e(j);
  }

  public final void c(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[1];
    BundlesManagerImpl.a(4, BundlesManagerImpl, "getHdrfromRead() got valid packet! msgId=" + i);
    a(i);
  }

  public final byte[] k()
  {
    byte[] arrayOfByte = new byte[this.e];
    arrayOfByte[0] = Integer.valueOf(this.d).byteValue();
    arrayOfByte[1] = Integer.valueOf(a()).byteValue();
    arrayOfByte[2] = Integer.valueOf(b()).byteValue();
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