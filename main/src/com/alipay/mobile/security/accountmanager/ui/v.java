package com.alipay.mobile.security.accountmanager.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APButton;

final class v
  implements View.OnClickListener
{
  v(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (BindPhoneActivity.v(this.a).isShowing())
      BindPhoneActivity.v(this.a).cancel();
    BindPhoneActivity.d(this.a, Boolean.valueOf(true));
    this.a.showProgressDialog(null, true, this.a.t);
    new Thread(new BindPhoneActivity.b(this.a, 0, (byte)0)).start();
    BindPhoneActivity.y(this.a);
    this.a.h.setEnabled(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.v
 * JD-Core Version:    0.6.2
 */