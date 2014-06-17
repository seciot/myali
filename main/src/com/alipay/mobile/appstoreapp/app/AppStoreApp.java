package com.alipay.mobile.appstoreapp.app;

import android.app.Activity;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import com.alipay.mobile.appstoreapp.ui.AppDetailActivity;
import com.alipay.mobile.appstoreapp.ui.FastLoginAppActivity;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.text.MessageFormat;
import java.util.Iterator;
import java.util.Set;

public class AppStoreApp extends ActivityApplication
{
  private static final String LOG_TAG = "AppStoreApp";
  private AppManageService appManageService;
  private Bundle startParams = null;

  private String createUrl(Bundle paramBundle, String paramString1, String paramString2)
  {
    String str1 = paramBundle.getString("URL");
    String str2 = paramBundle.getString("APP_ID");
    Uri.Builder localBuilder = Uri.parse(str1).buildUpon();
    if ((paramString2 != null) && (paramString2.length() != 0))
      localBuilder.appendQueryParameter("auth_code", paramString2);
    if ((paramString1 != null) && (paramString1.length() != 0))
      localBuilder.appendQueryParameter("alipay_user_id", paramString1);
    localBuilder.appendQueryParameter("app_id", str2);
    localBuilder.appendQueryParameter("version", "1.0");
    localBuilder.appendQueryParameter("alipay_client_version", AppInfo.getInstance().getmProductVersion());
    localBuilder.appendQueryParameter("source", "alipay_wallet");
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str3 = (String)localIterator.next();
      if ((!str3.equals("URL")) && (!str3.equals("TARGET")) && (!str3.equals("APP_ID")) && (!str3.equals("appId")))
        localBuilder.appendQueryParameter(str3, paramBundle.getString(str3));
    }
    new StringBuilder("open url:").append(localBuilder.toString()).toString();
    return localBuilder.toString();
  }

  private void openInnerWebBrowser(String paramString)
  {
    SchemeService localSchemeService = (SchemeService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName());
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = URLEncoder.encode(paramString);
    localSchemeService.process(Uri.parse(MessageFormat.format("alipays://platformapi/startapp?actionType=WebView&appId=20000042&url={0}", arrayOfObject)));
  }

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getStartParams()
  {
    return this.startParams;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.appManageService = ((AppManageService)getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName()));
    this.startParams = paramBundle;
    if ((getMicroApplicationContext().getTopActivity() == null) || (getMicroApplicationContext().getTopActivity().get() == null))
      return;
    if (this.startParams == null)
    {
      getMicroApplicationContext().startActivity(this, FastLoginAppActivity.class.getName());
      return;
    }
    if (("DETAIL".equalsIgnoreCase(this.startParams.getString("TARGET"))) && (this.startParams.getString("APP_ID") != null))
    {
      App localApp2 = this.appManageService.getAppById(this.startParams.getString("APP_ID"));
      if ((localApp2 == null) || ((localApp2 != null) && (localApp2.getInstallerType() == AppInstallerTypeEnum.independantApp) && ((!localApp2.isInstalled()) || (localApp2.isNeedUpgrade()))))
      {
        getMicroApplicationContext().startActivity(this, AppDetailActivity.class.getName());
        return;
      }
      if ((localApp2 != null) && (!localApp2.isInstalled()))
        localApp2.downloadApp();
      while (true)
      {
        getMicroApplicationContext().finishApp(getAppId(), getAppId(), null);
        return;
        if (localApp2 != null)
          localApp2.isNeedUpgrade();
      }
    }
    if ("FASTLOGINAPPS".equalsIgnoreCase(this.startParams.getString("TARGET")))
    {
      getMicroApplicationContext().startActivity(this, FastLoginAppActivity.class.getName());
      return;
    }
    if (("LAUNCH_APP".equalsIgnoreCase(this.startParams.getString("TARGET"))) && (this.startParams.getString("APP_ID") != null))
    {
      new Thread(new a(this)).start();
      str3 = this.startParams.getString("APP_ID");
      localApp1 = this.appManageService.getAppById(str3);
      if ((localApp1 == null) || (!localApp1.isInstalled()))
      {
        if ((localApp1 == null) || (localApp1.getInstallerType() == AppInstallerTypeEnum.independantApp))
        {
          getMicroApplicationContext().startActivity(this, AppDetailActivity.class.getName());
          return;
        }
        localApp1.downloadApp();
      }
    }
    while ((!"LAUNCH_WEB".equalsIgnoreCase(this.startParams.getString("TARGET"))) || (this.startParams.getString("APP_ID") == null))
    {
      App localApp1;
      while (true)
      {
        String str3;
        getMicroApplicationContext().finishApp(getSourceId(), getAppId(), null);
        return;
        if (!localApp1.isNeedUpgrade())
          break;
        if (localApp1.getInstallerType() == AppInstallerTypeEnum.independantApp)
        {
          getMicroApplicationContext().startActivity(this, AppDetailActivity.class.getName());
          return;
        }
        localApp1.authAndLaunch(this.startParams);
      }
      localApp1.authAndLaunch(this.startParams);
      getMicroApplicationContext().finishApp(getSourceId(), getAppId(), null);
      return;
    }
    String str1 = this.startParams.getString("URL");
    String str2 = this.startParams.getString("APP_ID");
    this.appManageService.auth(str2, new b(this, str1), "publicp");
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    Activity localActivity = getTopActivity();
    if ((localActivity == null) || (localActivity.isFinishing()));
    try
    {
      destroy(null);
      getMicroApplicationContext().startApp("10000111", "10000111", paramBundle);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }

  public void setStartParams(Bundle paramBundle)
  {
    this.startParams = paramBundle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.app.AppStoreApp
 * JD-Core Version:    0.6.2
 */