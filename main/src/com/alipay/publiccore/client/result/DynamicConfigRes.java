package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.model.DynamicConfig;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public class DynamicConfigRes extends PublicResult
{
  public DynamicConfig dynamicConfig;

  public DynamicConfig getDynamicConfig()
  {
    return this.dynamicConfig;
  }

  public void setDynamicConfig(DynamicConfig paramDynamicConfig)
  {
    this.dynamicConfig = paramDynamicConfig;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.DynamicConfigRes
 * JD-Core Version:    0.6.2
 */