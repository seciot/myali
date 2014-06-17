package com.alipay.mobile.framework.service;

import android.os.Bundle;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class WebAppService extends ExternalService
{
  public abstract MicroApplication createWebApp(String paramString1, String paramString2, Bundle paramBundle);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.WebAppService
 * JD-Core Version:    0.6.2
 */