package com.alipay.android.widget.security.ui.authentication;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class AuthenticationCertifiedActivity$2
  implements DialogInterface.OnClickListener
{
  AuthenticationCertifiedActivity$2(AuthenticationCertifiedActivity paramAuthenticationCertifiedActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AuthenticationCertifiedActivity.a(false);
    AuthenticationCertifiedActivity.d(this.a).finishApp(AuthenticationCertifiedActivity.removeBundle(this.a).getAppId(), AuthenticationCertifiedActivity.f(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.AuthenticationCertifiedActivity.2
 * JD-Core Version:    0.6.2
 */