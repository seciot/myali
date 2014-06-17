package com.alipay.mobile.security.authcenter.app;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.authcenter.ui.login.LoginActivity_;

public class LoginApp extends ActivityApplication
{
  Bundle a = null;
  MicroApplicationContext b;

  private void a()
  {
    Intent localIntent1 = new Intent();
    if (this.a != null)
      localIntent1.putExtras(this.a);
    localIntent1.setClass(this.b.getApplicationContext(), LoginActivity_.class);
    localIntent1.addFlags(536870912);
    this.b.startActivity(this, localIntent1);
    Intent localIntent2 = new Intent();
    localIntent2.setAction("com.alipay.security.startlogin");
    localIntent2.putExtra("data", "state=startLoginApp");
    LocalBroadcastManager.getInstance(this.b.getApplicationContext()).sendBroadcast(localIntent2);
  }

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getmParams()
  {
    return this.a;
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
    a();
  }

  protected void onStart()
  {
    a();
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.app.LoginApp
 * JD-Core Version:    0.6.2
 */