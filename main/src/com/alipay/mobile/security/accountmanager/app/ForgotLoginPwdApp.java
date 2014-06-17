package com.alipay.mobile.security.accountmanager.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.accountmanager.ui.ForgotLoginPwdActivity_;

public class ForgotLoginPwdApp extends ActivityApplication
{
  private Bundle a;

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getParams()
  {
    return this.a;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.a = paramBundle;
    onStart();
  }

  protected void onStart()
  {
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    Intent localIntent = new Intent(AlipayApplication.getInstance(), ForgotLoginPwdActivity_.class);
    if (this.a != null)
      localIntent.putExtras(this.a);
    localMicroApplicationContext.startActivity(this, localIntent);
  }

  protected void onStop()
  {
  }

  public void setParams(Bundle paramBundle)
  {
    this.a = paramBundle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.app.ForgotLoginPwdApp
 * JD-Core Version:    0.6.2
 */