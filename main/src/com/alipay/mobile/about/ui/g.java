package com.alipay.mobile.about.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.app.ActivityApplication;

final class g
  implements View.OnClickListener
{
  g(AboutMainActivity paramAboutMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getFullBundleName();
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, AboutMainActivity.getBundle(this.a).getAppId(), "-", "aboutIndex", "toScore");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.g
 * JD-Core Version:    0.6.2
 */