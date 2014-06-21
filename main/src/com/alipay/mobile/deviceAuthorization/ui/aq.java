package com.alipay.mobile.deviceAuthorization.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class aq
  implements View.OnClickListener
{
  aq(ScanErrorActivity paramScanErrorActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
      localMicroApplicationContext.startApp("20000055", "10000007", null);
      localMicroApplicationContext.finishApp(ScanErrorActivity.getBundle(this.a).getAppId(), ScanErrorActivity.b(this.a).getAppId(), null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getMessage();
      this.a.toast("启动应用失败：" + localAppLoadException.getLocalizedMessage(), 0);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.aq
 * JD-Core Version:    0.6.2
 */