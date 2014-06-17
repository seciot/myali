package com.alipay.mobile.common.transport.spdy.internal;

import java.io.Closeable;
import java.io.InputStream;

public final class DiskLruCache$Snapshot
  implements Closeable
{
  private final String a;
  private final long b;
  private final InputStream[] c;
  private final long[] d;

  private DiskLruCache$Snapshot(DiskLruCache paramDiskLruCache, String paramString, long paramLong, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
  {
    this.a = paramString;
    this.b = paramLong;
    this.c = paramArrayOfInputStream;
    this.d = paramArrayOfLong;
  }

  public final void close()
  {
    InputStream[] arrayOfInputStream = this.c;
    int i = arrayOfInputStream.length;
    for (int j = 0; j < i; j++)
      Util.closeQuietly(arrayOfInputStream[j]);
  }

  public final DiskLruCache.Editor edit()
  {
    return DiskLruCache.access$1600(this.this$0, this.a, this.b);
  }

  public final InputStream getInputStream(int paramInt)
  {
    return this.c[paramInt];
  }

  public final long getLength(int paramInt)
  {
    return this.d[paramInt];
  }

  public final String getString(int paramInt)
  {
    return DiskLruCache.access$1700(getInputStream(paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Snapshot
 * JD-Core Version:    0.6.2
 */