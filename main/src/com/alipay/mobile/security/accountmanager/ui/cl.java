package com.alipay.mobile.security.accountmanager.ui;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.security.securitycommon.SecurityPwdUtil;

final class cl
  implements View.OnClickListener
{
  cl(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (!SecurityPwdUtil.a(this.a.b.getInputedText().toString()).booleanValue())
    {
      this.a.toast(this.a.getResources().getString(R.string.cc), 1);
      return;
    }
    if (this.a.a.getInputedText().toString().equals(this.a.b.getInputedText().toString()))
    {
      this.a.toast(this.a.getResources().getString(R.string.co), 1);
      return;
    }
    this.a.showProgressDialog(null, true, this.a.l);
    new Thread(new ModifyLoginPwdActivity.a(this.a, 1, (byte)0)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cl
 * JD-Core Version:    0.6.2
 */