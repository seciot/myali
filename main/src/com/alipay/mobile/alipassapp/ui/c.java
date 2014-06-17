package com.alipay.mobile.alipassapp.ui;

import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APPopupWindow;
import com.alipay.mobile.framework.AlipayApplication;

final class c
  implements View.OnClickListener
{
  c(AlipassDetailActivity paramAlipassDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (StringUtils.equalsIgnoreCase(AlipassDetailActivity.d(this.a), "COUPON"))
    {
      AlipayApplication localAlipayApplication2 = AlipayApplication.getInstance();
      BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.CLICKED;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = AlipassDetailActivity.e(this.a);
      arrayOfString2[1] = AlipassDetailActivity.f(this.a);
      AlipayLogAgent.writeLog(localAlipayApplication2, localBehaviourIdEnum2, "", "", "20000030", "", "", "couponDetails", "operate", "", "", "", arrayOfString2);
    }
    while ((AlipassDetailActivity.g(this.a) == null) || (AlipassDetailActivity.h(this.a) == null))
    {
      return;
      if (StringUtils.equalsIgnoreCase(AlipassDetailActivity.d(this.a), "TRAVEL"))
      {
        AlipayApplication localAlipayApplication1 = AlipayApplication.getInstance();
        BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.CLICKED;
        String[] arrayOfString1 = new String[2];
        arrayOfString1[0] = AlipassDetailActivity.e(this.a);
        arrayOfString1[1] = AlipassDetailActivity.f(this.a);
        AlipayLogAgent.writeLog(localAlipayApplication1, localBehaviourIdEnum1, "", "", "20000021", "", "", "travelItineraryDetails", "operate", "", "", "", arrayOfString1);
      }
    }
    AlipassDetailActivity.a(this.a, null);
    View localView = LayoutInflater.from(this.a).inflate(R.layout.alipass_detail_more_dialog, null);
    AlipassDetailActivity.a(this.a, new APPopupWindow(localView, -2, -2));
    AlipassDetailActivity.i(this.a).setFocusable(true);
    AlipassDetailActivity.i(this.a).setOutsideTouchable(true);
    AlipassDetailActivity.i(this.a).update();
    AlipassDetailActivity.i(this.a).setBackgroundDrawable(new BitmapDrawable());
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(R.id.layout_detail_set);
    if ("1".equals(AlipassDetailActivity.g(this.a).getRemindSupport()))
      localViewGroup.setOnClickListener(AlipassDetailActivity.j(this.a));
    while (true)
    {
      ((ViewGroup)localView.findViewById(R.id.layout_detail_refresh)).setOnClickListener(AlipassDetailActivity.k(this.a));
      ((ViewGroup)localView.findViewById(R.id.layout_detail_del)).setOnClickListener(AlipassDetailActivity.l(this.a));
      AlipassDetailActivity.i(this.a).showAsDropDown(AlipassDetailActivity.h(this.a));
      return;
      localViewGroup.setVisibility(8);
      localView.findViewById(R.id.iv_divide_set).setVisibility(8);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.c
 * JD-Core Version:    0.6.2
 */