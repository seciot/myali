package com.alipay.mobile.common.transport.spdy.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class DiskLruCache$Editor
{
  private final DiskLruCache.Entry a;
  private final boolean[] b;
  private boolean c;
  private boolean d;

  private DiskLruCache$Editor(DiskLruCache paramDiskLruCache, DiskLruCache.Entry paramEntry)
  {
    this.a = paramEntry;
    if (DiskLruCache.Entry.access$600(paramEntry));
    for (boolean[] arrayOfBoolean = null; ; arrayOfBoolean = new boolean[DiskLruCache.access$1800(paramDiskLruCache)])
    {
      this.b = arrayOfBoolean;
      return;
    }
  }

  public final void abort()
  {
    DiskLruCache.access$2200(this.this$0, this, false);
  }

  public final void abortUnlessCommitted()
  {
    if (!this.d);
    try
    {
      abort();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public final void commit()
  {
    if (this.c)
    {
      DiskLruCache.access$2200(this.this$0, this, false);
      this.this$0.removeBundle(DiskLruCache.Entry.access$1100(this.a));
    }
    while (true)
    {
      this.d = true;
      return;
      DiskLruCache.access$2200(this.this$0, this, true);
    }
  }

  public final String getString(int paramInt)
  {
    InputStream localInputStream = newInputStream(paramInt);
    if (localInputStream != null)
      return DiskLruCache.access$1700(localInputStream);
    return null;
  }

  public final InputStream newInputStream(int paramInt)
  {
    synchronized (this.this$0)
    {
      if (DiskLruCache.Entry.access$700(this.a) != this)
        throw new IllegalStateException();
    }
    if (!DiskLruCache.Entry.access$600(this.a))
      return null;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(this.a.getCleanFile(paramInt));
      return localFileInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
    }
    return null;
  }

  public final OutputStream newOutputStream(int paramInt)
  {
    synchronized (this.this$0)
    {
      if (DiskLruCache.Entry.access$700(this.a) != this)
        throw new IllegalStateException();
    }
    if (!DiskLruCache.Entry.access$600(this.a))
      this.b[paramInt] = true;
    File localFile = this.a.getDirtyFile(paramInt);
    try
    {
      FileOutputStream localFileOutputStream1 = new FileOutputStream(localFile);
      localObject2 = localFileOutputStream1;
      DiskLruCache.Editor.FaultHidingOutputStream localFaultHidingOutputStream = new DiskLruCache.Editor.FaultHidingOutputStream(this, (OutputStream)localObject2, null);
      return localFaultHidingOutputStream;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      while (true)
      {
        Object localObject2;
        DiskLruCache.access$1900(this.this$0).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream2 = new FileOutputStream(localFile);
          localObject2 = localFileOutputStream2;
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = DiskLruCache.access$2000();
          return localOutputStream;
        }
      }
    }
  }

  // ERROR //
  public final void set(int paramInt, String paramString)
  {
    // Byte code:
    //   0: new 127	java/io/OutputStreamWriter
    //   3: dup
    //   4: aload_0
    //   5: iload_1
    //   6: invokevirtual 129	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor:newOutputStream	(I)Ljava/io/OutputStream;
    //   9: getstatic 135	com/alipay/mobile/common/transport/spdy/internal/Util:UTF_8	Ljava/nio/charset/Charset;
    //   12: invokespecial 138	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   15: astore_3
    //   16: aload_3
    //   17: aload_2
    //   18: invokevirtual 144	java/io/Writer:write	(Ljava/lang/String;)V
    //   21: aload_3
    //   22: invokestatic 148	com/alipay/mobile/common/transport/spdy/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   25: return
    //   26: astore 4
    //   28: aconst_null
    //   29: astore_3
    //   30: aload_3
    //   31: invokestatic 148	com/alipay/mobile/common/transport/spdy/internal/Util:closeQuietly	(Ljava/io/Closeable;)V
    //   34: aload 4
    //   36: athrow
    //   37: astore 4
    //   39: goto -9 -> 30
    //
    // Exception table:
    //   from	to	target	type
    //   0	16	26	finally
    //   16	21	37	finally
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Editor
 * JD-Core Version:    0.6.2
 */