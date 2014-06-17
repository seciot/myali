package com.alipay.mobile.base.config;

import com.alipay.mobile.framework.service.CommonService;

public abstract class ConfigService extends CommonService
{
  public abstract String getConfig(String paramString);

  public abstract void loadConfig();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.config.ConfigService
 * JD-Core Version:    0.6.2
 */