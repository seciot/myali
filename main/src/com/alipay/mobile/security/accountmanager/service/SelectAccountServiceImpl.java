package com.alipay.mobile.security.accountmanager.service;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.SelectAccountCallBack;
import com.alipay.mobile.framework.service.ext.security.SelectAccountService;

public class SelectAccountServiceImpl extends SelectAccountService
{
  SelectAccountCallBack a;

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void result(String paramString)
  {
    this.a.a();
  }

  public void showSelectAccount(SelectAccountCallBack paramSelectAccountCallBack)
  {
    this.a = paramSelectAccountCallBack;
    try
    {
      getMicroApplicationContext().startApp(SelectAccountServiceImpl.class.getName(), "20000018", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.SelectAccountServiceImpl
 * JD-Core Version:    0.6.2
 */