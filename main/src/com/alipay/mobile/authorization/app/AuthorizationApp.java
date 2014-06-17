package com.alipay.mobile.authorization.app;

import android.os.Bundle;
import com.alipay.mobile.authorization.ui.AuthorizationActivity;
import com.alipay.mobile.framework.app.ActivityApplication;

public class AuthorizationApp extends ActivityApplication
{
  private Bundle startParams = null;

  public String getEntryClassName()
  {
    return AuthorizationActivity.class.getName();
  }

  public Bundle getStartParams()
  {
    return this.startParams;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.startParams = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }

  public void setStartParams(Bundle paramBundle)
  {
    this.startParams = paramBundle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.app.AuthorizationApp
 * JD-Core Version:    0.6.2
 */