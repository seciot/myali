package com.alipay.mobile.common.transport.spdy.internal.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.InputStream;

class NameValueBlockReader$1 extends InputStream
{
  NameValueBlockReader$1(NameValueBlockReader paramNameValueBlockReader, InputStream paramInputStream)
  {
  }

  public void close()
  {
    this.val$in.close();
  }

  public int read()
  {
    return Util.readSingleByte(this);
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = Math.min(paramInt2, NameValueBlockReader.access$000(this.this$0));
    int j = this.val$in.read(paramArrayOfByte, paramInt1, i);
    NameValueBlockReader.access$020(this.this$0, j);
    return j;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.NameValueBlockReader.1
 * JD-Core Version:    0.6.2
 */