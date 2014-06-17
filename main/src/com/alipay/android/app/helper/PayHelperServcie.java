package com.alipay.android.app.helper;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class PayHelperServcie extends ExternalService
{
  public abstract void createLiveConnection();

  public abstract String getIMEI();

  public abstract String getIMSI();

  public abstract String getPaySysInfo();

  public abstract String getTIDValue();

  public abstract String getVirtualImei();

  public abstract String getVirtualImsi();

  public abstract boolean isExistMsp();

  public abstract Tid loadLocalTid();

  public abstract Tid loadOrCreateTID();

  public abstract boolean resetTID();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.PayHelperServcie
 * JD-Core Version:    0.6.2
 */