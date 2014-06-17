package com.alipay.android.widget.security.ui.authentication;

import android.view.View;
import android.view.View.OnClickListener;

class AuthenticationCameraShootActivity$7
  implements View.OnClickListener
{
  AuthenticationCameraShootActivity$7(AuthenticationCameraShootActivity paramAuthenticationCameraShootActivity)
  {
  }

  public void onClick(View paramView)
  {
    if (AuthenticationCameraShootActivity.a(this.a).a == 1)
    {
      AuthenticationCameraShootActivity.a(this.a, AuthenticationCameraShootActivity.g(this.a), 0);
      AuthenticationCameraShootActivity.a(this.a).a(2);
    }
    while (AuthenticationCameraShootActivity.a(this.a).a != 3)
      return;
    AuthenticationCameraShootActivity.a(this.a, AuthenticationCameraShootActivity.h(this.a), 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCameraShootActivity.7
 * JD-Core Version:    0.6.2
 */