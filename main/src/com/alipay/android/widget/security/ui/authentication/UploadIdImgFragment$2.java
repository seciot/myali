package com.alipay.android.widget.security.ui.authentication;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import com.alipay.mobile.security.securitycommon.ImageUtils;
import com.alipay.mobile.security.securitycommon.LWThumbnailUtils;
import java.io.File;
import java.util.concurrent.CountDownLatch;

class UploadIdImgFragment$2
  implements Runnable
{
  UploadIdImgFragment$2(UploadIdImgFragment paramUploadIdImgFragment, Uri paramUri, File[] paramArrayOfFile, int paramInt, CountDownLatch paramCountDownLatch)
  {
  }

  public void run()
  {
    File localFile = LWThumbnailUtils.b(this.e.getActivity(), this.a);
    if (localFile != null)
    {
      Bitmap localBitmap = ImageUtils.a(localFile.getAbsolutePath());
      if (localBitmap != null)
      {
        this.b[this.c] = localFile;
        UploadIdImgFragment.b(this.e)[this.c] = localFile.getAbsolutePath();
        UploadIdImgFragment.a(this.e).post(new UploadIdImgFragment.2.1(this, localBitmap));
      }
    }
    this.d.countDown();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment.2
 * JD-Core Version:    0.6.2
 */