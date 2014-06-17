package com.alipay.mobile.framework.service.ext.phonecashier;

import com.alipay.android.app.helper.Tid;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class PhoneCashierServcie extends ExternalService
{
  public abstract void boot(PhoneCashierOrder paramPhoneCashierOrder, PhoneCashierCallback paramPhoneCashierCallback);

  public abstract void boot(String paramString, PhoneCashierCallback paramPhoneCashierCallback);

  public abstract void bootToCertification(PhoneCashierOrder paramPhoneCashierOrder, PhoneCashierCallback paramPhoneCashierCallback);

  public abstract void checkAndUpdate(PhoneCashierCallback paramPhoneCashierCallback);

  public abstract void createLiveConnection();

  public abstract Tid loadLocalTid();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie
 * JD-Core Version:    0.6.2
 */