package com.alipay.mobile.security.securitycommon;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.app.ActivityApplication;

final class SecurityCommonDialogUtil$1
  implements Runnable
{
  SecurityCommonDialogUtil$1(Activity paramActivity, Boolean paramBoolean, ActivityApplication paramActivityApplication)
  {
  }

  public final void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setMessage(R.string.cE);
    localBuilder.setPositiveButton(R.string.cF, new SecurityCommonDialogUtil.1.1(this));
    localBuilder.setNegativeButton(R.string.aJ, new SecurityCommonDialogUtil.1.2(this));
    localBuilder.setOnKeyListener(new SecurityCommonDialogUtil.1.3(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil.1
 * JD-Core Version:    0.6.2
 */