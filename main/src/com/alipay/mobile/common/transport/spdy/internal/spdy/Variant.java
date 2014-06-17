package com.alipay.mobile.common.transport.spdy.internal.spdy;

import java.io.InputStream;
import java.io.OutputStream;

abstract interface Variant
{
  public static final Variant HTTP_20_DRAFT_06 = new Http20Draft06();
  public static final Variant SPDY3 = new Spdy3();

  public abstract FrameReader newReader(InputStream paramInputStream, boolean paramBoolean);

  public abstract FrameWriter newWriter(OutputStream paramOutputStream, boolean paramBoolean);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Variant
 * JD-Core Version:    0.6.2
 */