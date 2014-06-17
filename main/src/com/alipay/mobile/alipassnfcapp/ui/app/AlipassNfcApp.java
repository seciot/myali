package com.alipay.mobile.alipassnfcapp.ui.app;

import android.os.Bundle;
import com.alipay.mobile.alipassnfcapp.ui.AlipassWaveActivity_;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class AlipassNfcApp extends ActivityApplication
{
  private static final String TRUE = "true";
  Bundle params;

  public Bundle getAppBundle()
  {
    return this.params;
  }

  public String getEntryClassName()
  {
    String str = "false";
    if (this.params != null)
      str = this.params.getString("is_verify");
    if ((this.params != null) && ("true".equalsIgnoreCase(str)))
      return AlipassWaveActivity_.class.getName();
    return null;
  }

  public String getParamByName(String paramString)
  {
    if (this.params != null)
      return this.params.getString(paramString);
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.params = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.params = paramBundle;
    getMicroApplicationContext().startActivity(this, getEntryClassName());
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.app.AlipassNfcApp
 * JD-Core Version:    0.6.2
 */