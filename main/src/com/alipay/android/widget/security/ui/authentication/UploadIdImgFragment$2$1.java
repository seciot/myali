package com.alipay.android.widget.security.ui.authentication;

import android.graphics.Bitmap;
import com.alipay.mobile.commonui.widget.APImageView;

class UploadIdImgFragment$2$1
  implements Runnable
{
  UploadIdImgFragment$2$1(UploadIdImgFragment.2 param2, Bitmap paramBitmap)
  {
  }

  public void run()
  {
    if (this.b.c == 0)
    {
      this.b.e.f.setImageBitmap(this.a);
      this.b.e.f.setOnClickListener(new UploadIdImgFragment.2.1.1(this));
    }
    while (1 != this.b.c)
      return;
    this.b.e.g.setImageBitmap(this.a);
    this.b.e.g.setOnClickListener(new UploadIdImgFragment.2.1.2(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment.2.1
 * JD-Core Version:    0.6.2
 */