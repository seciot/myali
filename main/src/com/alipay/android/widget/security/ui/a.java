package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.more.R.string;

final class a
  implements View.OnClickListener
{
  a(SecurityWidgetGroupAcitivity paramSecurityWidgetGroupAcitivity)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000057", "-", "-", "securityHome", "securityQuitButton");
    SecurityWidgetGroupAcitivity.b(this.a).getMicroApplicationContext().Alert(null, SecurityWidgetGroupAcitivity.v(this.a, R.string.BundlesManagerImpl), SecurityWidgetGroupAcitivity.v(this.a, R.string.BundlesManager), new b(this), SecurityWidgetGroupAcitivity.v(this.a, R.string.AppBundle), new c(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.a
 * JD-Core Version:    0.6.2
 */