package com.alipay.android.widget.security.ui.authentication;

import android.graphics.Bitmap;

class AuthenticationCameraShootActivity$5$1
  implements CameraPreview.TakePictureCallback
{
  AuthenticationCameraShootActivity$5$1(AuthenticationCameraShootActivity.5 param5)
  {
  }

  public final void a()
  {
    this.a.a.toast("拍照失败", 0);
  }

  public final void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
      try
      {
        if (AuthenticationCameraShootActivity.a(this.a.a).a == 0)
        {
          this.a.a.a(paramBitmap);
          AuthenticationCameraShootActivity.a(this.a.a).a(1);
          return;
        }
        if (AuthenticationCameraShootActivity.a(this.a.a).a == 2)
        {
          this.a.a.b(paramBitmap);
          AuthenticationCameraShootActivity.a(this.a.a).a(3);
          return;
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        localOutOfMemoryError.printStackTrace();
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCameraShootActivity.5.1
 * JD-Core Version:    0.6.2
 */