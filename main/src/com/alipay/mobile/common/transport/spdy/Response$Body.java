package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public abstract class Response$Body
{
  public abstract InputStream byteStream();

  public byte[] bytes()
  {
    long l = contentLength();
    if (l > 2147483647L)
      throw new IOException("Cannot buffer entire body for content length: " + l);
    byte[] arrayOfByte;
    if (l != -1L)
    {
      arrayOfByte = new byte[(int)l];
      InputStream localInputStream = byteStream();
      Util.readFully(localInputStream, arrayOfByte);
      if (localInputStream.read() != -1)
        throw new IOException("Content-Length and stream length disagree");
    }
    else
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      Util.copy(byteStream(), localByteArrayOutputStream);
      arrayOfByte = localByteArrayOutputStream.toByteArray();
    }
    return arrayOfByte;
  }

  public Reader charStream()
  {
    return new InputStreamReader(byteStream(), "UTF-8");
  }

  public long contentLength()
  {
    return -1L;
  }

  public String contentType()
  {
    return null;
  }

  public String string()
  {
    return new String(bytes(), "UTF-8");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Response.Body
 * JD-Core Version:    0.6.2
 */