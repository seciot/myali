package com.alipay.mobile.withdraw.ui;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.phone.wealth.withdraw.R.string;
import com.alipay.mobile.common.dialog.NormalPwdInputDialog;
import com.alipay.mobile.common.dialog.SixNoPwdInputDialog;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.common.misc.MoneyUtil;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APInputBox;

final class h
  implements View.OnClickListener
{
  h(WithdrawActivity paramWithdrawActivity)
  {
  }

  public final void onClick(View paramView)
  {
    WithdrawActivity.a(this.a, "withdraw", "confirmButton");
    ExtViewUtil.closeSoftInputWindow(this.a);
    String str1 = WithdrawActivity.d(this.a).getInputedText().toString();
    if (!WithdrawActivity.a(this.a, str1))
      return;
    String str2 = MoneyUtil.formatMoney(str1) + this.a.getResources().getString(R.string.o);
    if (StringUtils.equalsIgnoreCase("2", WithdrawActivity.e(this.a)))
    {
      new SixNoPwdInputDialog(this.a, new i(this), this.a.getString(R.string.i), str2).show();
      return;
    }
    new NormalPwdInputDialog(this.a, new j(this), this.a.getString(R.string.j), str2).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.h
 * JD-Core Version:    0.6.2
 */