package com.alipay.mobile.security.accountmanager.app;

import android.os.Bundle;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.accountmanager.a.d;

public class TransferDataInfoApp extends ActivityApplication
{
  private Bundle a;

  private void a()
  {
    new d().a(this.a);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.app.TransferDataInfoApp
 * JD-Core Version:    0.6.2
 */