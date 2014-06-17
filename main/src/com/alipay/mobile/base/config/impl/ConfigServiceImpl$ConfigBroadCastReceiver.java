package com.alipay.mobile.base.config.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class ConfigServiceImpl$ConfigBroadCastReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.alipay.mobile.framework.ACTIVITY_RESUME".equals(paramIntent.getAction()))
    {
      long l = System.currentTimeMillis() - ConfigServiceImpl.loadTime;
      new StringBuilder("receive AliveBroadCastReceiver time:").append(l).toString();
      if ((ConfigServiceImpl.loadTime != 0L) && (l > 3600000L))
        ((ConfigService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName())).loadConfig();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.config.impl.ConfigServiceImpl.ConfigBroadCastReceiver
 * JD-Core Version:    0.6.2
 */