package com.alipay.mobile.withdraw.ui;

import android.view.View;
import android.view.View.OnFocusChangeListener;

final class e
  implements View.OnFocusChangeListener
{
  e(WithdrawActivity paramWithdrawActivity, String paramString1, String paramString2)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
      WithdrawActivity.e(this.c, this.a, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.e
 * JD-Core Version:    0.6.2
 */