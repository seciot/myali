package com.alipay.mobile.phonecashier.service;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alipay.android.app.helper.Tid;
import com.alipay.android.app.helper.TidHelper;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.phonecashier.assist.PhoneCashierAssistService;
import com.alipay.mobile.phonecashier.service.util.PhoneCashierUtil;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public class PhoneCashierServiceImpl extends PhoneCashierServcie
{
  public static boolean a = false;
  private PhoneCashierTask b;
  private PhoneCashierOrder c = null;
  private String d = null;
  private PhoneCashierCallback e = null;
  private int f = -1;
  private BroadcastReceiver g = new b(this);

  private void a(PhoneCashierOrder paramPhoneCashierOrder, PhoneCashierCallback paramPhoneCashierCallback, String paramString)
  {
    this.c = paramPhoneCashierOrder;
    this.d = paramString;
    this.e = paramPhoneCashierCallback;
  }

  private boolean a()
  {
    if (a)
    {
      if (PhoneCashierUtil.a())
      {
        this.c = null;
        this.d = null;
        this.e = null;
        return false;
      }
      if (this.f == -1)
      {
        this.f = 0;
        String str1 = ((PhoneCashierAssistService)getMicroApplicationContext().getExtServiceByInterface(PhoneCashierAssistService.class.getName())).getUserInfoSessionId();
        if (!TextUtils.isEmpty(str1))
        {
          String str2 = PhoneCashierUtil.a(this.c, this.d, str1);
          PhoneCashierUtil.a(Process.myPid(), str2);
        }
      }
      return false;
    }
    this.b.cancel(true);
    return true;
  }

  public void boot(PhoneCashierOrder paramPhoneCashierOrder, PhoneCashierCallback paramPhoneCashierCallback)
  {
    a(paramPhoneCashierOrder, paramPhoneCashierCallback, "");
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    if ((this.b != null) && (!a()))
      return;
    a = true;
    this.b = new PhoneCashierTask(localMicroApplicationContext, paramPhoneCashierOrder, paramPhoneCashierCallback);
    PhoneCashierTask localPhoneCashierTask = this.b;
    Boolean[] arrayOfBoolean = new Boolean[1];
    arrayOfBoolean[0] = Boolean.valueOf(true);
    localPhoneCashierTask.execute(arrayOfBoolean);
  }

  public void boot(String paramString, PhoneCashierCallback paramPhoneCashierCallback)
  {
    a(null, paramPhoneCashierCallback, paramString);
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    if ((this.b != null) && (!a()))
      return;
    a = true;
    this.b = new PhoneCashierTask(localMicroApplicationContext, paramString, paramPhoneCashierCallback);
    PhoneCashierTask localPhoneCashierTask = this.b;
    Boolean[] arrayOfBoolean = new Boolean[1];
    arrayOfBoolean[0] = Boolean.valueOf(true);
    localPhoneCashierTask.execute(arrayOfBoolean);
  }

  public void bootToCertification(PhoneCashierOrder paramPhoneCashierOrder, PhoneCashierCallback paramPhoneCashierCallback)
  {
    a(paramPhoneCashierOrder, paramPhoneCashierCallback, "");
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    if ((this.b != null) && (!a()))
      return;
    a = true;
    this.b = new PhoneCashierTask(localMicroApplicationContext, paramPhoneCashierOrder, paramPhoneCashierCallback);
    PhoneCashierTask localPhoneCashierTask = this.b;
    Boolean[] arrayOfBoolean = new Boolean[1];
    arrayOfBoolean[0] = Boolean.valueOf(true);
    localPhoneCashierTask.execute(arrayOfBoolean);
  }

  public void checkAndUpdate(PhoneCashierCallback paramPhoneCashierCallback)
  {
    paramPhoneCashierCallback.onPaySuccess(null);
  }

  public void clearLastTask()
  {
    if (this.b != null)
      this.b.cancel(true);
  }

  public void createLiveConnection()
  {
    BackgroundExecutor.execute(new c(this));
  }

  public Tid loadLocalTid()
  {
    return TidHelper.a();
  }

  protected void onCreate(Bundle paramBundle)
  {
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(AlipayApplication.getInstance());
    IntentFilter localIntentFilter = new IntentFilter("com.alipay.android.app.after.remove.current.payTask");
    localLocalBroadcastManager.registerReceiver(this.g, localIntentFilter);
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.service.PhoneCashierServiceImpl
 * JD-Core Version:    0.6.2
 */