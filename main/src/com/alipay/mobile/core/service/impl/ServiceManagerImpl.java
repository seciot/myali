package com.alipay.mobile.core.service.impl;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.mobile.core.ServiceManager;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.MicroService;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ServiceManagerImpl
  implements ServiceManager
{
  private Map<String, Object> a = new HashMap();

  public void attachContext(MicroApplicationContext paramMicroApplicationContext)
  {
  }

  public void exit()
  {
    Iterator localIterator = this.a.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.a.clear();
        return;
      }
      Object localObject = localIterator.next();
      if ((localObject instanceof MicroService))
        ((MicroService)localObject).destroy(null);
    }
  }

  public <T> T findServiceByInterface(String paramString)
  {
    return this.a.get(paramString);
  }

  public void onDestroyService(MicroService paramMicroService)
  {
    if (paramMicroService == null)
      return;
    Iterator localIterator = this.a.keySet().iterator();
    Object localObject;
    if (!localIterator.hasNext())
      localObject = null;
    while (true)
    {
      this.a.remove(localObject);
      return;
      localObject = (String)localIterator.next();
      if ((MicroService)this.a.get(localObject) != paramMicroService)
        break;
    }
  }

  public <T> boolean registerService(String paramString, T paramT)
  {
    if (this.a.containsKey(paramString))
      return false;
    this.a.put(paramString, paramT);
    return true;
  }

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
    Iterator localIterator = this.a.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Object localObject = localIterator.next();
      if ((localObject instanceof MicroService))
        ((MicroService)localObject).restoreState(paramSharedPreferences);
    }
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
    Iterator localIterator = this.a.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Object localObject = localIterator.next();
      if ((localObject instanceof MicroService))
        ((MicroService)localObject).saveState(paramEditor);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.service.impl.ServiceManagerImpl
 * JD-Core Version:    0.6.2
 */