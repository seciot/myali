package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.LogoutService;

final class b
  implements DialogInterface.OnClickListener
{
  b(a parama)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      ((LogoutService)SecurityWidgetGroupAcitivity.getBundle(this.a.a).getMicroApplicationContext().getExtServiceByInterface(LogoutService.class.getName())).logout();
      this.a.a.getInstance();
      label39: paramDialogInterface.dismiss();
      return;
    }
    catch (Exception localException)
    {
      break label39;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.b
 * JD-Core Version:    0.6.2
 */