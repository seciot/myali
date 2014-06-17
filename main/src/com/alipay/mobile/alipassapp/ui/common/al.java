package com.alipay.mobile.alipassapp.ui.common;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.ui.TravelPastListActivity;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class al
  implements View.OnClickListener
{
  al(ActivityApplication paramActivityApplication)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "", "", "20000021", "", "historyTravelList", "myTravelList", "seeHistoryTravel", "", "", "", new String[] { "" });
    this.a.getMicroApplicationContext().startActivity(this.a, TravelPastListActivity.class.getName());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.al
 * JD-Core Version:    0.6.2
 */