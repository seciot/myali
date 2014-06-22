package com.alipay.android.setting.activity;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RadioButton;
import android.widget.TextView;
import com.alipay.android.mini.util.LogAgent;
import com.alipay.mobile.commonui.widget.APRadioTableView;

final class k
  implements View.OnClickListener
{
  k(PaymentChannelActivity paramPaymentChannelActivity, RadioButton paramRadioButton, l paraml)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.toggle();
    LogAgent.d("SPSafePay", this.b.b);
    if (this.b.d)
    {
      PaymentChannelActivity.v(this.c, this.b.e);
      PaymentChannelActivity.b(this.c).setVisibility(0);
      PaymentChannelActivity.getBundleByComponentName(this.c).setVisibility(0);
      return;
    }
    PaymentChannelActivity.v(this.c, null);
    PaymentChannelActivity.b(this.c).setVisibility(8);
    PaymentChannelActivity.getBundleByComponentName(this.c).setVisibility(8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.k
 * JD-Core Version:    0.6.2
 */