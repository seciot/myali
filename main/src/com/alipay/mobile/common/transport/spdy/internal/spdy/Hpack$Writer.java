package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.OutputStream;
import java.util.List;

class Hpack$Writer
{
  private final OutputStream a;

  Hpack$Writer(OutputStream paramOutputStream)
  {
    this.a = paramOutputStream;
  }

  public void writeHeaders(List paramList)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j += 2)
    {
      this.a.write(96);
      writeString((String)paramList.get(j));
      writeString((String)paramList.get(j + 1));
    }
  }

  public void writeInt(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2)
    {
      this.a.write(paramInt3 | paramInt1);
      return;
    }
    this.a.write(paramInt3 | paramInt2);
    int i = paramInt1 - paramInt2;
    while (i >= 128)
    {
      int j = i & 0x7F;
      this.a.write(j | 0x80);
      i >>>= 7;
    }
    this.a.write(i);
  }

  public void writeString(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes("UTF-8");
    writeInt(arrayOfByte.length, 255, 0);
    this.a.write(arrayOfByte);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Hpack.Writer
 * JD-Core Version:    0.6.2
 */