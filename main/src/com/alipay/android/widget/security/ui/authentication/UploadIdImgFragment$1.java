package com.alipay.android.widget.security.ui.authentication;

import android.os.Handler;
import java.io.File;
import java.util.concurrent.CountDownLatch;

class UploadIdImgFragment$1
  implements Runnable
{
  UploadIdImgFragment$1(UploadIdImgFragment paramUploadIdImgFragment, CountDownLatch paramCountDownLatch, File[] paramArrayOfFile)
  {
  }

  public void run()
  {
    try
    {
      this.a.await();
      UploadIdImgFragment.a(this.c).post(new UploadIdImgFragment.1.1(this));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment.1
 * JD-Core Version:    0.6.2
 */