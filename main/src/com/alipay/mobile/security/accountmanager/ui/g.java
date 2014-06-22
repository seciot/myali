package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class g
  implements DialogInterface.OnClickListener
{
  g(AccountManagerActivity paramAccountManagerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("actionType", "20000005");
    try
    {
      AccountManagerActivity.dexopt(this.a).getMicroApplicationContext().startApp(AccountManagerActivity.getBundle(this.a).getAppId(), "20000001", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.g
 * JD-Core Version:    0.6.2
 */