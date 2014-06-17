package com.alipay.mobile.security.devicemanage.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.devicemanage.ui.DeviceManageActivity_;

public class DeviceManageApp extends ActivityApplication
{
  private void a()
  {
    Intent localIntent = new Intent(AlipayApplication.getInstance(), DeviceManageActivity_.class);
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
 * Qualified Name:     com.alipay.mobile.security.devicemanage.app.DeviceManageApp
 * JD-Core Version:    0.6.2
 */