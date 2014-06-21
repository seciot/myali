package com.alipay.pushsdk.push.c;

import java.io.UnsupportedEncodingException;

public abstract class a
{
  protected int a = 0;
  protected int b = 0;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private int g = 1;
  private int h = 0;
  private String i = "";
  private String j = "";

  protected static int d(byte[] paramArrayOfByte)
  {
    int k = 0;
    int m = 0;
    while (k < 4)
    {
      m = m << 8 | 0xFF & paramArrayOfByte[k];
      k++;
    }
    return m;
  }

  protected static byte[] h(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    for (int k = 0; k < 4; k++)
      arrayOfByte[k] = ((byte)(paramInt >> 24 - k * 8));
    return arrayOfByte;
  }

  public final int a()
  {
    return this.a;
  }

  public final void setBundlePath(int paramInt)
  {
    this.a = paramInt;
  }

  public final void getBundle(String paramString)
  {
    this.j = paramString;
    if (paramString != null);
    try
    {
      if (!paramString.equals(""))
      {
        this.h = paramString.toString().getBytes("utf8").length;
        return;
      }
      this.j = "";
      this.h = 0;
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
  }

  public final void setBundlePath(byte[] paramArrayOfByte)
  {
    try
    {
      str = new String(paramArrayOfByte, "utf8");
      this.j = str;
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        localUnsupportedEncodingException.printStackTrace();
        String str = "";
      }
    }
  }

  public final int b()
  {
    return this.d;
  }

  public final void b(int paramInt)
  {
    this.d = paramInt;
  }

  public abstract void b(byte[] paramArrayOfByte);

  public final int getBundleName()
  {
    return this.e;
  }

  public final void c(int paramInt)
  {
    this.e = paramInt;
  }

  public abstract void c(byte[] paramArrayOfByte);

  public final int getInitLevel()
  {
    return this.f;
  }

  public final void d(int paramInt)
  {
    this.f = paramInt;
  }

  public final int getFullBundleName()
  {
    return this.g;
  }

  public final void e(int paramInt)
  {
    this.h = paramInt;
  }

  public final void getBundlePath()
  {
    this.g = 1;
  }

  protected final void f(int paramInt)
  {
    this.c = paramInt;
  }

  public final int g()
  {
    return this.h;
  }

  protected final void g(int paramInt)
  {
    this.b = paramInt;
  }

  public final String hasResource()
  {
    return this.j;
  }

  public final int getAllBundles()
  {
    return this.c;
  }

  public int getRequireBundleName()
  {
    return this.b;
  }

  public abstract byte[] getBundleVersion();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.c.a
 * JD-Core Version:    0.6.2
 */