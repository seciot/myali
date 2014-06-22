package com.squareup.picasso;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class i extends Handler
{
  public i(h paramh, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    while (true)
    {
      synchronized (this.a)
      {
        switch (paramMessage.what)
        {
        default:
          new Handler(Looper.getMainLooper()).post(new j(this, paramMessage));
        case 0:
          return;
        case 1:
          Bundleable localh9 = this.a;
          localh9.BundlesManagerImpl = (1L + localh9.BundlesManagerImpl);
        case 2:
        case 3:
        case 4:
        }
      }
      h localh8 = this.a;
      localh8.d = (1L + localh8.d);
      continue;
      h localh5 = this.a;
      localh5.i = (1 + localh5.i);
      h localh6 = this.a;
      localh6.e += paramMessage.arg1;
      h localh7 = this.a;
      int j = this.a.i;
      localh7.g = (this.a.e / j);
      continue;
      h localh2 = this.a;
      localh2.j = (1 + localh2.j);
      h localh3 = this.a;
      localh3.f += paramMessage.arg1;
      h localh4 = this.a;
      int i = this.a.i;
      localh4.h = (this.a.f / i);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.i
 * JD-Core Version:    0.6.2
 */