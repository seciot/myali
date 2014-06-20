package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class h
  implements View.OnClickListener
{
  h(AlipassDetailActivity paramAlipassDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipassDetailActivity.o(this.a);
    if (StringUtils.equalsIgnoreCase(AlipassDetailActivity.d(this.a), "COUPON"))
    {
      AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = AlipassDetailActivity.removeBundle(this.a);
      arrayOfString[1] = AlipassDetailActivity.f(this.a);
      AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, "", "", "20000030", "", "", "couponDetails", "remind", "", "", "", arrayOfString);
    }
    while (true)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("p", AlipassDetailActivity.removeBundle(this.a));
      localBundle.putString("pass_enddate", AlipassDetailActivity.g(this.a).getPassBaseInfo().getEndDate());
      localBundle.putString("b", AlipassDetailActivity.d(this.a));
      Intent localIntent = new Intent(this.a, AlipassRemindActivity_.class);
      localIntent.putExtras(localBundle);
      AlipassDetailActivity.s(this.a).getMicroApplicationContext().startActivity(AlipassDetailActivity.r(this.a), localIntent);
      return;
      if (StringUtils.equalsIgnoreCase(AlipassDetailActivity.d(this.a), "TRAVEL"))
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", "", "travelItineraryDetails", "setRemind");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.h
 * JD-Core Version:    0.6.2
 */