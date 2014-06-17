package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.IdCardVerifyActivity_;
import com.alipay.android.widget.security.ui.SecurityWebviewActivity_;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class IndependentPwdApp extends ActivityApplication
{
  private Bundle a;

  private void a()
  {
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    Intent localIntent1 = new Intent(AlipayApplication.getInstance(), IdCardVerifyActivity_.class);
    if (this.a != null)
    {
      if (this.a.getBoolean("IS_RESET"))
      {
        ConfigService localConfigService = (ConfigService)localMicroApplicationContext.findServiceByInterface(ConfigService.class.getName());
        if ((localConfigService.getConfig("Security_ResetPW") != null) && ("YES".equals(localConfigService.getConfig("Security_ResetPW"))));
        for (int i = 1; i != 0; i = 0)
        {
          String str = this.a.getString("fromWhich");
          Intent localIntent2 = new Intent();
          localIntent2.setClass(getMicroApplicationContext().getApplicationContext(), SecurityWebviewActivity_.class);
          localIntent2.putExtra("URL", ReadSettingServerUrl.getPoliceCenterUrl(AlipayApplication.getInstance()) + "?serviceId=wallet_0001&context=restSixSimplePwd&safePayType=" + str);
          getMicroApplicationContext().startActivity(this, localIntent2);
          return;
        }
      }
      localIntent1.putExtras(this.a);
    }
    localMicroApplicationContext.startActivity(this, localIntent1);
  }

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getParams()
  {
    return this.a;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.a = paramBundle;
    a();
  }

  protected void onStart()
  {
    a();
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.IndependentPwdApp
 * JD-Core Version:    0.6.2
 */