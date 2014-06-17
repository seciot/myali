package com.alipay.mobile.withdraw.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

final class f
  implements View.OnClickListener
{
  f(WithdrawActivity paramWithdrawActivity)
  {
  }

  public final void onClick(View paramView)
  {
    WithdrawActivity.a(this.a, "withdraw", "selectCard");
    if (WithdrawActivity.a(this.a) == null)
    {
      WithdrawActivity.b(this.a);
      return;
    }
    WithdrawActivity.a(this.a).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.f
 * JD-Core Version:    0.6.2
 */