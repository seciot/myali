package com.alipay.android.phone.nfd.wifisdk.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.lang.ref.WeakReference;

public class WifiSdk extends ActivityApplication
{
  private Bundle a;

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    new StringBuilder("onCreate startParams: ").append(paramBundle).toString();
    new StringBuilder("onCreate startParams.wifiParams: ").append(paramBundle.getString("wifiParams")).toString();
    this.a = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    if (paramBundle != null)
      this.a = paramBundle;
    onStart();
  }

  protected void onStart()
  {
    MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
    new StringBuilder("MicroApplicationContext: ").append(localMicroApplicationContext).toString();
    Intent localIntent = new Intent();
    Activity localActivity = (Activity)localMicroApplicationContext.getTopActivity().get();
    new StringBuilder("topActivity").append(localActivity).toString();
    localIntent.setClassName(localActivity, "com.alipay.android.phone.nfd.wifisdk.ui.WifiConnectingActivity_");
    localIntent.putExtras(this.a);
    localMicroApplicationContext.startActivity(this, localIntent);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.app.WifiSdk
 * JD-Core Version:    0.6.2
 */