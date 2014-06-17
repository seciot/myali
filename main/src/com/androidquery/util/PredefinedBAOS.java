package com.androidquery.util;

import java.io.ByteArrayOutputStream;

public class PredefinedBAOS extends ByteArrayOutputStream
{
  public PredefinedBAOS(int paramInt)
  {
    super(paramInt);
  }

  public byte[] toByteArray()
  {
    if (this.count == this.buf.length)
      return this.buf;
    return super.toByteArray();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.PredefinedBAOS
 * JD-Core Version:    0.6.2
 */