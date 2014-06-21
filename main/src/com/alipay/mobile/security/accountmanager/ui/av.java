package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTitleBar;

final class av
  implements DialogInterface.OnClickListener
{
  av(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.c.setVisibility(8);
    this.a.b.setVisibility(0);
    this.a.a.setTitleText(this.a.getResources().getString(R.string.ap).toString());
    this.a.m.getInputBox().setText("");
    this.a.stop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.av
 * JD-Core Version:    0.6.2
 */