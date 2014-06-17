package com.alipay.mobile.security.accountmanager.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.WindowManager.BadTokenException;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.app.ActivityApplication;

final class bm
  implements Runnable
{
  bm(ForgotPayPwdActivity paramForgotPayPwdActivity, Activity paramActivity, Boolean paramBoolean, ActivityApplication paramActivityApplication)
  {
  }

  public final void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setMessage(R.string.cE);
    localBuilder.setPositiveButton(R.string.cF, new bn(this));
    localBuilder.setNegativeButton(R.string.aJ, new bo(this));
    localBuilder.setOnKeyListener(new bp(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    try
    {
      localAlertDialog.show();
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      new StringBuilder("{[info=frozenDialog],[msg=").append(localBadTokenException.getMessage()).append("]}").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bm
 * JD-Core Version:    0.6.2
 */