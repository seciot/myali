package com.alipay.mobile.about.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.app.ActivityApplication;

final class h
  implements View.OnClickListener
{
  h(AboutMainActivity paramAboutMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.b();
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, AboutMainActivity.b(this.a).getAppId(), "-", "aboutIndex", "checkUpdates");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.h
 * JD-Core Version:    0.6.2
 */