package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

class NameValueBlockReader$FillableInflaterInputStream extends InflaterInputStream
{
  public NameValueBlockReader$FillableInflaterInputStream(InputStream paramInputStream, Inflater paramInflater)
  {
    super(paramInputStream, paramInflater);
  }

  public void fill()
  {
    super.fill();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.NameValueBlockReader.FillableInflaterInputStream
 * JD-Core Version:    0.6.2
 */