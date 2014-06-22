package com.alipay.mobile.longlink.b.c;

import java.io.UnsupportedEncodingException;

public abstract class a
{
  protected int a = 0;
  protected int b = 0;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private String g = "";
  private String h = "";

  protected static int d(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = 0;
    while (i < 4)
    {
      j = j << 8 | 0xFF & paramArrayOfByte[i];
      i++;
    }
    return j;
  }

  public final int initExecutor()
  {
    return this.a;
  }

  public final void setBundlePath(int paramInt)
  {
    this.a = paramInt;
  }

  public final void getBundle(String paramString)
  {
    this.h = paramString;
    if (paramString != null);
    try
    {
      if (!paramString.equals(""))
      {
        this.e = paramString.toString().getBytes("utf8").length;
        return;
      }
      this.h = "";
      this.e = 0;
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
      this.h = str;
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

  public final int stop()
  {
    return this.d;
  }

  public final void dexopt(int paramInt)
  {
    this.d = paramInt;
  }

  public abstract void dexopt(byte[] paramArrayOfByte);

  public final int getBundleName()
  {
    return this.e;
  }

  public final void getBundleClassLoader(int paramInt)
  {
    this.e = paramInt;
  }

  public abstract void getBundleClassLoader(byte[] paramArrayOfByte);

  public final String getInitLevel()
  {
    return this.h;
  }

  public final void d(int paramInt)
  {
    this.f = paramInt;
  }

  public final int getFullBundleName()
  {
    return this.c;
  }

  protected final void e(int paramInt)
  {
    this.c = paramInt;
  }

  public final int getBundlePath()
  {
    return this.f;
  }

  protected final void f(int paramInt)
  {
    this.b = paramInt;
  }

  public final int g()
  {
    return this.b;
  }

  public abstract byte[] hasResource();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.c.a
 * JD-Core Version:    0.6.2
 */