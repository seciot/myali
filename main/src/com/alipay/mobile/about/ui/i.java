package com.alipay.mobile.about.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.app.ActivityApplication;

final class i
  implements View.OnClickListener
{
  i(AboutMainActivity paramAboutMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getInitLevel();
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, AboutMainActivity.getBundleByComponentName(this.a).getAppId(), "-", "aboutIndex", "feedback");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.i
 * JD-Core Version:    0.6.2
 */