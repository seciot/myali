package com.alipay.mobile.alipassapp.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.a;
import com.alipay.mobile.alipassapp.ui.common.aj;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.framework.AlipayApplication;

public class TravelCurrentListActivity extends AlipassListActivity
{
  private View g;

  protected final void a(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramAdapterView, paramView, paramInt, paramLong);
    Object localObject = paramAdapterView.getItemAtPosition(paramInt);
    if ((localObject != null) && ((localObject instanceof BaseAlipassInfoItem.AlipassInfoItem)))
    {
      BaseAlipassInfoItem.AlipassInfoItem localAlipassInfoItem = (BaseAlipassInfoItem.AlipassInfoItem)localObject;
      AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = localAlipassInfoItem.getPassId();
      arrayOfString[1] = localAlipassInfoItem.getPartnerID();
      AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, "", "", "20000021", "", "travelItineraryDetails", "myTravelList", "seeTravelItinerary", "", "", "", arrayOfString);
    }
  }

  protected final void a(a parama)
  {
    if ((parama != null) && (parama.e != null) && ((parama.e instanceof RpcException)) && (!parama.d) && (((RpcException)parama.e).getCode() == 2))
      a(R.string.alipass_travel_nonetwork_toast);
  }

  protected final View b()
  {
    if (this.g == null)
    {
      this.g = LayoutInflater.from(this).inflate(R.layout.sub_footview_load_past_pass, null);
      APButton localAPButton = (APButton)this.g.findViewById(R.id.btn_load_past_pass_list);
      localAPButton.setOnClickListener(new fh(this));
      localAPButton.setText(getResources().getString(R.string.alipass_goto_travel_web));
    }
    return this.g;
  }

  protected final boolean d()
  {
    return true;
  }

  protected final boolean g()
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
    localPassListReq.setTimeStatus("CURRENT");
    localPassListReq.setPageSize(20);
    localPassListReq.setRowSize(0);
    localPassListReq.setNeedPaging(false);
    return localPassListReq;
  }

  protected final void k()
  {
    super.k();
    aj.a(this, this.mApp, this.a, null);
    this.b.setEnablePull(true);
    this.c.b();
    this.c.a(false);
    this.c.b(true);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.TravelCurrentListActivity
 * JD-Core Version:    0.6.2
 */