package com.alipay.mobile.base.config;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class SwitchConfigUtils
{
  private static final ConfigService a = (ConfigService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName());

  public static String getConfigValue(String paramString)
  {
    return a.getConfig(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.config.SwitchConfigUtils
 * JD-Core Version:    0.6.2
 */