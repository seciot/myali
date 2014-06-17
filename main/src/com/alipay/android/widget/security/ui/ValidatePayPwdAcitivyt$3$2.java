package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;

class ValidatePayPwdAcitivyt$3$2
  implements DialogInterface.OnClickListener
{
  ValidatePayPwdAcitivyt$3$2(ValidatePayPwdAcitivyt.3 param3)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      ValidatePayPwdAcitivyt.a(this.a.a).startApp("", "20000013", null);
      this.a.a.finish();
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.ValidatePayPwdAcitivyt.3.2
 * JD-Core Version:    0.6.2
 */