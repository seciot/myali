package com.alipay.mobile.security.accountmanager.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.accountmanager.ui.AccountManagerActivity_;

public class AccountManagerApp extends ActivityApplication
{
  Bundle a = null;
  MicroApplicationContext b;

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = paramBundle;
    this.b = getMicroApplicationContext();
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.a = paramBundle;
    Intent localIntent = new Intent();
    if (this.a != null)
      localIntent.putExtras(this.a);
    localIntent.setClass(this.b.getApplicationContext(), AccountManagerActivity_.class);
    this.b.startActivity(this, localIntent);
  }

  protected void onStart()
  {
    Intent localIntent = new Intent();
    if (this.a != null)
      localIntent.putExtras(this.a);
    localIntent.setClass(this.b.getApplicationContext(), AccountManagerActivity_.class);
    this.b.startActivity(this, localIntent);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.app.AccountManagerApp
 * JD-Core Version:    0.6.2
 */