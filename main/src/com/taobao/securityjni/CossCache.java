package com.taobao.securityjni;

public class CossCache
{
  private int errcode = 0;
  private long handle = 0L;

  private native boolean closecache();

  private native boolean opencache(String paramString, int paramInt1, int paramInt2, int paramInt3);

  private native byte[] readcache(String paramString);

  private native boolean writecache(String paramString, byte[] paramArrayOfByte);

  public boolean close()
  {
    try
    {
      boolean bool2 = closecache();
      bool1 = bool2;
      return bool1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        boolean bool1 = false;
      }
    }
    finally
    {
    }
  }

  public int errcode()
  {
    return this.errcode;
  }

  protected void finalize()
  {
    close();
  }

  public byte[] get(String paramString)
  {
    try
    {
      byte[] arrayOfByte2 = readcache(paramString);
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
    finally
    {
    }
  }

  public boolean open(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      boolean bool2 = opencache(paramString, paramInt1, paramInt2, paramInt3);
      bool1 = bool2;
      return bool1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        boolean bool1 = false;
      }
    }
    finally
    {
    }
  }

  public boolean put(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      boolean bool2 = writecache(paramString, paramArrayOfByte);
      bool1 = bool2;
      return bool1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        boolean bool1 = false;
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.CossCache
 * JD-Core Version:    0.6.2
 */