package com.alipay.mobile.mobilerechargeapp.activity;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.mobilerechargeapp.view.APButtonInputBoxAutoC;

final class bb
  implements View.OnClickListener
{
  bb(MobileRechargeActivity paramMobileRechargeActivity)
  {
  }

  public final void onClick(View paramView)
  {
    MobileRechargeActivity.a(this.a.c.getEtContent());
    MobileRechargeActivity.b(this.a);
    this.a.c.showLastImgBtn(false);
    ((InputMethodManager)this.a.getSystemService("input_method")).showSoftInput(this.a.c.getEtContent(), 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bb
 * JD-Core Version:    0.6.2
 */