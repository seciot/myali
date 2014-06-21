package com.alipay.mobile.security.accountmanager.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;

final class de
  implements View.OnClickListener
{
  de(ModifyPayPwdActivity paramModifyPayPwdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ModifyPayPwdActivity.v(this.a, this.a.j.getText().toString());
    if ((ModifyPayPwdActivity.getBundle(this.a) != null) && (!"".equals(ModifyPayPwdActivity.getBundle(this.a).trim())))
    {
      this.a.showProgressDialog(null, true, this.a.m);
      new Thread(new ModifyPayPwdActivity.a(this.a, 2, (byte)0)).start();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.de
 * JD-Core Version:    0.6.2
 */