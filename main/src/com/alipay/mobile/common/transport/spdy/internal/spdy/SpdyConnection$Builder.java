package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class SpdyConnection$Builder
{
  private String a;
  private InputStream b;
  private OutputStream c;
  private IncomingStreamHandler d = IncomingStreamHandler.REFUSE_INCOMING_STREAMS;
  private Variant e = Variant.SPDY3;
  private boolean f;

  public SpdyConnection$Builder(String paramString, boolean paramBoolean, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    this.a = paramString;
    this.f = paramBoolean;
    this.b = paramInputStream;
    this.c = paramOutputStream;
  }

  public SpdyConnection$Builder(String paramString, boolean paramBoolean, Socket paramSocket)
  {
    this(paramString, paramBoolean, paramSocket.getInputStream(), paramSocket.getOutputStream());
  }

  public SpdyConnection$Builder(boolean paramBoolean, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    this("", paramBoolean, paramInputStream, paramOutputStream);
  }

  public SpdyConnection$Builder(boolean paramBoolean, Socket paramSocket)
  {
    this("", paramBoolean, paramSocket.getInputStream(), paramSocket.getOutputStream());
  }

  public SpdyConnection build()
  {
    return new SpdyConnection(this, null);
  }

  public Builder handler(IncomingStreamHandler paramIncomingStreamHandler)
  {
    this.d = paramIncomingStreamHandler;
    return this;
  }

  public Builder http20Draft06()
  {
    this.e = Variant.HTTP_20_DRAFT_06;
    return this;
  }

  public Builder spdy3()
  {
    this.e = Variant.SPDY3;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.Builder
 * JD-Core Version:    0.6.2
 */