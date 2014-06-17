package com.taobao.securityjni;

public class Signature
{
  private long handle = 0L;
  private int sha = 256;

  public Signature()
  {
    this.sha = 256;
  }

  public Signature(int paramInt)
  {
    this.sha = paramInt;
  }

  private native void destroy();

  private native void updated(byte[] paramArrayOfByte);

  private native boolean verifyd(String paramString1, String paramString2);

  protected void finalize()
  {
    try
    {
      destroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public void update(byte[] paramArrayOfByte)
  {
    try
    {
      updated(paramArrayOfByte);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  public boolean verify(String paramString1, String paramString2)
  {
    try
    {
      boolean bool = verifyd(paramString1, paramString2);
      return bool;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.Signature
 * JD-Core Version:    0.6.2
 */