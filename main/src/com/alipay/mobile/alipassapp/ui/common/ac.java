package com.alipay.mobile.alipassapp.ui.common;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationApp;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationApp.MessageApp;
import com.alipay.mobile.alipassapp.ui.app.AlipassApp;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;

final class ac
  implements View.OnClickListener
{
  AlipassInfo.Operation.OperationApp a;
  a b;

  public ac(AlipassOperationViewPager paramAlipassOperationViewPager, AlipassInfo.Operation.OperationApp paramOperationApp)
  {
    this.a = paramOperationApp;
    this.b = new a(AlipassOperationViewPager.access$900(paramAlipassOperationViewPager), "app", this.a.getMessage().getAndroid_appid(), this.a.getMessage().getAndroid_launch(), this.a.getMessage().getAndroid_download(), AlipassOperationViewPager.access$1100(paramAlipassOperationViewPager));
  }

  public final void onClick(View paramView)
  {
    if ((AlipassOperationViewPager.access$1100(this.c) instanceof AlipassApp))
    {
      Bundle localBundle = ((AlipassApp)AlipassOperationViewPager.access$1100(this.c)).getAppBundle();
      if ((localBundle != null) && ("t".equalsIgnoreCase(localBundle.getString("b"))))
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", "", "travelItineraryDetails", "seeMore");
    }
    this.b.onClick(paramView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ac
 * JD-Core Version:    0.6.2
 */