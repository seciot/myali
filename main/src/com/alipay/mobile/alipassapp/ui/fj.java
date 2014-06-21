package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;

final class fj
  implements View.OnClickListener
{
  fj(VoucherCurrentListActivity paramVoucherCurrentListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000030", "", "myCouponList", "addCoupon");
    VoucherCurrentListActivity.v("/pages/coupon.html?isFrom=couponList", VoucherCurrentListActivity.getBundle(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fj
 * JD-Core Version:    0.6.2
 */