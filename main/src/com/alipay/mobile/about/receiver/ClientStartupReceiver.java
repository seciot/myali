package com.alipay.mobile.about.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.about.service.FloatWindowService;
import com.alipay.mobile.base.config.ChannelConfig;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.googlecode.androidannotations.annotations.EReceiver;

@EReceiver
public class ClientStartupReceiver extends BroadcastReceiver
{
  private static String a = ClientStartupReceiver.class.getSimpleName();
  private ChannelConfig b;
  private ConfigService c;

  private boolean a()
  {
    this.b = ((ChannelConfig)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ChannelConfig.class.getName()));
    return (this.b != null) && (this.b.getConfig("openSdkMonitor") != null) && ("true".equals(this.b.getConfig("openSdkMonitor")));
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.alipay.mobile.client.STARTED".equals(paramIntent.getAction()))
    {
      this.b = ((ChannelConfig)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ChannelConfig.class.getName()));
      if ((this.b != null) && (this.b.getConfig("hasFeedback") != null) && ("true".equals(this.b.getConfig("hasFeedback"))))
      {
        i = 1;
        if (i != 0)
          paramContext.startService(new Intent(paramContext, FloatWindowService.class));
        if (!a())
          break label120;
        com.alipay.mobile.common.logagent.AlipayLogAgent.actionSwitch = true;
      }
    }
    label120: 
    while (!"com.alipay.security.login".equals(paramIntent.getAction()))
    {
      while (true)
      {
        return;
        int i = 0;
      }
      com.alipay.mobile.common.logagent.AlipayLogAgent.actionSwitch = false;
      return;
    }
    String str1 = paramIntent.getStringExtra("userId");
    if (str1 != null)
    {
      String str2 = str1 + "LOG_SWITCH";
      this.c = ((ConfigService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName()));
      String str3 = this.c.getConfig(str2);
      new StringBuilder("key: ").append(str2).append(" value: ").append(str3).toString();
      if ("true".equals(str3))
      {
        com.alipay.mobile.common.logagent.AlipayLogAgent.actionSwitch = true;
        return;
      }
      if (a())
      {
        com.alipay.mobile.common.logagent.AlipayLogAgent.actionSwitch = true;
        return;
      }
      com.alipay.mobile.common.logagent.AlipayLogAgent.actionSwitch = false;
      return;
    }
    if (a())
    {
      com.alipay.mobile.common.logagent.AlipayLogAgent.actionSwitch = true;
      return;
    }
    com.alipay.mobile.common.logagent.AlipayLogAgent.actionSwitch = false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.receiver.ClientStartupReceiver
 * JD-Core Version:    0.6.2
 */