package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;

final class fh
  implements View.OnClickListener
{
  fh(TravelCurrentListActivity paramTravelCurrentListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", "", "myTravelList", "addTravelItinerary");
    TravelCurrentListActivity.a("/pages/travel.html?isFrom=travelList", TravelCurrentListActivity.a(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fh
 * JD-Core Version:    0.6.2
 */