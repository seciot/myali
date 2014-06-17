package com.alipay.android.widget.security.app;

import android.os.Bundle;
import com.alipay.android.widget.security.ui.SecurityOperateRecordsActivity_;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

public class SecurityOperateRecordsApp extends ActivityApplication
{
  public String getEntryClassName()
  {
    return SecurityOperateRecordsActivity_.class.getName();
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    try
    {
      start();
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("应用启动失败：").append(localAppLoadException).toString();
    }
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.SecurityOperateRecordsApp
 * JD-Core Version:    0.6.2
 */