package com.alipay.android.phone.home.app;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

public class AlipayHomeApplication extends ActivityApplication
{
  private MicroApplicationContext microContext;
  private Bundle params = null;

  private void handleJumpRequest(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      String str = paramBundle.getString("actionType");
      if ((str == null) || (!str.equalsIgnoreCase("gotoasset")));
    }
    try
    {
      this.microContext.startApp("20000002", "20000019", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.microContext = getMicroApplicationContext();
    this.params = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    handleJumpRequest(paramBundle);
  }

  protected void onStart()
  {
    handleJumpRequest(this.params);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.app.AlipayHomeApplication
 * JD-Core Version:    0.6.2
 */