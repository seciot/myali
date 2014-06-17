package com.alipay.mobile.security.accountmanager.service;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.BindPhoneCallBack;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;

public class BindPhoneServiceImpl extends BindPhoneService
{
  private BindPhoneCallBack a;

  public void bindPhone(BindPhoneCallBack paramBindPhoneCallBack)
  {
    this.a = paramBindPhoneCallBack;
    try
    {
      getMicroApplicationContext().startApp(null, "20000010", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      notifyCallback(false);
    }
  }

  public void notifyCallback(boolean paramBoolean)
  {
    if (this.a != null)
      this.a.BindPhoneResult(paramBoolean);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void setmCallBack(BindPhoneCallBack paramBindPhoneCallBack)
  {
    this.a = paramBindPhoneCallBack;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.BindPhoneServiceImpl
 * JD-Core Version:    0.6.2
 */