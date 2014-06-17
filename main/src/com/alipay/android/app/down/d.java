package com.alipay.android.app.down;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

final class d
{
  private FileOutputStream b;

  public d(c paramc)
  {
    try
    {
      this.b = new FileOutputStream(c.a(paramc), true);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
  }

  public final int a(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      this.b.write(paramArrayOfByte, 0, paramInt);
      return paramInt;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a()
  {
    try
    {
      this.b.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.down.d
 * JD-Core Version:    0.6.2
 */