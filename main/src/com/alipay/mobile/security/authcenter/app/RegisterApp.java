package com.alipay.mobile.security.authcenter.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.authcenter.ui.RegisterNewActivity_;

public class RegisterApp extends ActivityApplication
{
  private Bundle a;

  private void a(Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      getMicroApplicationContext().startActivity(this, RegisterNewActivity_.class.getName());
      return;
    }
    Intent localIntent = new Intent(AlipayApplication.getInstance(), RegisterNewActivity_.class);
    localIntent.putExtras(paramBundle);
    getMicroApplicationContext().startActivity(this, localIntent);
  }

  public String getEntryClassName()
  {
    return null;
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
    a(paramBundle);
  }

  protected void onStart()
  {
    a(this.a);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.app.RegisterApp
 * JD-Core Version:    0.6.2
 */