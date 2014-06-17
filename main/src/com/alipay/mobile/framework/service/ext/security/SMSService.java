package com.alipay.mobile.framework.service.ext.security;

import android.content.Context;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class SMSService extends ExternalService
{
  public abstract boolean isCanUseSim();

  public abstract void sendSms(String paramString1, String paramString2, SMSSendResultCallBack paramSMSSendResultCallBack);

  public abstract String serviceProvider(Context paramContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.SMSService
 * JD-Core Version:    0.6.2
 */