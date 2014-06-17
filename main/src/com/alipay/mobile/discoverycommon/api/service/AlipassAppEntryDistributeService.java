package com.alipay.mobile.discoverycommon.api.service;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class AlipassAppEntryDistributeService extends ExternalService
{
  public abstract void distributeApp(String paramString1, String paramString2, Bundle paramBundle, MicroApplicationContext paramMicroApplicationContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverycommon.api.service.AlipassAppEntryDistributeService
 * JD-Core Version:    0.6.2
 */