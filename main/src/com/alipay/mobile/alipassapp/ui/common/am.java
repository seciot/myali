package com.alipay.mobile.alipassapp.ui.common;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.ui.VoucherPastListActivity;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class am
  implements View.OnClickListener
{
  am(ActivityApplication paramActivityApplication)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "", "", "20000030", "", "", "myCouponList", "invalid", "", "", "", new String[] { "" });
    this.a.getMicroApplicationContext().startActivity(this.a, VoucherPastListActivity.class.getName());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.am
 * JD-Core Version:    0.6.2
 */