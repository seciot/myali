package com.alipay.mobile.framework.service.ext.openplatform.app;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.DownloadService;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.common.TaskScheduleService;
import com.alipay.mobile.framework.service.ext.download.DownloadCallback;
import com.alipay.mobile.framework.service.ext.download.DownloadRequest;
import com.alipay.mobile.framework.service.ext.openplatform.AppIconLoadCallback;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.alipay.mobile.framework.service.ext.openplatform.domain.MyAppEntity;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AllAppInfoDao;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AppDao;
import com.alipay.mobile.framework.service.ext.openplatform.persist.MyAppDao;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;
import com.alipay.mobile.framework.service.ext.openplatform.service.ThirdPartyAuthorizeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.openplatform.common.R.drawable;
import com.alipay.mobileapp.core.model.app.MobileAppAuthStatusVO;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Set;
import org.json.JSONObject;

public abstract class App extends Observable
  implements DownloadCallback
{
  public static final String APPSTORE_APP_ID = "APPSTORE_APP_ID";
  public static final String APPSTORE_APP_TYPE = "APPSTORE_APP_TYPE";
  public static final String APP_STORE_IMAGE_GROUP_PREFIX = "appstoreimagegroup";
  private static final String CREATE_SHORTCUT_ACTION = "com.android.launcher.action.INSTALL_SHORTCUT";
  private static Bitmap DEFAULT_ICON = null;
  public static final String FROM_DESKTOP = "desktop";
  private static final String LOG_TAG = "App";
  private static final String TAG = "App";
  private static AuthService authService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
  protected static Context context = AlipayApplication.getInstance();
  private static ImageLoaderService imageLoaderService = (ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName());
  private static Map<String, String> localIcons = new HashMap();
  protected static DownloadService mDownloadService;
  private static Map<String, String> oldVersions = new HashMap();
  private static TaskScheduleService scheduleService = (TaskScheduleService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(TaskScheduleService.class.getName());
  private static ThirdPartyAuthorizeService thirdPartyAuthorizeService = (ThirdPartyAuthorizeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ThirdPartyAuthorizeService.class.getName());
  protected AppEntity appInfo;
  private String authType = "";
  protected Bitmap icon;
  Map<String, InstallStatus> installStatusMap = new LinkedHashMap(5);

  static
  {
    mDownloadService = (DownloadService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(DownloadService.class.getName());
  }

  public static void addOldVersion(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return;
    getOldVersions().put(paramString1, paramString2);
  }

  private void authAfterLogin(String paramString, AuthorizeCallback paramAuthorizeCallback)
  {
    AlipayApplication.getInstance().getMicroApplicationContext().showProgressDialog("", false, null);
    MobileAppAuthStatusVO localMobileAppAuthStatusVO = getThirdPartyAuthorizeService().getAuthStatus(getAppId(), paramString, this.authType);
    AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
    if (localMobileAppAuthStatusVO.isSignStatus())
    {
      paramAuthorizeCallback.onAuthSuccess(paramString, localMobileAppAuthStatusVO.getAuthCode());
      return;
    }
    if (localMobileAppAuthStatusVO.getResultCode() != 1000)
    {
      paramAuthorizeCallback.onAuthFailed();
      return;
    }
    getThirdPartyAuthorizeService().authSign(getAppId(), paramString, localMobileAppAuthStatusVO, paramAuthorizeCallback, this.authType);
  }

  private void checkLoginAndAuth(String paramString, AuthorizeCallback paramAuthorizeCallback)
  {
    if (!isNeedAuth())
      paramAuthorizeCallback.onNotNeedAuth();
    do
    {
      return;
      if (getAuthService().isLogin())
      {
        try
        {
          UserInfo localUserInfo = getAuthService().getUserInfo();
          if (localUserInfo != null)
          {
            authAfterLogin(localUserInfo.getUserId(), paramAuthorizeCallback);
            return;
          }
        }
        catch (Exception localException)
        {
          AlipayApplication.getInstance().getMicroApplicationContext().dismissProgressDialog();
          paramAuthorizeCallback.onAuthFailed();
          return;
        }
        paramAuthorizeCallback.onAuthFailed();
        return;
      }
    }
    while (!getAuthService().auth());
    auth(paramString, paramAuthorizeCallback);
  }

  private void doAuthAndLaunch(Bundle paramBundle, String paramString)
  {
    auth(getAppId(), new e(this, paramBundle));
  }

  private Intent getAppShortcutIntent(HashMap<String, String> paramHashMap)
  {
    if (paramHashMap == null)
      paramHashMap = new HashMap();
    ComponentName localComponentName = new ComponentName(AlipayApplication.getInstance().getPackageName(), "com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivity");
    Intent localIntent = new Intent("android.intent.action.MAIN").setComponent(localComponentName);
    localIntent.addFlags(268435456);
    localIntent.putExtra("appId", getAppId());
    localIntent.putExtra("needAuth", isNeedAuth());
    if (getInstallerType() == AppInstallerTypeEnum.independantApp);
    for (boolean bool = true; ; bool = false)
    {
      localIntent.putExtra("isApkApp", bool);
      localIntent.putExtra("from", "desktop");
      if (getInstallerType() == AppInstallerTypeEnum.independantApp)
        localIntent.putExtra("packageName", getPackageName());
      if (getInstallerType() == AppInstallerTypeEnum.H5App)
      {
        localIntent.putExtra("appId", "10000111");
        localIntent.putExtra("TARGET", "LAUNCH_APP");
        localIntent.putExtra("APP_ID", getAppId());
      }
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localIntent.putExtra(str, (String)paramHashMap.get(str));
      }
    }
    return localIntent;
  }

  private AuthService getAuthService()
  {
    if (authService == null)
      authService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    return authService;
  }

  private String getAuthorityFromPermission(Context paramContext, String paramString)
  {
    if (paramString == null)
      return null;
    List localList = paramContext.getPackageManager().getInstalledPackages(8);
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ProviderInfo[] arrayOfProviderInfo = ((PackageInfo)localIterator.next()).providers;
        if (arrayOfProviderInfo != null)
        {
          int i = arrayOfProviderInfo.length;
          for (int j = 0; j < i; j++)
          {
            ProviderInfo localProviderInfo = arrayOfProviderInfo[j];
            if (paramString.equals(localProviderInfo.readPermission))
              return localProviderInfo.authority;
            if (paramString.equals(localProviderInfo.writePermission))
              return localProviderInfo.authority;
          }
        }
      }
    }
    return null;
  }

  public static Bitmap getDefaultIcon()
  {
    try
    {
      Bitmap localBitmap;
      if ((DEFAULT_ICON != null) && (!DEFAULT_ICON.isRecycled()))
        localBitmap = DEFAULT_ICON;
      while (true)
      {
        return localBitmap;
        localBitmap = BitmapFactory.decodeResource(AlipayApplication.getInstance().getResources(), R.drawable.app_default);
        DEFAULT_ICON = localBitmap;
      }
    }
    finally
    {
    }
  }

  private String getImageGroup()
  {
    if ((getAppId() == null) || (getAppId().trim().equalsIgnoreCase("")))
      return "appstoreimagegroup0";
    return "appstoreimagegroup" + getAppId().substring(-1 + getAppId().length(), getAppId().length());
  }

  private ImageLoaderService getImageLoaderService()
  {
    if (imageLoaderService == null)
      imageLoaderService = (ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName());
    return imageLoaderService;
  }

  private static Map<String, String> getLocalIcons()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = new AllAppInfoDao().getAppEntities().iterator();
    while (localIterator.hasNext())
    {
      AppEntity localAppEntity = (AppEntity)localIterator.next();
      String str = localAppEntity.getIconUrl();
      if ((str != null) && (str.length() != 0))
        localHashMap.put(localAppEntity.getAppId(), str);
    }
    return localHashMap;
  }

  public static String getOldVersion(String paramString)
  {
    if (paramString == null)
      return null;
    return (String)getOldVersions().get(paramString);
  }

  private static Map<String, String> getOldVersions()
  {
    if (oldVersions == null)
      oldVersions = new HashMap();
    return oldVersions;
  }

  private TaskScheduleService getTaskScheduleService()
  {
    if (scheduleService == null)
      scheduleService = (TaskScheduleService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(TaskScheduleService.class.getName());
    return scheduleService;
  }

  private ThirdPartyAuthorizeService getThirdPartyAuthorizeService()
  {
    if (thirdPartyAuthorizeService == null)
      thirdPartyAuthorizeService = (ThirdPartyAuthorizeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ThirdPartyAuthorizeService.class.getName());
    return thirdPartyAuthorizeService;
  }

  private void moveAppByDisplayPlace(int paramInt)
  {
    if (!MyAppDao.getDao().isAddedToMyApp(getAppId()))
      return;
    MyAppEntity localMyAppEntity = MyAppDao.getDao().getMyAppById(getAppId());
    localMyAppEntity.setAppDisplayPlace(paramInt);
    localMyAppEntity.setUserRank(MyAppDao.getDao().getMinRank());
    MyAppDao.getDao().saveOrUpdateMyAppEntity(localMyAppEntity);
    setChanged();
    if (paramInt == 0);
    for (int i = 2; ; i = 3)
    {
      notifyObservers(new AppStatusChangeNotify(i, this));
      return;
    }
  }

  private void remove(String paramString)
  {
    Intent localIntent = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
    localIntent.putExtra("android.intent.extra.shortcut.NAME", paramString);
    String str = AlipayApplication.getInstance().getPackageName();
    ComponentName localComponentName = new ComponentName(str, str + ".AppLaunchFromShortcutActivity");
    localIntent.putExtra("android.intent.extra.shortcut.INTENT", new Intent("android.intent.action.MAIN").setComponent(localComponentName));
    AlipayApplication.getInstance().sendBroadcast(localIntent);
  }

  private void removeFromDatabase()
  {
    MyAppDao.getDao().removeMyAppById(getAppId());
    AppDao.getDao().removeAppEntityById(getAppId());
  }

  public static void removeOldVersion(String paramString)
  {
    if (paramString == null)
      return;
    getOldVersions().remove(paramString);
  }

  public static void setLocalIcons(Map<String, String> paramMap)
  {
    localIcons = paramMap;
  }

  public void addToDesktop(HashMap<String, String> paramHashMap)
  {
    createAppShortcut(getAppShortcutIntent(paramHashMap));
  }

  public void auth(String paramString, AuthorizeCallback paramAuthorizeCallback)
  {
    new Thread(new f(this, paramString, paramAuthorizeCallback)).start();
  }

  public void authAndLaunch(Bundle paramBundle)
  {
    new Thread(new d(this, paramBundle)).start();
  }

  public abstract void autoUpgradeApp();

  public final void createAppShortcut(Intent paramIntent)
  {
    if ((paramIntent != null) && (Build.VERSION.SDK_INT < 14))
      paramIntent.setAction("");
    Intent localIntent = new Intent();
    paramIntent.putExtra("from", "desktop");
    localIntent.putExtra("android.intent.extra.shortcut.INTENT", paramIntent);
    localIntent.putExtra("android.intent.extra.shortcut.NAME", getAppName());
    localIntent.putExtra("android.intent.extra.shortcut.ICON", AppUtils.createShortcutIcon(getIcon()));
    localIntent.putExtra("duplicate", false);
    localIntent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
    AlipayApplication.getInstance().sendBroadcast(localIntent);
  }

  public abstract void downloadApp();

  public String getAppDesc()
  {
    return this.appInfo.getDesc();
  }

  public String getAppId()
  {
    return this.appInfo.getAppId();
  }

  public AppEntity getAppInfo()
  {
    return this.appInfo;
  }

  public String getAppName()
  {
    return this.appInfo.getName();
  }

  public String getAppVersion()
  {
    return this.appInfo.getVersion();
  }

  public String getAutoStatus()
  {
    return this.appInfo.getAutoStatus();
  }

  public String getDesc()
  {
    return this.appInfo.getDesc();
  }

  protected DownloadService getDownloadService()
  {
    if (mDownloadService == null)
      mDownloadService = (DownloadService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(DownloadService.class.getName());
    return mDownloadService;
  }

  public String getDownloadUrl()
  {
    return this.appInfo.getDownloadUrl();
  }

  public Bitmap getIcon()
  {
    if ((this.icon != null) && (!this.icon.isRecycled()))
      return this.icon;
    if (!isIconRemote())
    {
      Bitmap localBitmap = loadFromLocal();
      if (localBitmap != null)
      {
        this.icon = localBitmap;
        return this.icon;
      }
    }
    return BitmapFactory.decodeResource(AlipayApplication.getInstance().getResources(), R.drawable.app_default);
  }

  public String getIconUrl()
  {
    try
    {
      Map localMap = AppUtils.jsonToMap(new JSONObject(this.appInfo.getIconUrl()));
      if (localMap.containsKey("ANDROID"))
        return (String)localMap.get("ANDROID");
      if (localMap.containsKey("ANDROID_HTTPS"))
      {
        String str = (String)localMap.get("ANDROID_HTTPS");
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return this.appInfo.getIconUrl();
  }

  public InstallStatus getInstallStatus()
  {
    if (this.installStatusMap.get(getAppId()) == null)
    {
      InstallStatus localInstallStatus = new InstallStatus(this);
      this.installStatusMap.put(getAppId(), localInstallStatus);
      return localInstallStatus;
    }
    return (InstallStatus)this.installStatusMap.get(getAppId());
  }

  public abstract String getInstalledPath();

  public AppInstallerTypeEnum getInstallerType()
  {
    return AppInstallerTypeEnum.getEnum(this.appInfo.getInstallerType());
  }

  public String getLabelContent()
  {
    return this.appInfo.getLabelContent();
  }

  public int getMinSdkVersion()
  {
    try
    {
      if (this.appInfo.getMinSupportSdkVersion() == null)
        return 0;
      int i = Integer.parseInt(this.appInfo.getMinSupportSdkVersion());
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localNumberFormatException.getMessage();
    }
    return 0;
  }

  public String getMinSupportAppVersionCode()
  {
    return this.appInfo.getMinSupportAppVersionCode();
  }

  public String getMinSupportClientVersion()
  {
    return this.appInfo.getMinSupportClientVersion();
  }

  public String getMinSupportOsVersion()
  {
    return this.appInfo.getMinSupportOsVersion();
  }

  public String getMinSupportSdkVersion()
  {
    return this.appInfo.getMinSupportSdkVersion();
  }

  public String getName()
  {
    return this.appInfo.getName();
  }

  public String getPackageName()
  {
    return this.appInfo.getPackageName();
  }

  public String getSchemeUri()
  {
    return this.appInfo.getSchemeUri();
  }

  public int getSize()
  {
    return this.appInfo.getSize();
  }

  public String getSlogan()
  {
    return this.appInfo.getSlogan();
  }

  public String getStatus()
  {
    return this.appInfo.getStatus();
  }

  public String getTipsType()
  {
    return this.appInfo.getTipsType();
  }

  public String getVersion()
  {
    return this.appInfo.getVersion();
  }

  public boolean hasDesktopShortcut()
  {
    ContentResolver localContentResolver = AlipayApplication.getInstance().getContentResolver();
    String str = getAuthorityFromPermission(context, "com.android.launcher.permission.READ_SETTINGS");
    Uri localUri = Uri.parse("content://" + str + "/favorites?notify=true");
    String[] arrayOfString1 = { "title", "iconResource" };
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = getAppName().trim();
    Cursor localCursor = localContentResolver.query(localUri, arrayOfString1, "title=?", arrayOfString2, null);
    return (localCursor != null) && (localCursor.getCount() > 0);
  }

  public boolean iconHasLoaded()
  {
    if ((this.icon != null) && (!this.icon.isRecycled()));
    while (!isIconRemote())
      return true;
    return false;
  }

  public abstract void installApp(String[] paramArrayOfString);

  public boolean isAddedAsMyApp()
  {
    return MyAppDao.getDao().isAddedToMyApp(getAppId());
  }

  public boolean isAlipayApp()
  {
    return this.appInfo.isAlipayApp();
  }

  public boolean isDisplay()
  {
    return this.appInfo.isDisplay();
  }

  public abstract boolean isDownloading();

  boolean isIconRemote()
  {
    String str = getIconUrl();
    if ((str == null) || (str.length() == 0));
    while ((!str.contains("http")) && (!str.contains("https")))
      return false;
    return true;
  }

  public boolean isIndependentApp()
  {
    return getInstallerType() == AppInstallerTypeEnum.independantApp;
  }

  public abstract boolean isInstallBySystem();

  public abstract boolean isInstalled();

  public boolean isNeedAuth()
  {
    if (getAppId().equals("2013062600000474"))
      return true;
    return this.appInfo.isNeedAuthorize();
  }

  public boolean isNeedAutoUpgrade()
  {
    String str = getAutoStatus();
    return (!isIndependentApp()) && (str != null) && (str.equalsIgnoreCase("auto")) && ((!isInstalled()) || (isNeedUpgrade()));
  }

  public abstract boolean isNeedUpgrade();

  public boolean isOffline()
  {
    AppEntity localAppEntity = this.appInfo;
    boolean bool1 = false;
    if (localAppEntity != null)
    {
      String str = getStatus();
      bool1 = false;
      if (str != null)
        if ((!str.equalsIgnoreCase("offline")) && (!str.equalsIgnoreCase("autoUn")))
        {
          boolean bool2 = str.equalsIgnoreCase("un");
          bool1 = false;
          if (!bool2);
        }
        else
        {
          bool1 = true;
        }
    }
    return bool1;
  }

  public abstract boolean isPreInstall();

  public boolean isRecommend()
  {
    return this.appInfo.isRecommend();
  }

  public boolean isShortcutInstalled()
  {
    ContentResolver localContentResolver = AlipayApplication.getInstance().getContentResolver();
    if (Build.VERSION.SDK_INT >= 8);
    for (String str = "com.android.launcher2.settings"; ; str = "com.android.launcher.settings")
    {
      Uri localUri = Uri.parse("content://" + str + "/favorites?notify=true");
      String[] arrayOfString1 = { "title", "iconResource" };
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = getAppName();
      Cursor localCursor = localContentResolver.query(localUri, arrayOfString1, "title=?", arrayOfString2, null);
      if ((localCursor == null) || (localCursor.getCount() <= 0))
        break;
      System.out.println("已创建");
      return true;
    }
    return false;
  }

  public abstract void launchAppWithAuthCode(String paramString1, String paramString2, Bundle paramBundle);

  public Bitmap loadFromLocal()
  {
    if ((localIcons == null) || (localIcons.size() <= 0));
    label23: Bitmap localBitmap1;
    try
    {
      localIcons = getLocalIcons();
      try
      {
        if ((localIcons.get(getAppId()) == null) || (((String)localIcons.get(getAppId())).equals("")))
          break label144;
        Field localField = R.drawable.class.getDeclaredField((String)localIcons.get(getAppId()));
        if (localField != null)
        {
          int i = localField.getInt(R.drawable.class);
          localBitmap1 = BitmapFactory.decodeResource(AlipayApplication.getInstance().getResources(), i);
          if (isAlipayApp())
            break label147;
          Bitmap localBitmap2 = AppUtils.createRoundIcon(localBitmap1);
          return localBitmap2;
        }
      }
      catch (Exception localException)
      {
        localException.getLocalizedMessage();
      }
      return null;
    }
    catch (IOException localIOException)
    {
      break label23;
      label144: localBitmap1 = null;
    }
    label147: return localBitmap1;
  }

  public void loadIcon(AppIconLoadCallback paramAppIconLoadCallback)
  {
    if (iconHasLoaded())
      paramAppIconLoadCallback.onLoad(this.icon);
    String str;
    do
    {
      return;
      str = getIconUrl();
    }
    while ((str == null) || (str.trim().length() == 0) || (!isIconRemote()));
    getTaskScheduleService().parallelExecute(new a(this, paramAppIconLoadCallback));
  }

  public void moveToAppCenter()
  {
    moveAppByDisplayPlace(1);
    AlipayApplication.getInstance().getMicroApplicationContext().Toast("已移到［更多］", 0);
  }

  public void moveToHome()
  {
    moveAppByDisplayPlace(0);
    AlipayApplication.getInstance().getMicroApplicationContext().Toast("已添加到［首页］", 0);
  }

  public void offline()
  {
    removeFromDesktop();
    uninstallApp();
    removeFromDatabase();
  }

  public void onCancel(DownloadRequest paramDownloadRequest)
  {
    InstallStatus localInstallStatus = getInstallStatus();
    localInstallStatus.setStatus(4);
    setChanged();
    notifyObservers(localInstallStatus);
  }

  public void onFailed(DownloadRequest paramDownloadRequest, int paramInt, String paramString)
  {
    if (!"auto".equalsIgnoreCase(getAutoStatus()))
      AlipayApplication.getInstance().getMicroApplicationContext().Toast(getAppName() + " 下载失败", 0);
    InstallStatus localInstallStatus = getInstallStatus();
    localInstallStatus.setStatus(4);
    setChanged();
    notifyObservers(localInstallStatus);
  }

  public void onFinish(DownloadRequest paramDownloadRequest, String paramString)
  {
    InstallStatus localInstallStatus = getInstallStatus();
    localInstallStatus.setStatus(5);
    setChanged();
    notifyObservers(localInstallStatus);
    if (!isInstalled())
      installApp(new String[] { paramString });
    AppManageService localAppManageService;
    do
    {
      return;
      if (isIndependentApp())
      {
        installApp(new String[] { paramString });
        return;
      }
      localAppManageService = (AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName());
    }
    while (localAppManageService == null);
    localAppManageService.addToDownloadedAppsMap(getAppId(), paramString);
  }

  public void onInstallComplete(boolean paramBoolean)
  {
    getOldVersions().remove(getAppId());
    AppEntity localAppEntity = AppDao.getDao().getAppByAppId(getAppId());
    int i = 0;
    if (localAppEntity != null)
    {
      boolean bool = "auto".equalsIgnoreCase(localAppEntity.getAutoStatus());
      i = 0;
      if (bool)
        i = 1;
    }
    if ((paramBoolean) && (localAppEntity != null))
    {
      localAppEntity.setAutoStatus("");
      AppDao.getDao().saveOrUpdateAppEntity(localAppEntity);
    }
    getAppInfo().setAutoStatus("");
    InstallStatus localInstallStatus = getInstallStatus();
    if (paramBoolean)
      localInstallStatus.setStatus(8);
    while (true)
    {
      setChanged();
      notifyObservers(localInstallStatus);
      return;
      if ((isDisplay()) && (!isOffline()) && (i == 0));
      try
      {
        if (!isPreInstall())
          AlipayApplication.getInstance().getMicroApplicationContext().Toast(getAppName() + " 安装失败", 0);
        label173: localInstallStatus.setStatus(7);
      }
      catch (Exception localException)
      {
        break label173;
      }
    }
  }

  public void onPrepare(DownloadRequest paramDownloadRequest)
  {
    InstallStatus localInstallStatus = getInstallStatus();
    localInstallStatus.setStatus(2);
    setChanged();
    notifyObservers(localInstallStatus);
  }

  public void onProgress(DownloadRequest paramDownloadRequest, int paramInt)
  {
    InstallStatus localInstallStatus = getInstallStatus();
    localInstallStatus.setDownloadProgress(paramInt);
    localInstallStatus.setStatus(3);
    setChanged();
    notifyObservers(localInstallStatus);
  }

  public abstract boolean preInstallApp();

  public void removeFromDesktop()
  {
    remove(getAppName());
  }

  public void setAppInfo(AppEntity paramAppEntity)
  {
    this.appInfo = paramAppEntity;
  }

  public void setAuthType(String paramString)
  {
    this.authType = paramString;
  }

  public final void showToastCenter(String paramString)
  {
    AlipayApplication.getInstance().getMicroApplicationContext().Toast(paramString, 1);
  }

  public String toString()
  {
    if (this.appInfo != null)
      return this.appInfo.toString();
    return "empty app";
  }

  public abstract void uninstallApp();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.app.App
 * JD-Core Version:    0.6.2
 */