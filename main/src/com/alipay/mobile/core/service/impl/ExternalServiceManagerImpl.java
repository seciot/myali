package com.alipay.mobile.core.service.impl;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;
import com.alipay.mobile.framework.service.MicroService;
import com.alipay.mobile.framework.service.ServiceDescription;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.ExternalServiceManager;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ExternalServiceManagerImpl extends ExternalServiceManager
{
  private Map<String, ServiceDescription> a = new HashMap();
  private Map<String, ExternalService> b = new ConcurrentHashMap();

  public ExternalService getExternalService(String paramString)
  {
    ExternalService localExternalService1 = (ExternalService)this.b.get(paramString);
    if (localExternalService1 == null)
    {
      BundleContext localBundleContext = AlipayApplication.getInstance().getBundleContext();
      if (localBundleContext.isLazyBundleByServiceName(paramString))
        localBundleContext.loadBundle(localBundleContext.findBundleNameByServiceName(paramString));
      if (this.a.get(paramString) == null)
        localExternalService1 = null;
    }
    else
    {
      return localExternalService1;
    }
    try
    {
      ServiceDescription localServiceDescription = (ServiceDescription)this.a.get(paramString);
      ExternalService localExternalService2 = (ExternalService)localServiceDescription.getClassLoader().loadClass(localServiceDescription.getClassName()).newInstance();
      localExternalService2.attachContext(getMicroApplicationContext());
      localExternalService2.create(null);
      this.b.put(paramString, localExternalService2);
      return localExternalService2;
    }
    catch (InstantiationException localInstantiationException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void registerExtnernalService(ServiceDescription paramServiceDescription)
  {
    if (this.a.containsKey(paramServiceDescription.getInterfaceClass()))
      return;
    if (!paramServiceDescription.isLazy());
    try
    {
      ExternalService localExternalService = (ExternalService)paramServiceDescription.getClassLoader().loadClass(paramServiceDescription.getClassName()).newInstance();
      localExternalService.attachContext(getMicroApplicationContext());
      localExternalService.create(null);
      this.b.put(paramServiceDescription.getInterfaceClass(), localExternalService);
      this.a.put(paramServiceDescription.getInterfaceClass(), paramServiceDescription);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    catch (InstantiationException localInstantiationException)
    {
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
  }

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
    String str1 = paramSharedPreferences.getString("_externalServiceClass_", null);
    HashSet localHashSet;
    Iterator localIterator2;
    label59: Iterator localIterator3;
    if (str1 != null)
    {
      Set localSet = (Set)JSON.parseObject(str1, new ExternalServiceManagerImpl.1(this), new Feature[0]);
      if (localSet == null)
        return;
      localHashSet = new HashSet();
      localIterator2 = localSet.iterator();
      if (localIterator2.hasNext())
        break label140;
      localIterator3 = localHashSet.iterator();
    }
    while (true)
    {
      if (!localIterator3.hasNext())
      {
        Iterator localIterator1 = this.b.values().iterator();
        while (localIterator1.hasNext())
        {
          Object localObject = localIterator1.next();
          if ((localObject instanceof MicroService))
            ((MicroService)localObject).restoreState(paramSharedPreferences);
        }
        break;
        label140: String str2 = (String)localIterator2.next();
        if (this.b.containsKey(str2))
          break label59;
        localHashSet.add(str2);
        break label59;
      }
      getExternalService((String)localIterator3.next());
    }
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
    paramEditor.putString("_externalServiceClass_", JSON.toJSONString(this.b.keySet())).commit();
    Iterator localIterator = this.b.values().iterator();
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
 * Qualified Name:     com.alipay.mobile.core.service.impl.ExternalServiceManagerImpl
 * JD-Core Version:    0.6.2
 */