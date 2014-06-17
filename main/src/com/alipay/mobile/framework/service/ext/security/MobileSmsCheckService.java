package com.alipay.mobile.framework.service.ext.security;

import android.app.Activity;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class MobileSmsCheckService extends ExternalService
{
  public abstract void autoReadSmsCheckCode(AutoReadSmsCheckCodeCallBack paramAutoReadSmsCheckCodeCallBack);

  public abstract void downSms(String paramString, Activity paramActivity);

  public abstract void notifyCallBack(int paramInt, String paramString);

  public abstract void sendBigShowSmsCheck(String paramString1, String paramString2, SmsCheckCallBack paramSmsCheckCallBack);

  public abstract void sendCommonSmsCheck(String paramString1, String paramString2, SmsCheckCallBack paramSmsCheckCallBack);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.MobileSmsCheckService
 * JD-Core Version:    0.6.2
 */