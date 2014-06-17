package com.alipay.android.widget.security.ui.authentication;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import com.alipay.mobile.clientsecurity.R.string;

class BaseAuthenticationActivity$1
  implements Runnable
{
  BaseAuthenticationActivity$1(BaseAuthenticationActivity paramBaseAuthenticationActivity, Context paramContext, BaseAuthenticationActivity.OnFrozenCancelClickedListener paramOnFrozenCancelClickedListener)
  {
  }

  public void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setMessage(R.string.cE);
    localBuilder.setPositiveButton(R.string.cF, new BaseAuthenticationActivity.1.1(this));
    localBuilder.setNegativeButton(R.string.aJ, new BaseAuthenticationActivity.1.2(this));
    localBuilder.setOnKeyListener(new BaseAuthenticationActivity.1.3(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationActivity.1
 * JD-Core Version:    0.6.2
 */