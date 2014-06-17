package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.domain.FastLoginAppEntity;
import java.util.ArrayList;
import java.util.List;

public class FastLoginAppDao extends DaoTemplate
{
  protected static final String TAG = "MyAppDao";
  private static FastLoginAppDao instance = new FastLoginAppDao();

  public static FastLoginAppDao getDao()
  {
    if (instance == null)
      instance = new FastLoginAppDao();
    return instance;
  }

  public void addToFastLogin(String paramString)
  {
    if (paramString != null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramString);
      addToFastLogin(localArrayList);
    }
  }

  public void addToFastLogin(List<String> paramList)
  {
    if (paramList == null)
      return;
    excute(new q(this, paramList));
  }

  public List<FastLoginAppEntity> getAllFastLoginApps()
  {
    return (List)excute(new m(this));
  }

  public List<String> getAllFastLoginIds()
  {
    return (List)excute(new n(this));
  }

  public boolean isAddedToFastLogin(String paramString)
  {
    return ((Boolean)excute(new s(this, paramString))).booleanValue();
  }

  public void removeAllApps()
  {
    excute(new p(this));
  }

  public void removeFastLoginById(String paramString)
  {
    excute(new o(this, paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.FastLoginAppDao
 * JD-Core Version:    0.6.2
 */