package com.alipay.mobile.common.transport.spdy.internal;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class StrictLineReader$1 extends ByteArrayOutputStream
{
  StrictLineReader$1(StrictLineReader paramStrictLineReader, int paramInt)
  {
    super(paramInt);
  }

  public String toString()
  {
    int i;
    if ((this.count > 0) && (this.buf[(-1 + this.count)] == 13))
      i = -1 + this.count;
    try
    {
      while (true)
      {
        String str = new String(this.buf, 0, i, StrictLineReader.access$000(this.this$0).name());
        return str;
        i = this.count;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.StrictLineReader.1
 * JD-Core Version:    0.6.2
 */