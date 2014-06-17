package com.alipay.mobile.security.authcenter.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.authcenter.ui.ExternalLoginActivity_;

public class ExternalLoginApp extends ActivityApplication
{
  private Bundle a = null;
  private MicroApplicationContext b;

  private void a()
  {
    Intent localIntent = new Intent();
    if (this.a != null)
      localIntent.putExtras(this.a);
    localIntent.setClass(this.b.getApplicationContext(), ExternalLoginActivity_.class);
    localIntent.addFlags(536870912);
    this.b.startActivity(this, localIntent);
  }

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
 * Qualified Name:     com.alipay.mobile.security.authcenter.app.ExternalLoginApp
 * JD-Core Version:    0.6.2
 */