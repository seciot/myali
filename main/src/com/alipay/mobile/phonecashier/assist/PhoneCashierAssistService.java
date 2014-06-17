package com.alipay.mobile.phonecashier.assist;

import android.app.Activity;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class PhoneCashierAssistService extends ExternalService
{
  public abstract String getUserInfoSessionId();

  public abstract boolean isQihooGuardOpened();

  public abstract boolean isQihooInstalled();

  public abstract void readBankCard(Object paramObject, Activity paramActivity);

  public abstract String readQihooSMS();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.assist.PhoneCashierAssistService
 * JD-Core Version:    0.6.2
 */