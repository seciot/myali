package com.alipay.android.widget.security.ui.authentication;

import com.alipay.mobile.clientsecurity.R.string;

class AuthenticationCameraShootActivity$2
  implements CameraPreview.CameraCallback
{
  AuthenticationCameraShootActivity$2(AuthenticationCameraShootActivity paramAuthenticationCameraShootActivity)
  {
  }

  public final void a()
  {
    this.a.alert(null, "相机打开失败", this.a.getString(R.string.af), new AuthenticationCameraShootActivity.2.1(this), null, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCameraShootActivity.2
 * JD-Core Version:    0.6.2
 */