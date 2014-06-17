package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.domain.MyAppEntity;
import java.util.List;

public class MyAppDao extends DaoTemplate
{
  protected static final String TAG = "MyAppDao";
  private static MyAppDao instance = new MyAppDao();

  public static MyAppDao getDao()
  {
    if (instance == null)
      instance = new MyAppDao();
    return instance;
  }

  public List<String> getAllMyAppIds(int paramInt)
  {
    return (List)excute(new v(this, paramInt));
  }

  public List<MyAppEntity> getAllMyApps()
  {
    return (List)excute(new t(this));
  }

  public long getMinRank()
  {
    MyAppEntity localMyAppEntity = (MyAppEntity)excute(new ab(this));
    if (localMyAppEntity != null)
      return localMyAppEntity.getUserRank() - 1L;
    return -9223372036854775808L;
  }

  public MyAppEntity getMyAppById(String paramString)
  {
    if (paramString == null)
      return null;
    return (MyAppEntity)excute(new u(this, paramString));
  }

  public boolean isAddedToMyApp(String paramString)
  {
    return ((Boolean)excute(new aa(this, paramString))).booleanValue();
  }

  public void moveToAppCenter(String paramString)
  {
    if (paramString != null)
    {
      MyAppEntity localMyAppEntity = getMyAppById(paramString);
      if (localMyAppEntity != null)
      {
        localMyAppEntity.setAppDisplayPlace(1);
        saveOrUpdateMyAppEntity(localMyAppEntity);
      }
    }
  }

  public void moveToHome(String paramString)
  {
    if (paramString != null)
    {
      MyAppEntity localMyAppEntity = getMyAppById(paramString);
      if (localMyAppEntity != null)
      {
        localMyAppEntity.setAppDisplayPlace(0);
        saveOrUpdateMyAppEntity(localMyAppEntity);
      }
    }
  }

  public void removeMyAppById(String paramString)
  {
    excute(new w(this, paramString));
  }

  public void saveOrUpdateMyAppEntity(MyAppEntity paramMyAppEntity)
  {
    excute(new x(this, paramMyAppEntity));
  }

  public void saveOrUpdateMyAppEntitys(List<MyAppEntity> paramList)
  {
    excute(new y(this, paramList));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.MyAppDao
 * JD-Core Version:    0.6.2
 */