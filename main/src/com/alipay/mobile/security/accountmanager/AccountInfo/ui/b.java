package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class b
  implements View.OnClickListener
{
  b(AccountInfoActivity paramAccountInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      AccountInfoActivity.getBundleByComponentName(this.a).getMicroApplicationContext().startApp("20000070", "20000027", null);
      AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000070", "-", "accountManageView", "accountInfoIndex", "accountManage");
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      AccountInfoActivity.d(this.a);
      new StringBuilder("异常").append(localAppLoadException.getMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.b
 * JD-Core Version:    0.6.2
 */