package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.QihooGuardActivity_;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class SecuritySmsGuardApp extends ActivityApplication
{
  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    onStart();
  }

  protected void onStart()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(getMicroApplicationContext().getApplicationContext(), QihooGuardActivity_.class);
    getMicroApplicationContext().startActivity(this, localIntent);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.SecuritySmsGuardApp
 * JD-Core Version:    0.6.2
 */