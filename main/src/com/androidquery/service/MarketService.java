package com.androidquery.service;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.Html;
import com.androidquery.AQuery;
import com.androidquery.callback.AjaxCallback;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.util.AQUtility;
import java.util.Locale;
import org.json.JSONObject;

public class MarketService
{
  public static final int MAJOR = 2;
  public static final int MINOR = 1;
  public static final int REVISION;
  private static ApplicationInfo n;
  private static PackageInfo o;
  private Activity a;
  private AQuery b;
  private MarketService.Handler c;
  private String d;
  private String e;
  private String f;
  private boolean g;
  private int h;
  private long i = 720000L;
  private String j;
  private boolean k;
  private boolean l;
  private int m = 0;

  public MarketService(Activity paramActivity)
  {
    this.a = paramActivity;
    this.b = new AQuery(paramActivity);
    this.c = new MarketService.Handler(this, null);
    this.d = Locale.getDefault().toString();
    this.e = getMarketUrl();
    this.f = this.e;
  }

  private Drawable getAppIcon()
  {
    return getApplicationInfo().loadIcon(this.a.getPackageManager());
  }

  private String getAppId()
  {
    return getApplicationInfo().packageName;
  }

  private ApplicationInfo getApplicationInfo()
  {
    if (n == null)
      n = this.a.getApplicationInfo();
    return n;
  }

  private String getHost()
  {
    return "https://androidquery.appspot.com";
  }

  private String getMarketUrl()
  {
    String str = getAppId();
    return "market://details?id=" + str;
  }

  private PackageInfo getPackageInfo()
  {
    if (o == null);
    try
    {
      o = this.a.getPackageManager().getPackageInfo(getAppId(), 0);
      return o;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }

  private String getQueryUrl()
  {
    String str1 = getAppId();
    String str2 = getHost() + "/api/market?app=" + str1 + "&locale=" + this.d + "&version=" + getVersion() + "&code=" + getVersionCode() + "&aq=0.25.9";
    if (this.g)
      str2 = str2 + "&force=true";
    return str2;
  }

  private static String getSkipVersion(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("aqs.skip", null);
  }

  private String getVersion()
  {
    return getPackageInfo().versionName;
  }

  private int getVersionCode()
  {
    return getPackageInfo().versionCode;
  }

  private boolean isActive()
  {
    return !this.a.isFinishing();
  }

  private static boolean openUrl(Activity paramActivity, String paramString)
  {
    if (paramString == null)
      return false;
    try
    {
      paramActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private boolean outdated(String paramString, int paramInt)
  {
    if (paramString.equals(getSkipVersion(this.a)));
    String str;
    int i1;
    do
    {
      return false;
      str = getVersion();
      i1 = getVersionCode();
    }
    while ((str.equals(paramString)) || (i1 > paramInt));
    return requireUpdate(str, paramString, this.m);
  }

  private static String patchBody(String paramString)
  {
    return "<small>" + paramString + "</small>";
  }

  private boolean requireUpdate(String paramString1, String paramString2, int paramInt)
  {
    if (paramString1.equals(paramString2));
    while (true)
    {
      return false;
      try
      {
        String[] arrayOfString1 = paramString1.split("\\.");
        String[] arrayOfString2 = paramString2.split("\\.");
        if (arrayOfString1.length >= 3)
        {
          if (arrayOfString2.length >= 3)
            break label136;
          break;
          if (!arrayOfString1[(-1 + arrayOfString1.length)].equals(arrayOfString2[(-1 + arrayOfString2.length)]))
            return true;
          if (!arrayOfString1[(-2 + arrayOfString1.length)].equals(arrayOfString2[(-2 + arrayOfString2.length)]))
            return true;
          boolean bool = arrayOfString1[(-3 + arrayOfString1.length)].equals(arrayOfString2[(-3 + arrayOfString2.length)]);
          if (bool)
            continue;
          return true;
        }
      }
      catch (Exception localException)
      {
        AQUtility.report(localException);
        return true;
      }
    }
    return true;
    label136: switch (paramInt)
    {
    case 0:
    case 1:
    case 2:
    }
    return true;
  }

  private static void setSkipVersion(Context paramContext, String paramString)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putString("aqs.skip", paramString).commit();
  }

  protected void callback(String paramString, JSONObject paramJSONObject, AjaxStatus paramAjaxStatus)
  {
    if (paramJSONObject == null);
    String str;
    int i1;
    do
    {
      return;
      str = paramJSONObject.optString("version", "0");
      i1 = paramJSONObject.optInt("code", 0);
      AQUtility.debug("version", getVersion() + "->" + str + ":" + getVersionCode() + "->" + i1);
      AQUtility.debug("outdated", Boolean.valueOf(outdated(str, i1)));
    }
    while ((!this.g) && (!outdated(str, i1)));
    showUpdateDialog(paramJSONObject);
  }

  public void checkVersion()
  {
    String str = getQueryUrl();
    AjaxCallback localAjaxCallback1 = new AjaxCallback();
    AjaxCallback localAjaxCallback2 = (AjaxCallback)((AjaxCallback)((AjaxCallback)localAjaxCallback1.url(str)).type(JSONObject.class)).handler(this.c, "marketCb");
    if (this.g);
    for (boolean bool = false; ; bool = true)
    {
      ((AjaxCallback)localAjaxCallback2.fileCache(bool)).expire(this.i);
      ((AQuery)this.b.progress(this.h)).ajax(localAjaxCallback1);
      return;
    }
  }

  public MarketService expire(long paramLong)
  {
    this.i = paramLong;
    return this;
  }

  public MarketService force(boolean paramBoolean)
  {
    this.g = paramBoolean;
    return this;
  }

  public MarketService level(int paramInt)
  {
    this.m = paramInt;
    return this;
  }

  public MarketService locale(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public MarketService progress(int paramInt)
  {
    this.h = paramInt;
    return this;
  }

  public MarketService rateUrl(String paramString)
  {
    this.e = paramString;
    return this;
  }

  protected void showUpdateDialog(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (this.j != null));
    while (!isActive())
      return;
    JSONObject localJSONObject = paramJSONObject.optJSONObject("dialog");
    String str1 = localJSONObject.optString("update", "Update");
    String str2 = localJSONObject.optString("skip", "Skip");
    String str3 = localJSONObject.optString("rate", "Rate");
    String str4 = localJSONObject.optString("wbody", "");
    String str5 = localJSONObject.optString("title", "Update Available");
    AQUtility.debug("wbody", str4);
    this.j = paramJSONObject.optString("version", null);
    Drawable localDrawable = getAppIcon();
    AlertDialog localAlertDialog = new AlertDialog.Builder(this.a).setIcon(localDrawable).setTitle(str5).setPositiveButton(str3, this.c).setNeutralButton(str2, this.c).setNegativeButton(str1, this.c).create();
    localAlertDialog.setMessage(Html.fromHtml(patchBody(str4), null, this.c));
    this.b.show(localAlertDialog);
  }

  public MarketService updateUrl(String paramString)
  {
    this.f = paramString;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.service.MarketService
 * JD-Core Version:    0.6.2
 */