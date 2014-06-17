package com.alipay.android.launcher;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.HashMap;
import java.util.Map;

public class TabLauncherApp extends ActivityApplication
{
  public static final String ACTIONTYPE = "actionType";
  private Bundle a;
  private String b = "20000002";
  private Map<String, String> c = new HashMap();

  public TabLauncherApp()
  {
    this.c.put("0", "20000002");
    this.c.put("1", "20000101");
    this.c.put("2", "20000061");
    this.c.put("3", "20000004");
  }

  public String getEntryClassName()
  {
    return null;
  }

  public String getTabId()
  {
    if (TextUtils.isEmpty(this.b))
      return "20000002";
    String str = (String)this.c.get(this.b);
    if (str != null)
    {
      this.b = str;
      return str;
    }
    return this.b;
  }

  public void handlParams(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      this.a = paramBundle;
      String str = paramBundle.getString("actionType");
      if (str != null)
        this.b = str;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    handlParams(paramBundle);
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    handlParams(paramBundle);
    if (this.a != null)
      onStart();
  }

  protected void onStart()
  {
    Bundle localBundle = this.a;
    Uri localUri = null;
    if (localBundle != null)
    {
      String str = this.a.getString("externParams");
      localUri = null;
      if (str != null)
        localUri = Uri.parse(str);
    }
    Intent localIntent = new Intent(AlipayApplication.getInstance(), TabLauncher.class);
    if (localUri != null)
      localIntent.setData(localUri);
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addFlags(67108864);
    localIntent.addFlags(536870912);
    getMicroApplicationContext().startActivity(this, localIntent);
  }

  protected void onStop()
  {
  }

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
    super.restoreState(paramSharedPreferences);
    this.b = paramSharedPreferences.getString("tablauncher.tabid", "20000002");
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
    super.saveState(paramEditor);
    paramEditor.putString("tablauncher.tabid", this.b);
  }

  public void setTabId(String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.TabLauncherApp
 * JD-Core Version:    0.6.2
 */