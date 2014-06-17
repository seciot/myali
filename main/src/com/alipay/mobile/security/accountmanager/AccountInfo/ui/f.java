package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class f
  implements View.OnClickListener
{
  f(AccountInfoActivity paramAccountInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      if (!AccountInfoActivity.l(this.a))
      {
        this.a.a("com.alipay.mobile.android.main.avatar.action.changed");
        AccountInfoActivity.m(this.a);
        AccountInfoActivity.d(this.a);
      }
      AccountInfoActivity.o(this.a).getMicroApplicationContext().startApp(AccountInfoActivity.n(this.a).getAppId(), "20000031", null);
      AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000070", "-", "-", "accountInfoIndex", "setHead");
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      AccountInfoActivity.d(this.a);
      new StringBuilder("{[info=doPortraitSet],[msg=").append(localAppLoadException.getMessage()).append("]}").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.f
 * JD-Core Version:    0.6.2
 */