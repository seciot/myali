package com.alipay.android.app.down;

import com.alipay.android.app.util.LogUtils;
import java.io.File;
import java.io.IOException;

final class a
  implements Runnable
{
  a(FileDownloader paramFileDownloader)
  {
  }

  private static void a(String paramString)
  {
    File localFile = new File(paramString);
    if (!localFile.exists())
      localFile.getParentFile().mkdirs();
    try
    {
      localFile.createNewFile();
      return;
    }
    catch (IOException localIOException)
    {
      LogUtils.a(localIOException);
    }
  }

  public final void run()
  {
    b localb = new b(this.a);
    long l = -1L;
    if (FileDownloader.a(this.a))
    {
      l = FileDownloader.b(this.a);
      if (l <= 0L)
        localb.sendEmptyMessage(0);
    }
    else
    {
      FileDownloader.c(this.a);
    }
    FileDownloader.a(this.a, new c(FileDownloader.d(this.a), FileDownloader.e(this.a), this.a));
    a(FileDownloader.e(this.a));
    a(FileDownloader.f(this.a));
    if (FileDownloader.a(this.a))
    {
      FileDownloader.g(this.a);
      if (FileDownloader.h(this.a).b() != l)
      {
        FileDownloader.c(this.a);
        FileDownloader.h(this.a).a(0L);
        FileDownloader.h(this.a).b(l);
      }
    }
    new Thread(FileDownloader.h(this.a)).start();
    FileDownloader.a(this.a, false);
    while (true)
      if (!FileDownloader.h(this.a).c())
        try
        {
          Thread.sleep(1500L);
          localb.sendEmptyMessage(0);
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
    localb.sendEmptyMessage(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.down.a
 * JD-Core Version:    0.6.2
 */