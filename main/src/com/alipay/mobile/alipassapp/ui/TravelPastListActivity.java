package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.ui.common.aj;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;

public class TravelPastListActivity extends AlipassListActivity
{
  protected final void a(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramAdapterView, paramView, paramInt, paramLong);
    Object localObject = paramAdapterView.getItemAtPosition(paramInt);
    if ((localObject != null) && ((localObject instanceof BaseAlipassInfoItem.AlipassInfoItem)))
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", "travelItineraryDetails", "historyTravelList", "seeHistoryTravelItinerary");
  }

  protected final View b()
  {
    return null;
  }

  protected final boolean f()
  {
    return true;
  }

  protected final String i()
  {
    return "TRAVEL";
  }

  protected final PassListReq j()
  {
    PassListReq localPassListReq = new PassListReq();
    localPassListReq.setPassCategory("TRAVEL");
    localPassListReq.setTimeStatus("PAST");
    localPassListReq.setPageSize(20);
    localPassListReq.setRowSize(this.c.a());
    localPassListReq.setNeedPaging(true);
    return localPassListReq;
  }

  protected final void k()
  {
    super.k();
    aj.a(this, this.mApp, this.a, null);
    this.b.setEnablePull(false);
    this.c.a(true);
    this.c.b(true);
  }

  final void m()
  {
    this.e.setVisibility(0);
    this.f.setText(R.string.alipass_travel_past_list_error);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.TravelPastListActivity
 * JD-Core Version:    0.6.2
 */