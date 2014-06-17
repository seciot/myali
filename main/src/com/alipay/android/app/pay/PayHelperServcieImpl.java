package com.alipay.android.app.pay;

import android.os.Bundle;
import com.alipay.android.app.helper.PayHelper;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.android.app.helper.Tid;
import com.alipay.android.app.helper.TidHelper;
import com.alipay.android.app.util.LogUtils;
import com.alipay.mobile.framework.AlipayApplication;

public class PayHelperServcieImpl extends PayHelperServcie
{
  public void createLiveConnection()
  {
    PayHelper.a(AlipayApplication.getInstance()).a();
  }

  public String getIMEI()
  {
    return TidHelper.d(AlipayApplication.getInstance());
  }

  public String getIMSI()
  {
    return TidHelper.e(AlipayApplication.getInstance());
  }

  public String getPaySysInfo()
  {
    return PayHelper.a(AlipayApplication.getInstance()).b();
  }

  public String getTIDValue()
  {
    String str = TidHelper.b(AlipayApplication.getInstance());
    new StringBuilder("getTIDValue return ").append(str).toString();
    LogUtils.c();
    return str;
  }

  public String getVirtualImei()
  {
    AlipayApplication.getInstance();
    return TidHelper.b();
  }

  public String getVirtualImsi()
  {
    AlipayApplication.getInstance();
    return TidHelper.c();
  }

  public boolean isExistMsp()
  {
    return TidHelper.f(AlipayApplication.getInstance());
  }

  public Tid loadLocalTid()
  {
    return TidHelper.a();
  }

  public Tid loadOrCreateTID()
  {
    Tid localTid = TidHelper.a(AlipayApplication.getInstance());
    StringBuilder localStringBuilder = new StringBuilder("loadOrCreateTID return ");
    if (localTid == null);
    for (String str = null; ; str = localTid.getTid())
    {
      localStringBuilder.append(str).toString();
      LogUtils.c();
      return localTid;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public boolean resetTID()
  {
    return TidHelper.c(AlipayApplication.getInstance());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.PayHelperServcieImpl
 * JD-Core Version:    0.6.2
 */