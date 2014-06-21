package com.alipay.mobile.withdraw.ui;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

final class g
  implements View.OnClickListener
{
  g(WithdrawActivity paramWithdrawActivity)
  {
  }

  public final void onClick(View paramView)
  {
    WithdrawActivity.a(this.a, "withdraw", "selectFinishTime");
    if (WithdrawActivity.c(this.a) == null)
    {
      this.a.getBundlePath();
      return;
    }
    WithdrawActivity.c(this.a).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.g
 * JD-Core Version:    0.6.2
 */