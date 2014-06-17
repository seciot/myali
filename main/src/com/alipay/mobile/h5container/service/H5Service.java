package com.alipay.mobile.h5container.service;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.h5container.extenal.IWebPayBuriedPoint;
import com.alipay.mobile.h5container.extenal.PaymentProcessorListener;
import java.util.List;

public abstract class H5Service extends ExternalService
{
  public abstract boolean isPaymentUrlLoading(String paramString);

  public abstract void startH5App(String paramString, Bundle paramBundle);

  public abstract boolean startPaymentByUrl(String paramString1, PaymentProcessorListener paramPaymentProcessorListener, String paramString2, String paramString3, MicroApplicationContext paramMicroApplicationContext, IWebPayBuriedPoint paramIWebPayBuriedPoint);

  public abstract void startWebActivity(MicroApplication paramMicroApplication, Bundle paramBundle);

  public abstract void startWebActivity(MicroApplication paramMicroApplication, Bundle paramBundle, IWebPayBuriedPoint paramIWebPayBuriedPoint);

  public abstract void startWebActivity(MicroApplication paramMicroApplication, Bundle paramBundle, List<Object> paramList);

  public abstract void startWebActivity(MicroApplication paramMicroApplication, Bundle paramBundle, List<Object> paramList, IWebPayBuriedPoint paramIWebPayBuriedPoint);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.h5container.service.H5Service
 * JD-Core Version:    0.6.2
 */