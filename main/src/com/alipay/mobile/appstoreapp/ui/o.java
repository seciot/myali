package com.alipay.mobile.appstoreapp.ui;

import android.widget.Toast;

final class o
  implements Runnable
{
  o(AppLaunchFromShortcutActivityImpl paramAppLaunchFromShortcutActivityImpl, String paramString)
  {
  }

  public final void run()
  {
    Toast localToast = Toast.makeText(AppLaunchFromShortcutActivityImpl.access$100(this.b), this.a, 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.o
 * JD-Core Version:    0.6.2
 */