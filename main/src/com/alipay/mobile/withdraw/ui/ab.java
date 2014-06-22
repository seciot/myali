package com.alipay.mobile.withdraw.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;

final class ab
  implements View.OnClickListener
{
  ab(WithdrawSmsCheckActivity paramWithdrawSmsCheckActivity)
  {
  }

  public final void onClick(View paramView)
  {
    WithdrawSmsCheckActivity.getBundle(this.a).dispose();
    ExtViewUtil.closeSoftInputWindow(this.a);
    WithdrawSmsCheckActivity.getBundleByComponentName(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.ab
 * JD-Core Version:    0.6.2
 */