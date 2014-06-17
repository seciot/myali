package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

final class Request$Body$2 extends Request.Body
{
  Request$Body$2(MediaType paramMediaType, File paramFile)
  {
  }

  public final long contentLength()
  {
    return this.val$file.length();
  }

  public final MediaType contentType()
  {
    return this.val$contentType;
  }

  public final void writeTo(OutputStream paramOutputStream)
  {
    long l = contentLength();
    if (l == 0L)
      return;
    try
    {
      localFileInputStream = new FileInputStream(this.val$file);
      try
      {
        byte[] arrayOfByte = new byte[(int)Math.min(8192L, l)];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          paramOutputStream.write(arrayOfByte, 0, i);
        }
      }
      finally
      {
      }
      Util.closeQuietly(localFileInputStream);
      throw localObject1;
      Util.closeQuietly(localFileInputStream);
      return;
    }
    finally
    {
      while (true)
        FileInputStream localFileInputStream = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Request.Body.2
 * JD-Core Version:    0.6.2
 */