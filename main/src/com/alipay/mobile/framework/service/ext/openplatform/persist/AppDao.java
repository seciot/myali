package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class AppDao extends DaoTemplate
{
  protected static final String TAG = "AppDao";
  private static AppDao instance = new AppDao();

  private List<AppEntity> getAppsByPosition(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    return (List)excute(new e(this, paramBoolean, paramLong2, paramLong1));
  }

  public static AppDao getDao()
  {
    if (instance == null)
      instance = new AppDao();
    return instance;
  }

  public List<AppEntity> getAlipayAppIds()
  {
    return (List)excute(new h(this));
  }

  public List<AppEntity> getAlipayApps()
  {
    return (List)excute(new f(this));
  }

  public List<AppEntity> getAllAppIds()
  {
    return (List)excute(new i(this));
  }

  public List<AppEntity> getAllApps(boolean paramBoolean)
  {
    return (List)excute(new a(this, paramBoolean));
  }

  public LinkedHashMap<String, String> getApkAppPackages()
  {
    return (LinkedHashMap)excute(new g(this));
  }

  public AppEntity getAppByAppId(String paramString)
  {
    if (paramString == null)
      return null;
    return (AppEntity)excute(new j(this, paramString));
  }

  public List<AppEntity> getAppCenterApps()
  {
    return getAppsByPosition(11L, 65536L, true);
  }

  public List<AppEntity> getAppListByIds(List<String> paramList, boolean paramBoolean)
  {
    if (paramList == null)
      return new ArrayList();
    return (List)excute(new k(this, paramBoolean, paramList));
  }

  public List<AppEntity> getHomeApps()
  {
    return getAppsByPosition(0L, 11L, true);
  }

  public void removeAppEntityById(String paramString)
  {
    excute(new d(this, paramString));
  }

  public void saveOrUpdateAppEntity(AppEntity paramAppEntity)
  {
    excute(new l(this, paramAppEntity));
  }

  public void saveOrUpdateAppEntitys(List<AppEntity> paramList)
  {
    excute(new b(this, paramList));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.AppDao
 * JD-Core Version:    0.6.2
 */