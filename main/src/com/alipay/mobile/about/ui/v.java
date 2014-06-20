package com.alipay.mobile.about.ui;

import android.graphics.Bitmap;
import java.io.File;
import java.util.List;

final class v
  implements Runnable
{
  v(u paramu)
  {
  }

  public final void run()
  {
    int i = 0;
    for (File localFile : this.a.b)
      this.a.d.h.add(localFile);
    Bitmap[] arrayOfBitmap = this.a.c;
    int m = arrayOfBitmap.length;
    while (i < m)
    {
      Bitmap localBitmap = arrayOfBitmap[i];
      FeedAssistantActivity.removeBundle(this.a.d).add(localBitmap);
      i++;
    }
    FeedAssistantActivity.f(this.a.d);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.v
 * JD-Core Version:    0.6.2
 */