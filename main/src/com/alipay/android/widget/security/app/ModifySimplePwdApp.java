package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.ModifySimplePwdActivity_;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class ModifySimplePwdApp extends ActivityApplication
{
  private Bundle a;

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
    this.a = paramBundle;
    onStart();
  }

  protected void onStart()
  {
    getMicroApplicationContext().startActivity(this, new Intent(AlipayApplication.getInstance(), ModifySimplePwdActivity_.class));
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.ModifySimplePwdApp
 * JD-Core Version:    0.6.2
 */