package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.SecurityExaminationActivity_;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class SecurityGradeApp extends ActivityApplication
{
  MicroApplicationContext a;
  private Bundle b;

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
    this.a = getMicroApplicationContext();
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.b = paramBundle;
    Intent localIntent = new Intent();
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    localIntent.setClass(this.a.getApplicationContext(), SecurityExaminationActivity_.class);
    this.a.startActivity(this, localIntent);
  }

  protected void onStart()
  {
    Intent localIntent = new Intent();
    if (this.b != null)
      localIntent.putExtras(this.b);
    localIntent.setClass(this.a.getApplicationContext(), SecurityExaminationActivity_.class);
    this.a.startActivity(this, localIntent);
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
 * Qualified Name:     com.alipay.android.widget.security.app.SecurityGradeApp
 * JD-Core Version:    0.6.2
 */