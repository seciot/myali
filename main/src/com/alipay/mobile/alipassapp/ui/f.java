package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.ui.common.ai;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;

final class f
  implements View.OnClickListener
{
  f(AlipassDetailActivity paramAlipassDetailActivity)
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
      AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, "", "", "20000030", "", "", "couponDetails", "del", "", "", "", arrayOfString);
    }
    ai.a(this.a, new g(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.f
 * JD-Core Version:    0.6.2
 */