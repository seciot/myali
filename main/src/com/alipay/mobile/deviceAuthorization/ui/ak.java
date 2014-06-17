package com.alipay.mobile.deviceAuthorization.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;

final class ak
  implements View.OnClickListener
{
  ak(LoginLogsWelcomeActivity paramLoginLogsWelcomeActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("launchType", "loginLogs");
      AlipayApplication.getInstance().getMicroApplicationContext().startApp("", "20000055", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.ak
 * JD-Core Version:    0.6.2
 */