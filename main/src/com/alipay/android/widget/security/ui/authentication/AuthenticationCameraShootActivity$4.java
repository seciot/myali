package com.alipay.android.widget.security.ui.authentication;

import android.view.View;
import android.view.View.OnClickListener;

class AuthenticationCameraShootActivity$4
  implements View.OnClickListener
{
  AuthenticationCameraShootActivity$4(AuthenticationCameraShootActivity paramAuthenticationCameraShootActivity)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      AuthenticationCameraShootActivity.b(this.a).hasResource();
      AuthenticationCameraShootActivity.c(this.a);
      return;
    }
    catch (Exception localException)
    {
      AuthenticationCameraShootActivity.d(this.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCameraShootActivity.4
 * JD-Core Version:    0.6.2
 */