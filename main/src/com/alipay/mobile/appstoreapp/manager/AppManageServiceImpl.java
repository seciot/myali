package com.alipay.mobile.appstoreapp.manager;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.appstoreapp.util.AppStoreUtil;
import com.alipay.mobile.appstoreapp.util.GeneralRequestBuilder;
import com.alipay.mobile.appstoreapp.util.TimingUtil;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.openplatform.AppFactory;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.AppStoreException;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.MemoryAppsChangeNotify;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.apps.ApkApp;
import com.alipay.mobile.framework.service.ext.openplatform.apps.AppConvertor;
import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.alipay.mobile.framework.service.ext.openplatform.domain.MyAppEntity;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AllAppInfoDao;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AppDao;
import com.alipay.mobile.framework.service.ext.openplatform.persist.ChannelConfigUtils;
import com.alipay.mobile.framework.service.ext.openplatform.persist.FastLoginAppDao;
import com.alipay.mobile.framework.service.ext.openplatform.persist.MyAppDao;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeCallback;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileapp.common.service.facade.app.facade.MobileAppInfoServiceFacade;
import com.alipay.mobileapp.common.service.facade.app.facade.QueryAppstoreReq;
import com.alipay.mobileapp.common.service.facade.app.facade.QueryAppstoreRes;
import com.alipay.mobileapp.common.service.facade.app.facade.QueryMyAppReq;
import com.alipay.mobileapp.common.service.facade.app.facade.QueryMyAppRes;
import com.alipay.mobileapp.core.model.app.MobileAppInfoVO;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class AppManageServiceImpl extends AppManageService
  implements Observer
{
  private Map<String, App> a = new HashMap();
  private ConcurrentHashMap<String, String> b = new ConcurrentHashMap();
  private MobileAppInfoServiceFacade c;

  private static List<MyAppEntity> a(List<AppEntity> paramList, List<MyAppEntity> paramList1)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList1.iterator();
    while (localIterator.hasNext())
    {
      MyAppEntity localMyAppEntity = (MyAppEntity)localIterator.next();
      if (a(localMyAppEntity.getAppId(), paramList))
      {
        new StringBuilder("filter my app, appId not exist").append(localMyAppEntity.getAppId()).toString();
        localArrayList.add(localMyAppEntity);
      }
    }
    return localArrayList;
  }

  private void a()
  {
    AllAppInfoDao localAllAppInfoDao = new AllAppInfoDao();
    List localList1 = localAllAppInfoDao.getAppEntities();
    AppDao.getDao().saveOrUpdateAppEntitys(localList1);
    List localList2 = a(localList1, localAllAppInfoDao.getMyAppEntities());
    List localList3 = MyAppDao.getDao().getAllMyApps();
    if ((localList3 == null) || (localList3.size() <= 0))
    {
      MyAppDao.getDao().saveOrUpdateMyAppEntitys(localList2);
      b(localList1);
      return;
    }
    long l1 = MyAppDao.getDao().getMinRank();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = localList2.iterator();
    long l2 = l1;
    label94: MyAppEntity localMyAppEntity;
    if (localIterator1.hasNext())
    {
      localMyAppEntity = (MyAppEntity)localIterator1.next();
      Iterator localIterator2 = localList3.iterator();
      do
        if (!localIterator2.hasNext())
          break;
      while (!((MyAppEntity)localIterator2.next()).getAppId().equals(localMyAppEntity.getAppId()));
    }
    for (int i = 1; ; i = 0)
    {
      long l4;
      if (i == 0)
      {
        localMyAppEntity.setAppDisplayPlace(1);
        l4 = l2 - 1L;
        localMyAppEntity.setUserRank(l2);
        localArrayList.add(localMyAppEntity);
      }
      for (long l3 = l4; ; l3 = l2)
      {
        l2 = l3;
        break label94;
        MyAppDao.getDao().saveOrUpdateMyAppEntitys(localArrayList);
        break;
      }
    }
  }

  private void a(List<MobileAppInfoVO> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        MobileAppInfoVO localMobileAppInfoVO = (MobileAppInfoVO)localIterator.next();
        if (this.a.containsKey(localMobileAppInfoVO.appId))
        {
          App localApp2 = (App)this.a.get(localMobileAppInfoVO.appId);
          if ((localApp2.getInstallerType() != null) && (AppInstallerTypeEnum.getEnum(localMobileAppInfoVO.installerType) != localApp2.getInstallerType()))
          {
            App localApp3 = AppFactory.createApp(localMobileAppInfoVO);
            if (localApp3 != null)
            {
              localApp3.addObserver(this);
              this.a.put(localMobileAppInfoVO.appId, localApp3);
              a(localApp3, new AppStatusChangeNotify(1, localApp3));
            }
            else
            {
              localApp2.setAppInfo(AppConvertor.a(localMobileAppInfoVO));
            }
          }
          else
          {
            localApp2.setAppInfo(AppConvertor.a(localMobileAppInfoVO));
          }
        }
        else
        {
          App localApp1 = AppFactory.createApp(localMobileAppInfoVO);
          if (localApp1 != null)
          {
            this.a.put(localApp1.getAppId(), localApp1);
            localApp1.addObserver(this);
          }
        }
      }
    }
  }

  private static void a(Map<String, App> paramMap)
  {
    if (paramMap != null)
      try
      {
        Iterator localIterator = paramMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          App localApp = (App)((Map.Entry)localIterator.next()).getValue();
          if (localApp.isNeedAutoUpgrade())
            localApp.autoUpgradeApp();
          if ((!localApp.isDisplay()) && (localApp.getAppId() != null) && (localApp.isAddedAsMyApp()))
            MyAppDao.getDao().removeMyAppById(localApp.getAppId());
        }
      }
      catch (Exception localException)
      {
        localException.getLocalizedMessage();
      }
  }

  private void a(Observable paramObservable, Object paramObject)
  {
    Iterator localIterator = this.observers.iterator();
    while (localIterator.hasNext())
      ((Observer)localIterator.next()).update(paramObservable, paramObject);
  }

  private static boolean a(QueryMyAppRes paramQueryMyAppRes)
  {
    if (paramQueryMyAppRes.resultStatus != 1000);
    while ((paramQueryMyAppRes.appList == null) || (paramQueryMyAppRes.appList.size() == 0))
      return false;
    return true;
  }

  private static boolean a(String paramString, List<AppEntity> paramList)
  {
    if (paramString == null)
      return false;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      AppEntity localAppEntity = (AppEntity)localIterator.next();
      if ((localAppEntity != null) && (paramString.equals(localAppEntity.getAppId())))
        return true;
    }
    return false;
  }

  private void b()
  {
    List localList = AppDao.getDao().getAlipayAppIds();
    String str1 = AlipayApplication.getInstance().getFilesDir().getAbsolutePath() + File.separator + "apps" + File.separator;
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      AppEntity localAppEntity = (AppEntity)localIterator.next();
      String str2 = str1 + localAppEntity.getAppId() + ".jar";
      if (new File(str2).exists())
        BackgroundExecutor.execute(new b(this, str2));
    }
  }

  private void b(List<AppEntity> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        AppEntity localAppEntity = (AppEntity)localIterator.next();
        if (this.a.containsKey(localAppEntity.getAppId()))
        {
          App localApp2 = (App)this.a.get(localAppEntity.getAppId());
          if ((localApp2.getInstallerType() != null) && (AppInstallerTypeEnum.getEnum(localAppEntity.getInstallerType()) != localApp2.getInstallerType()))
          {
            App localApp3 = AppFactory.createApp(localAppEntity);
            if (localApp3 != null)
            {
              localApp3.addObserver(this);
              this.a.put(localAppEntity.getAppId(), localApp3);
              a(localApp3, new AppStatusChangeNotify(1, localApp3));
            }
            else
            {
              localApp2.setAppInfo(localAppEntity);
            }
          }
          else
          {
            localApp2.setAppInfo(localAppEntity);
          }
        }
        else
        {
          App localApp1 = AppFactory.createApp(localAppEntity);
          this.a.put(localApp1.getAppId(), localApp1);
          localApp1.addObserver(this);
        }
      }
    }
  }

  private void c()
  {
    InputStream localInputStream = AlipayApplication.getInstance().getAssets().open("apps_preinstall_config/preinstall_appid.json");
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localInputStream.read(arrayOfByte, 0, arrayOfByte.length);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    Iterator localIterator = JSON.parseArray(new String(localByteArrayOutputStream.toByteArray()), String.class).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      App localApp = getAppById(str);
      if (localApp != null)
        localApp.preInstallApp();
      else
        new StringBuilder("preinstall ").append(str).append("failed! app not exist!!!").toString();
    }
  }

  private static void c(List<MobileAppInfoVO> paramList)
  {
    if (paramList == null)
      return;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      MobileAppInfoVO localMobileAppInfoVO = (MobileAppInfoVO)localIterator.next();
      if ((localMobileAppInfoVO.appId != null) && (!"".equals(localMobileAppInfoVO.appId.trim())))
      {
        AppEntity localAppEntity = AppConvertor.a(localMobileAppInfoVO);
        if (localAppEntity != null)
          localArrayList.add(localAppEntity);
      }
    }
    AppDao.getDao().saveOrUpdateAppEntitys(localArrayList);
  }

  private static List<MobileAppInfoVO> d(List<MobileAppInfoVO> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList == null)
      return localArrayList;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      MobileAppInfoVO localMobileAppInfoVO = (MobileAppInfoVO)localIterator.next();
      if ("offline".equalsIgnoreCase(localMobileAppInfoVO.status))
      {
        AppEntity localAppEntity = AppDao.getDao().getAppByAppId(localMobileAppInfoVO.appId);
        if ((localAppEntity != null) && (!"offline".equalsIgnoreCase(localAppEntity.getStatus())))
        {
          localAppEntity.setStatus("offline");
          localArrayList.add(AppConvertor.a(localAppEntity));
        }
      }
      else if (AppStoreUtil.a(localMobileAppInfoVO))
      {
        localArrayList.add(localMobileAppInfoVO);
      }
    }
    return localArrayList;
  }

  private static void e(List<App> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        App localApp = (App)localIterator.next();
        if ((!localApp.isAddedAsMyApp()) && (localApp.getAppId() != null) && (!localApp.getAppId().equals("")) && (!ChannelConfigUtils.isBannedApp(localApp.getAppId())) && (localApp.isDisplay()))
          MyAppDao.getDao().saveOrUpdateMyAppEntity(new MyAppEntity(localApp.getAppId(), 1, MyAppDao.getDao().getMinRank()));
      }
    }
  }

  private static List<App> f(List<App> paramList)
  {
    if (paramList == null)
      return new ArrayList();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    label129: 
    while (localIterator.hasNext())
    {
      App localApp = (App)localIterator.next();
      if (!ChannelConfigUtils.isBannedApp(localApp.getAppId()))
      {
        AuthService localAuthService;
        if (localApp.getAppId().equals("10000008"))
        {
          localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
          if (!localAuthService.isLogin())
            break label125;
        }
        label125: for (boolean bool = localAuthService.getUserInfo().isWirelessUser(); ; bool = false)
        {
          if (bool)
            break label129;
          localArrayList.add(localApp);
          break;
        }
      }
    }
    return localArrayList;
  }

  public void addToDownloadedAppsMap(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      return;
    this.b.put(paramString1, paramString2);
  }

  public void auth(String paramString, AuthorizeCallback paramAuthorizeCallback)
  {
    auth(paramString, paramAuthorizeCallback, "");
  }

  public void auth(String paramString1, AuthorizeCallback paramAuthorizeCallback, String paramString2)
  {
    AppEntity localAppEntity = new AppEntity();
    localAppEntity.setAppId(paramString1);
    localAppEntity.setNeedAuthorize(true);
    ApkApp localApkApp = new ApkApp();
    localApkApp.setAppInfo(localAppEntity);
    localApkApp.setAuthType(paramString2);
    localApkApp.auth(paramString1, paramAuthorizeCallback);
  }

  public void authAndLaunch(String paramString1, String paramString2, boolean paramBoolean, Bundle paramBundle)
  {
    AppEntity localAppEntity = new AppEntity();
    localAppEntity.setAppId(paramString1);
    localAppEntity.setPackageName(paramString2);
    localAppEntity.setNeedAuthorize(paramBoolean);
    ApkApp localApkApp = new ApkApp();
    localApkApp.setAppInfo(localAppEntity);
    localApkApp.authAndLaunch(paramBundle);
  }

  public App getAppById(String paramString)
  {
    App localApp;
    if (this.a.containsKey(paramString))
      localApp = (App)this.a.get(paramString);
    do
    {
      return localApp;
      localApp = AppFactory.createApp(AppDao.getDao().getAppByAppId(paramString));
    }
    while (localApp == null);
    localApp.addObserver(this);
    this.a.put(localApp.getAppId(), localApp);
    return localApp;
  }

  public List<App> getAppCenterAppsFromLocal()
  {
    ArrayList localArrayList = new ArrayList();
    List localList = AppDao.getDao().getAppListByIds(MyAppDao.getDao().getAllMyAppIds(1), true);
    if (localList == null)
      return localArrayList;
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      AppEntity localAppEntity = (AppEntity)localIterator.next();
      if (this.a.containsKey(localAppEntity.getAppId()))
      {
        App localApp2 = (App)this.a.get(localAppEntity.getAppId());
        localApp2.setAppInfo(localAppEntity);
        localArrayList.add(localApp2);
      }
      else
      {
        App localApp1 = AppFactory.createApp(localAppEntity);
        if (localApp1 != null)
        {
          this.a.put(localApp1.getAppId(), localApp1);
          localApp1.addObserver(this);
          localArrayList.add(localApp1);
        }
      }
    }
    return f(localArrayList);
  }

  public List<App> getAppCenterAppsFromRemote()
  {
    return new ArrayList();
  }

  public List<App> getAppsByPage(int paramInt1, int paramInt2)
  {
    QueryAppstoreReq localQueryAppstoreReq = GeneralRequestBuilder.a(new ArrayList());
    localQueryAppstoreReq.pre = false;
    localQueryAppstoreReq.page = paramInt1;
    localQueryAppstoreReq.pagesize = paramInt2;
    QueryAppstoreRes localQueryAppstoreRes = this.c.queryIndependantAppList(localQueryAppstoreReq);
    ArrayList localArrayList;
    Iterator localIterator;
    if ((localQueryAppstoreRes != null) && (localQueryAppstoreRes.resultStatus == 1000))
    {
      List localList = d(localQueryAppstoreRes.appList);
      a(localList);
      localArrayList = new ArrayList();
      localIterator = localList.iterator();
    }
    while (localIterator.hasNext())
    {
      MobileAppInfoVO localMobileAppInfoVO = (MobileAppInfoVO)localIterator.next();
      if (this.a.containsKey(localMobileAppInfoVO.appId))
      {
        localArrayList.add(this.a.get(localMobileAppInfoVO.appId));
        continue;
        throw new AppStoreException(localQueryAppstoreRes.resultStatus, localQueryAppstoreRes.memo);
      }
    }
    return localArrayList;
  }

  public List<App> getHomeAndAppCenterAppsFromRemote()
  {
    QueryMyAppReq localQueryMyAppReq = GeneralRequestBuilder.a();
    localQueryMyAppReq.appList = null;
    localQueryMyAppReq.pre = false;
    QueryMyAppRes localQueryMyAppRes = this.c.queryFitMyAppOrderedByWeight(localQueryMyAppReq);
    if (a(localQueryMyAppRes))
    {
      List localList = d(localQueryMyAppRes.appList);
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        MobileAppInfoVO localMobileAppInfoVO2 = (MobileAppInfoVO)localIterator1.next();
        App localApp = getAppById(localMobileAppInfoVO2.appId);
        if (localApp != null)
          App.addOldVersion(localMobileAppInfoVO2.appId, localApp.getAppVersion());
      }
      c(localList);
      a(localList);
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator2 = localList.iterator();
      while (localIterator2.hasNext())
      {
        MobileAppInfoVO localMobileAppInfoVO1 = (MobileAppInfoVO)localIterator2.next();
        if (this.a.containsKey(localMobileAppInfoVO1.appId))
          localArrayList.add(this.a.get(localMobileAppInfoVO1.appId));
      }
      e(localArrayList);
      a(new Observable(), new MemoryAppsChangeNotify(1));
      a(this.a);
      return localArrayList;
    }
    throw new AppStoreException(1, localQueryMyAppRes.memo);
  }

  public List<App> getHomeAppsFromLocal()
  {
    ArrayList localArrayList = new ArrayList();
    List localList = AppDao.getDao().getAppListByIds(MyAppDao.getDao().getAllMyAppIds(0), true);
    if (localList == null)
      return localArrayList;
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      AppEntity localAppEntity = (AppEntity)localIterator.next();
      if (this.a.containsKey(localAppEntity.getAppId()))
      {
        App localApp2 = (App)this.a.get(localAppEntity.getAppId());
        localApp2.setAppInfo(localAppEntity);
        localArrayList.add(localApp2);
      }
      else
      {
        App localApp1 = AppFactory.createApp(localAppEntity);
        if (localApp1 != null)
        {
          this.a.put(localApp1.getAppId(), localApp1);
          localApp1.addObserver(this);
          localArrayList.add(localApp1);
        }
      }
    }
    return f(localArrayList);
  }

  public List<App> getHomeAppsFromRemote()
  {
    return new ArrayList();
  }

  public List<App> getThirdAppsFromLocal()
  {
    ArrayList localArrayList = new ArrayList();
    List localList = AppDao.getDao().getAppListByIds(FastLoginAppDao.getDao().getAllFastLoginIds(), true);
    if (localList == null)
      return localArrayList;
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      AppEntity localAppEntity = (AppEntity)localIterator.next();
      if (this.a.containsKey(localAppEntity.getAppId()))
      {
        App localApp2 = (App)this.a.get(localAppEntity.getAppId());
        localApp2.setAppInfo(localAppEntity);
        localArrayList.add(localApp2);
      }
      else
      {
        App localApp1 = AppFactory.createApp(localAppEntity);
        if (localApp1 != null)
        {
          this.a.put(localApp1.getAppId(), localApp1);
          localApp1.addObserver(this);
          localArrayList.add(localApp1);
        }
      }
    }
    return localArrayList;
  }

  public void initAndSyncApps()
  {
    new Thread(new a(this)).start();
  }

  public void initConfig()
  {
    try
    {
      String str = "APP_STORE_FIRST_TIME_" + AppInfo.getInstance().getmProductVersion();
      SharedPreferences localSharedPreferences = AlipayApplication.getInstance().getApplicationContext().getSharedPreferences(str, 0);
      if (localSharedPreferences.getBoolean(str, true))
      {
        a();
        c();
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putBoolean(str, false);
        localEditor.commit();
      }
      b();
      return;
    }
    finally
    {
    }
  }

  public boolean isAppInstalledById(String paramString)
  {
    App localApp = getAppById(paramString);
    return (localApp != null) && (localApp.isInstalled());
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.c = ((MobileAppInfoServiceFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileAppInfoServiceFacade.class));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public List<App> syncAppAndAutoUpdate()
  {
    if (!TimingUtil.a())
      return null;
    try
    {
      getHomeAndAppCenterAppsFromRemote();
      TimingUtil.b();
      return null;
    }
    catch (AppStoreException localAppStoreException)
    {
    }
    return null;
  }

  public App syncOneAppInfo(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    MobileAppInfoVO localMobileAppInfoVO1 = new MobileAppInfoVO();
    localMobileAppInfoVO1.appId = paramString;
    localArrayList.add(localMobileAppInfoVO1);
    QueryMyAppReq localQueryMyAppReq = GeneralRequestBuilder.a();
    localQueryMyAppReq.appList = localArrayList;
    localQueryMyAppReq.pre = false;
    QueryMyAppRes localQueryMyAppRes = this.c.queryMobileAppInfoByAppList(localQueryMyAppReq);
    if (a(localQueryMyAppRes))
    {
      List localList = d(localQueryMyAppRes.appList);
      c(localList);
      a(localList);
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        MobileAppInfoVO localMobileAppInfoVO2 = (MobileAppInfoVO)localIterator.next();
        if ((localMobileAppInfoVO2.appId.equals(paramString)) && (this.a.containsKey(localMobileAppInfoVO2.appId)))
          return (App)this.a.get(localMobileAppInfoVO2.appId);
      }
      return null;
    }
    throw new AppStoreException(1, localQueryMyAppRes.memo);
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    if ((paramObject instanceof InstallStatus))
      a(paramObservable, paramObject);
    while (!(paramObject instanceof AppStatusChangeNotify))
      return;
    a(paramObservable, paramObject);
  }

  public void upgradeDownloadedApps()
  {
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str1 = (String)localEntry.getKey();
      String str2 = (String)localEntry.getValue();
      App localApp = getAppById(str1);
      if (localApp != null)
      {
        localApp.installApp(new String[] { str2 });
        this.b.remove(str1);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.manager.AppManageServiceImpl
 * JD-Core Version:    0.6.2
 */