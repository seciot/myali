package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.RobotXiaoBaoActivity;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class RobotXiaoBaoApp extends ActivityApplication
{
  private final String a = "url";
  private final String b = "scode";

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    MicroApplicationContext localMicroApplicationContext = getMicroApplicationContext();
    if (paramBundle != null)
    {
      String str1 = paramBundle.getString("url");
      if ((str1 != null) && (str1.length() > 0))
      {
        localMicroApplicationContext.startActivity(this, new Intent(AlipayApplication.getInstance(), RobotXiaoBaoActivity.class).putExtra("url", str1));
        return;
      }
      String str2 = paramBundle.getString("scode");
      if ((str2 != null) && (str2.length() > 0))
      {
        localMicroApplicationContext.startActivity(this, new Intent(AlipayApplication.getInstance(), RobotXiaoBaoActivity.class).putExtra("scode", str2));
        return;
      }
      localMicroApplicationContext.startActivity(this, new Intent(AlipayApplication.getInstance(), RobotXiaoBaoActivity.class));
      return;
    }
    localMicroApplicationContext.startActivity(this, new Intent(AlipayApplication.getInstance(), RobotXiaoBaoActivity.class));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.RobotXiaoBaoApp
 * JD-Core Version:    0.6.2
 */