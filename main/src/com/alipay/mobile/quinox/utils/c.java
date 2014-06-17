package com.alipay.mobile.quinox.utils;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;

public final class c
{
  public static void a(BufferedInputStream paramBufferedInputStream, File paramFile)
  {
    try
    {
      localFileOutputStream = new FileOutputStream(paramFile);
      try
      {
        byte[] arrayOfByte = new byte[8192];
        while (true)
        {
          int i = paramBufferedInputStream.read(arrayOfByte);
          if (i <= 0)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
        }
      }
      finally
      {
      }
      if (localFileOutputStream != null)
        localFileOutputStream.close();
      throw localObject1;
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    finally
    {
      while (true)
        FileOutputStream localFileOutputStream = null;
    }
  }

  public static void a(String paramString)
  {
    if (paramString == null);
    File localFile;
    do
    {
      return;
      localFile = new File(paramString);
    }
    while (!localFile.exists());
    localFile.deleteOnExit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.utils.c
 * JD-Core Version:    0.6.2
 */