package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

final class Http20Draft06
  implements Variant
{
  static final int FLAG_END_FLOW_CONTROL = 1;
  static final int FLAG_END_HEADERS = 4;
  static final int FLAG_END_STREAM = 1;
  static final int FLAG_PONG = 1;
  static final int FLAG_PRIORITY = 8;
  static final int TYPE_CONTINUATION = 10;
  static final int TYPE_DATA = 0;
  static final int TYPE_GOAWAY = 7;
  static final int TYPE_HEADERS = 1;
  static final int TYPE_PING = 6;
  static final int TYPE_PRIORITY = 2;
  static final int TYPE_PUSH_PROMISE = 5;
  static final int TYPE_RST_STREAM = 3;
  static final int TYPE_SETTINGS = 4;
  static final int TYPE_WINDOW_UPDATE = 9;
  private static final byte[] a;

  static
  {
    try
    {
      a = "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n".getBytes("UTF-8");
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError();
  }

  public final FrameReader newReader(InputStream paramInputStream, boolean paramBoolean)
  {
    return new Http20Draft06.Reader(paramInputStream, paramBoolean);
  }

  public final FrameWriter newWriter(OutputStream paramOutputStream, boolean paramBoolean)
  {
    return new Http20Draft06.Writer(paramOutputStream, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Http20Draft06
 * JD-Core Version:    0.6.2
 */