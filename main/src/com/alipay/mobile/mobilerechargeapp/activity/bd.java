package com.alipay.mobile.mobilerechargeapp.activity;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.mobilerechargeapp.utils.PhoneContactUtil;

final class bd
  implements View.OnClickListener
{
  bd(MobileRechargeActivity paramMobileRechargeActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ActivityApplication localActivityApplication = MobileRechargeActivity.getBundleByComponentName(this.a);
    PhoneContactUtil.a(localActivityApplication);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bd
 * JD-Core Version:    0.6.2
 */