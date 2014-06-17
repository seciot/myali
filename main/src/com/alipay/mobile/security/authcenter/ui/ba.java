package com.alipay.mobile.security.authcenter.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class ba
  implements View.OnClickListener
{
  ba(TaobaoBindingAlipayUserActivity paramTaobaoBindingAlipayUserActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "security", "-", "-", "alipayBindingView", "registerButton");
    try
    {
      TaobaoBindingAlipayUserActivity.b(this.a).getMicroApplicationContext().startApp(TaobaoBindingAlipayUserActivity.a(this.a).getAppId(), "20000009", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ba
 * JD-Core Version:    0.6.2
 */