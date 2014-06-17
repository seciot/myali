package com.alipay.mobile.security.accountmanager.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.accountmanager.AccountInfo.ui.AccountInfoActivity_;

public class AccountInfoApp extends ActivityApplication
{
  private Bundle a;

  private void a()
  {
    Intent localIntent = new Intent();
    if (this.a != null)
      localIntent.putExtras(this.a);
    localIntent.setClass(AlipayApplication.getInstance(), AccountInfoActivity_.class);
    getMicroApplicationContext().startActivity(this, localIntent);
  }

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = paramBundle;
    a();
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.a = paramBundle;
    a();
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.app.AccountInfoApp
 * JD-Core Version:    0.6.2
 */