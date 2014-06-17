package com.alipay.mobile.security.authcenter.androidaccountmanager;

import android.accounts.AccountAuthenticatorActivity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;

public class AuthenticatorActivity extends AccountAuthenticatorActivity
{
  protected boolean a = false;
  private ProgressDialog b = null;
  private Boolean c = Boolean.valueOf(false);
  private final Handler d = new Handler();

  public void onCreate(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.androidaccountmanager.AuthenticatorActivity
 * JD-Core Version:    0.6.2
 */