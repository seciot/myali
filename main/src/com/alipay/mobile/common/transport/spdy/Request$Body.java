package com.alipay.mobile.common.transport.spdy;

import java.io.File;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public abstract class Request$Body
{
  public static Body create(MediaType paramMediaType, File paramFile)
  {
    if (paramMediaType == null)
      throw new NullPointerException("contentType == null");
    if (paramFile == null)
      throw new NullPointerException("content == null");
    return new Request.Body.2(paramMediaType, paramFile);
  }

  public static Body create(MediaType paramMediaType, String paramString)
  {
    if (paramMediaType.charset() != null);
    try
    {
      while (true)
      {
        Body localBody = create(paramMediaType, paramString.getBytes(paramMediaType.charset().name()));
        return localBody;
        paramMediaType = MediaType.parse(paramMediaType + "; charset=utf-8");
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError();
  }

  public static Body create(MediaType paramMediaType, byte[] paramArrayOfByte)
  {
    if (paramMediaType == null)
      throw new NullPointerException("contentType == null");
    if (paramArrayOfByte == null)
      throw new NullPointerException("content == null");
    return new Request.Body.1(paramMediaType, paramArrayOfByte);
  }

  public long contentLength()
  {
    return -1L;
  }

  public MediaType contentType()
  {
    return null;
  }

  public abstract void writeTo(OutputStream paramOutputStream);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Request.Body
 * JD-Core Version:    0.6.2
 */