package com.alipay.mobile.about.ui;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import com.alipay.mobile.security.securitycommon.ImageUtils;
import com.alipay.mobile.security.securitycommon.LWThumbnailUtils;
import java.io.File;
import java.util.concurrent.CountDownLatch;

final class w
  implements Runnable
{
  w(FeedAssistantActivity paramFeedAssistantActivity, Uri paramUri, File[] paramArrayOfFile, int paramInt1, Bitmap[] paramArrayOfBitmap, int paramInt2, CountDownLatch paramCountDownLatch)
  {
  }

  public final void run()
  {
    File localFile = LWThumbnailUtils.d(this.g, this.a);
    if (localFile != null)
    {
      Bitmap localBitmap = ImageUtils.a(localFile.getAbsolutePath());
      if (localBitmap != null)
      {
        this.b[this.c] = localFile;
        this.d[this.c] = localBitmap;
        FeedAssistantActivity.g(this.g).post(new x(this, localBitmap));
      }
    }
    this.f.countDown();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.w
 * JD-Core Version:    0.6.2
 */