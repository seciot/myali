package com.alipay.mobile.common.transport.spdy.internal;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class DiskLruCache$Entry
{
  private final String a;
  private final long[] b;
  private boolean c;
  private DiskLruCache.Editor d;
  private long e;

  private DiskLruCache$Entry(DiskLruCache paramDiskLruCache, String paramString)
  {
    this.a = paramString;
    this.b = new long[DiskLruCache.access$1800(paramDiskLruCache)];
  }

  private static IOException a(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }

  public final File getCleanFile(int paramInt)
  {
    return new File(DiskLruCache.access$1900(this.this$0), this.a + "." + paramInt);
  }

  public final File getDirtyFile(int paramInt)
  {
    return new File(DiskLruCache.access$1900(this.this$0), this.a + "." + paramInt + ".tmp");
  }

  public final String getLengths()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (long l : this.b)
      localStringBuilder.append(' ').append(l);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Entry
 * JD-Core Version:    0.6.2
 */