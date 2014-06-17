package com.aps;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public class y
{
  protected File a;
  protected int[] b;
  private ArrayList c;
  private boolean d = false;

  protected y(File paramFile, ArrayList paramArrayList, int[] paramArrayOfInt)
  {
    this.a = paramFile;
    this.c = paramArrayList;
    this.b = paramArrayOfInt;
  }

  protected final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public byte[] a()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      byte[] arrayOfByte = (byte[])localIterator.next();
      try
      {
        localDataOutputStream.writeInt(arrayOfByte.length);
        localDataOutputStream.write(arrayOfByte);
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
      }
    }
    try
    {
      localByteArrayOutputStream.close();
      localDataOutputStream.close();
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException localIOException1)
    {
      while (true)
        localIOException1.printStackTrace();
    }
  }

  protected final boolean b()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.y
 * JD-Core Version:    0.6.2
 */