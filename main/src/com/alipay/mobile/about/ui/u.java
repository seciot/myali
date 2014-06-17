package com.alipay.mobile.about.ui;

import android.graphics.Bitmap;
import android.os.Handler;
import java.io.File;
import java.util.concurrent.CountDownLatch;

final class u
  implements Runnable
{
  u(FeedAssistantActivity paramFeedAssistantActivity, CountDownLatch paramCountDownLatch, File[] paramArrayOfFile, Bitmap[] paramArrayOfBitmap)
  {
  }

  public final void run()
  {
    try
    {
      this.a.await();
      FeedAssistantActivity.g(this.d).post(new v(this));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.u
 * JD-Core Version:    0.6.2
 */