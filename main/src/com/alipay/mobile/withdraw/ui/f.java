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
    WithdrawActivity.e(this.a, "withdraw", "selectCard");
    if (WithdrawActivity.getBundle(this.a) == null)
    {
      WithdrawActivity.dexopt(this.a);
      return;
    }
    WithdrawActivity.getBundle(this.a).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.f
 * JD-Core Version:    0.6.2
 */