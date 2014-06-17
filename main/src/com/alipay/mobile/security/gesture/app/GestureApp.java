package com.alipay.mobile.security.gesture.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.security.gesture.ui.GestureActivity_;

public class GestureApp extends ActivityApplication
{
  private final String a = "GestureApp";
  private Bundle b;
  private MicroApplicationContext c;

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getParams()
  {
    return this.b;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.b = paramBundle;
    this.c = getMicroApplicationContext();
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    Intent localIntent;
    if (paramBundle != null)
    {
      localIntent = new Intent(AlipayApplication.getInstance(), GestureActivity_.class);
      localIntent.putExtras(paramBundle);
    }
    try
    {
      this.c.startActivity(this, localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onStart()
  {
    Intent localIntent = new Intent(AlipayApplication.getInstance(), GestureActivity_.class);
    localIntent.putExtras(this.b);
    try
    {
      this.c.startActivity(this, localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onStop()
  {
  }

  public void setParams(Bundle paramBundle)
  {
    this.b = paramBundle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.app.GestureApp
 * JD-Core Version:    0.6.2
 */