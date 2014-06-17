package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.NFCSettingActivity_;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class NFCSettingApp extends ActivityApplication
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
    getMicroApplicationContext().startActivity(this, new Intent(AlipayApplication.getInstance(), NFCSettingActivity_.class));
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.NFCSettingApp
 * JD-Core Version:    0.6.2
 */