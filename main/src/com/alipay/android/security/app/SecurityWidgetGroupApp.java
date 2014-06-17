package com.alipay.android.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.SecurityWidgetGroupAcitivity;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class SecurityWidgetGroupApp extends ActivityApplication
{
  private void a()
  {
    Intent localIntent = new Intent(AlipayApplication.getInstance(), SecurityWidgetGroupAcitivity.class);
    getMicroApplicationContext().startActivity(this, localIntent);
  }

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
 * Qualified Name:     com.alipay.android.security.app.SecurityWidgetGroupApp
 * JD-Core Version:    0.6.2
 */