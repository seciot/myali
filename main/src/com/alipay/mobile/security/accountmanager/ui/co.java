package com.alipay.mobile.security.accountmanager.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;

final class co
  implements View.OnClickListener
{
  co(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ModifyLoginPwdActivity.a(this.a, this.a.i.getText().toString());
    if ((ModifyLoginPwdActivity.a(this.a) != null) && (!"".equals(ModifyLoginPwdActivity.a(this.a).trim())))
    {
      new Thread(new ModifyLoginPwdActivity.a(this.a, 2, (byte)0)).start();
      this.a.showProgressDialog(null, true, this.a.l);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.co
 * JD-Core Version:    0.6.2
 */