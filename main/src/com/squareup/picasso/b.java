package com.squareup.picasso;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Map;
import java.util.concurrent.Future;

final class b extends Handler
{
  b(Picasso paramPicasso, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    e locale = (e)paramMessage.obj;
    if ((locale.l.isCancelled()) || (locale.p))
      return;
    Picasso localPicasso = locale.a;
    switch (paramMessage.what)
    {
    default:
      throw new AssertionError("Unknown handler message received: " + paramMessage.what);
    case 1:
      localPicasso.i.remove(locale.a());
      locale.b();
      return;
    case 2:
      localPicasso.c(locale);
      return;
    case 3:
    }
    localPicasso.d(locale);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.b
 * JD-Core Version:    0.6.2
 */