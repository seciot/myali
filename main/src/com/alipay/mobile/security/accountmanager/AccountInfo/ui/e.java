package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class e
  implements View.OnClickListener
{
  e(AccountInfoActivity paramAccountInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      if (!AccountInfoActivity.h(this.a))
      {
        this.a.a("com.alipay.security.namecertified");
        AccountInfoActivity.i(this.a);
        AccountInfoActivity.d(this.a);
      }
      AccountInfoActivity.k(this.a).getMicroApplicationContext().startApp(AccountInfoActivity.j(this.a).getAppId(), "20000038", null);
      AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000070", "-", "realNameCheckView", "accountInfoIndex", "checkUp");
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      AccountInfoActivity.d(this.a);
      new StringBuilder("{[info=doNameCertified],[msg=").append(localAppLoadException.getMessage()).append("]}").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.e
 * JD-Core Version:    0.6.2
 */