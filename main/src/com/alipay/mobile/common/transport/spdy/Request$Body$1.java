package com.alipay.mobile.common.transport.spdy;

import java.io.OutputStream;

final class Request$Body$1 extends Request.Body
{
  Request$Body$1(MediaType paramMediaType, byte[] paramArrayOfByte)
  {
  }

  public final long contentLength()
  {
    return this.val$content.length;
  }

  public final MediaType contentType()
  {
    return this.val$contentType;
  }

  public final void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(this.val$content);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Request.Body.1
 * JD-Core Version:    0.6.2
 */