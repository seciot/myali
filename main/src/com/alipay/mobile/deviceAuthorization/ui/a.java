package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobilesecurity.biz.gw.service.auth.model.info.AuthInfo;

final class a
  implements DialogInterface.OnClickListener
{
  a(AuthAdminActivity paramAuthAdminActivity, AuthInfo paramAuthInfo)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AuthAdminActivity.a locala = new AuthAdminActivity.a(this.b);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a.getAuthId();
    locala.execute(arrayOfString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.a
 * JD-Core Version:    0.6.2
 */