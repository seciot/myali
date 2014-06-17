package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.ui.AlipassRemindActivity_;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class ak
  implements View.OnClickListener
{
  ak(Bundle paramBundle, Context paramContext, ActivityApplication paramActivityApplication)
  {
  }

  public final void onClick(View paramView)
  {
    if ("TRAVEL".equalsIgnoreCase(this.a.getString("b")))
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", "", "travelItineraryDetails", "setRemind");
    Intent localIntent = new Intent(this.b, AlipassRemindActivity_.class);
    localIntent.putExtras(this.a);
    this.c.getMicroApplicationContext().startActivity(this.c, localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ak
 * JD-Core Version:    0.6.2
 */