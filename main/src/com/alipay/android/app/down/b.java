package com.alipay.android.app.down;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alipay.android.app.exception.AppErrorException;

final class b extends Handler
{
  public b(FileDownloader paramFileDownloader)
  {
    super(Looper.getMainLooper());
  }

  public final void handleMessage(Message paramMessage)
  {
    if (FileDownloader.i(this.a) == null);
    while (FileDownloader.i(this.a) == null)
      return;
    float f = 50.0F;
    while (true)
    {
      try
      {
        if (FileDownloader.a(this.a))
        {
          f = (float)(100L * FileDownloader.h(this.a).a() / FileDownloader.h(this.a).b());
          if (!FileDownloader.h(this.a).getBundleName())
            break label180;
          if (FileDownloader.j(this.a))
            break;
          FileDownloader.a(this.a, true);
          if (f != 100.0F)
            break label153;
          FileDownloader.i(this.a).getBundleName();
          return;
        }
      }
      catch (Exception localException)
      {
        FileDownloader.i(this.a).d();
        AppErrorException.a(FileDownloader.class, null, localException);
        return;
      }
      if (FileDownloader.h(this.a).getBundleName())
        f = 100.0F;
    }
    label153: if (f > 100.0F)
      FileDownloader.c(this.a);
    FileDownloader.i(this.a).d();
    return;
    label180: FileDownloader.i(this.a).a(f);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.down.b
 * JD-Core Version:    0.6.2
 */