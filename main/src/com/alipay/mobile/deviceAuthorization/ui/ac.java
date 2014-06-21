package com.alipay.mobile.deviceAuthorization.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class ac
  implements View.OnClickListener
{
  ac(LoginLogsActivity paramLoginLogsActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      LoginLogsActivity.getBundle(this.a).getMicroApplicationContext().startApp("20000055", "20000011", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.ac
 * JD-Core Version:    0.6.2
 */