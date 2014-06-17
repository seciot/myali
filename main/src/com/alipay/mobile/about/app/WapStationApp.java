package com.alipay.mobile.about.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.browser.HtmlActivity;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.h5container.service.H5Service;
import java.util.ArrayList;

public class WapStationApp extends ActivityApplication
{
  private Bundle a;

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    onCreate(paramBundle);
    onStart();
  }

  protected void onStart()
  {
    if (this.a != null)
    {
      if ("H5".equalsIgnoreCase(this.a.getString("type")))
      {
        H5Service localH5Service = (H5Service)getMicroApplicationContext().getExtServiceByInterface(H5Service.class.getName());
        ArrayList localArrayList = new ArrayList();
        this.a.putString("u", this.a.getString("url"));
        this.a.putString("dt", this.a.getString("title"));
        if (!this.a.containsKey("st"))
          this.a.putString("st", "YES");
        if (!this.a.containsKey("sb"))
          this.a.putString("sb", "NO");
        localH5Service.startWebActivity(this, this.a, localArrayList, null);
      }
    }
    else
      return;
    String str1 = this.a.getString("title");
    String str2 = this.a.getString("url");
    Intent localIntent = new Intent();
    localIntent.putExtra("url", str2);
    localIntent.putExtra("title", str1);
    localIntent.setClass(AlipayApplication.getInstance(), HtmlActivity.class);
    getMicroApplicationContext().startExtActivity(this, localIntent);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.app.WapStationApp
 * JD-Core Version:    0.6.2
 */