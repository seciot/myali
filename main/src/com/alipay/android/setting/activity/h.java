package com.alipay.android.setting.activity;

import android.view.View;
import android.widget.TextView;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.android.setting.request.RequestContainer;
import com.alipay.android.setting.widgets.CustomProgressBar;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.commonui.widget.APRadioTableView;

final class h
  implements APAbsTableView.OnSwitchListener
{
  h(NoPasswordActivity paramNoPasswordActivity)
  {
  }

  public final void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (paramBoolean)
    {
      NoPasswordActivity.v(this.a, this.a.a.f);
      NoPasswordActivity.getBundle(this.a).setVisibility(0);
      NoPasswordActivity.b(this.a).setVisibility(0);
      NoPasswordActivity.c(this.a).setType(17);
      LogAgent.j("SPSafePay");
      return;
    }
    LogAgent.k("SPSafePay");
    NoPasswordActivity.v(this.a, 0);
    NoPasswordActivity.getBundle(this.a).setVisibility(8);
    NoPasswordActivity.b(this.a).setVisibility(8);
    NoPasswordActivity.c(this.a).setType(16);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.h
 * JD-Core Version:    0.6.2
 */