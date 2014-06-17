package com.alipay.mobile.core.app.impl;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.reflect.ReflectUtil;
import com.alipay.mobile.core.ApplicationManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.ExternalService;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

public class ApplicationManagerImpl
  implements ApplicationManager
{
  static final String TAG = ApplicationManager.class.getSimpleName();
  private Stack<MicroApplication> a = new Stack();
  private Map<String, MicroApplication> b = new HashMap();
  private List<ApplicationDescription> c = new ArrayList();
  private String d;
  private MicroApplicationContext e;

  private MicroApplication a(ApplicationDescription paramApplicationDescription, Bundle paramBundle)
  {
    String str = paramApplicationDescription.getClassName();
    Object localObject;
    try
    {
      localObject = ReflectUtil.getInstance(paramApplicationDescription.getClassLoader(), str);
      if (!(localObject instanceof MicroApplication))
        throw new AppLoadException("App " + str + " is not a App");
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new AppLoadException("App ClassNotFoundException: " + localClassNotFoundException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AppLoadException("App IllegalAccessException: " + localIllegalAccessException);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new AppLoadException("App InstantiationException: " + localInstantiationException);
    }
    MicroApplication localMicroApplication = (MicroApplication)localObject;
    localMicroApplication.setAppId(paramApplicationDescription.getAppId());
    localMicroApplication.attachContext(this.e);
    localMicroApplication.create(paramBundle);
    return localMicroApplication;
  }

  private void a(String paramString, Bundle paramBundle)
  {
    LogCatLog.v(TAG, "doRestart() targetAppId: " + paramString);
    MicroApplication localMicroApplication1 = (MicroApplication)this.b.get(paramString);
    while (true)
    {
      MicroApplication localMicroApplication2 = (MicroApplication)this.a.peek();
      if (localMicroApplication1 == localMicroApplication2)
      {
        localMicroApplication1.restart(paramBundle);
        return;
      }
      this.a.pop();
      LogCatLog.v(TAG, "doRestart() pop appId: " + localMicroApplication2.getAppId());
      localMicroApplication2.destroy(paramBundle);
    }
  }

  private boolean a(String paramString1, String paramString2, Bundle paramBundle)
  {
    ApplicationDescription localApplicationDescription = findDescriptionById(paramString2);
    if ((localApplicationDescription != null) && (!localApplicationDescription.isLagacyApp()))
      try
      {
        MicroApplication localMicroApplication = a(localApplicationDescription, paramBundle);
        localMicroApplication.setSourceId(paramString1);
        LogCatLog.v(TAG, "createApp() completed: " + paramString2);
        if (!this.a.isEmpty())
          ((MicroApplication)this.a.peek()).stop();
        this.a.push(localMicroApplication);
        this.b.put(paramString2, localMicroApplication);
        localMicroApplication.start();
        return true;
      }
      catch (AppLoadException localAppLoadException)
      {
        localAppLoadException.printStackTrace();
        return false;
      }
    return false;
  }

  private boolean b(String paramString1, String paramString2, Bundle paramBundle)
  {
    MicroApplication localMicroApplication;
    try
    {
      localMicroApplication = c(paramString1, paramString2, paramBundle);
      if (localMicroApplication == null)
        throw new AppLoadException("create webapp fail");
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
      return false;
    }
    localMicroApplication.setSourceId(paramString1);
    LogCatLog.v(TAG, "createApp() completed: " + paramString2);
    if (!this.a.isEmpty())
      ((MicroApplication)this.a.peek()).stop();
    this.a.push(localMicroApplication);
    this.b.put(paramString2, localMicroApplication);
    localMicroApplication.start();
    return true;
  }

  private MicroApplication c(String paramString1, String paramString2, Bundle paramBundle)
  {
    BundleContext localBundleContext = AlipayApplication.getInstance().getBundleContext();
    if (localBundleContext.isLazyBundleByServiceName("com.alipay.mobile.framework.service.WebAppService"))
      localBundleContext.loadBundle(localBundleContext.findBundleNameByServiceName("com.alipay.mobile.framework.service.WebAppService"));
    ExternalService localExternalService = this.e.getExtServiceByInterface("com.alipay.mobile.framework.service.WebAppService");
    if (localExternalService != null)
      try
      {
        MicroApplication localMicroApplication = (MicroApplication)this.e.getApplicationContext().getClassLoader().loadClass("com.alipay.mobile.framework.service.WebAppService").getDeclaredMethod("createWebApp", new Class[] { String.class, String.class, Bundle.class }).invoke(localExternalService, new Object[] { paramString1, paramString2, paramBundle });
        return localMicroApplication;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        localClassNotFoundException.printStackTrace();
        return null;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localNoSuchMethodException.printStackTrace();
        return null;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
        return null;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
        return null;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localInvocationTargetException.printStackTrace();
      }
    return null;
  }

  public void addDescription(ApplicationDescription paramApplicationDescription)
  {
    try
    {
      this.c.add(paramApplicationDescription);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void addDescription(List<ApplicationDescription> paramList)
  {
    try
    {
      this.c.addAll(paramList);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void attachContext(MicroApplicationContext paramMicroApplicationContext)
  {
    this.e = paramMicroApplicationContext;
  }

  public void clear()
  {
    this.a.clear();
    this.b.clear();
  }

  public void clearTop(MicroApplication paramMicroApplication)
  {
    MicroApplication localMicroApplication = (MicroApplication)this.a.peek();
    if (paramMicroApplication != localMicroApplication)
    {
      this.a.pop();
      LogCatLog.v(TAG, "clearTop() pop appId: " + localMicroApplication.getAppId());
      this.b.remove(localMicroApplication.getAppId());
    }
  }

  public void exit()
  {
    while (true)
    {
      if (this.a.isEmpty())
      {
        this.b.clear();
        return;
      }
      MicroApplication localMicroApplication = (MicroApplication)this.a.pop();
      LogCatLog.v(TAG, "exit() pop appId: " + localMicroApplication.getAppId());
      localMicroApplication.destroy(null);
    }
  }

  public MicroApplication findAppById(String paramString)
  {
    return (MicroApplication)this.b.get(paramString);
  }

  public ApplicationDescription findDescriptionById(String paramString)
  {
    try
    {
      BundleContext localBundleContext = AlipayApplication.getInstance().getBundleContext();
      if (localBundleContext.isLazyBundleByAppId(paramString))
        localBundleContext.loadBundle(localBundleContext.findBundleNameByAppId(paramString));
      Iterator localIterator = this.c.iterator();
      boolean bool1 = localIterator.hasNext();
      ApplicationDescription localApplicationDescription;
      if (!bool1)
        localApplicationDescription = null;
      while (true)
      {
        return localApplicationDescription;
        localApplicationDescription = (ApplicationDescription)localIterator.next();
        boolean bool2 = paramString.equalsIgnoreCase(localApplicationDescription.getAppId());
        if (!bool2)
          break;
      }
    }
    finally
    {
    }
  }

  public ApplicationDescription findDescriptionByName(String paramString)
  {
    try
    {
      Iterator localIterator;
      ApplicationDescription localApplicationDescription;
      if ((this.c != null) && (!TextUtils.isEmpty(paramString)))
      {
        localIterator = this.c.iterator();
        boolean bool1 = localIterator.hasNext();
        if (bool1);
      }
      else
      {
        localApplicationDescription = null;
      }
      while (true)
      {
        return localApplicationDescription;
        localApplicationDescription = (ApplicationDescription)localIterator.next();
        if (localApplicationDescription == null)
          break;
        boolean bool2 = paramString.equalsIgnoreCase(localApplicationDescription.getName());
        if (!bool2)
          break;
      }
    }
    finally
    {
    }
  }

  public void finishApp(String paramString1, String paramString2, Bundle paramBundle)
  {
    if (!this.b.containsKey(paramString1))
      new StringBuilder(String.valueOf(paramString1)).append(" is not a App").toString();
    MicroApplication localMicroApplication = (MicroApplication)this.b.get(paramString2);
    if (localMicroApplication != null)
    {
      localMicroApplication.destroy(paramBundle);
      return;
    }
    new StringBuilder("can't find App: ").append(paramString2).toString();
  }

  public MicroApplication getTopRunningApp()
  {
    if (!this.a.isEmpty())
      return (MicroApplication)this.a.peek();
    return null;
  }

  public void onDestroyApp(MicroApplication paramMicroApplication)
  {
    this.a.remove(paramMicroApplication);
    this.b.remove(paramMicroApplication.getAppId());
    LogCatLog.v(TAG, "onDestroyApp() pop appId: " + paramMicroApplication.getAppId());
  }

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
    this.d = paramSharedPreferences.getString("ApplicationManager.EntryApp", null);
    String str1 = paramSharedPreferences.getString("ApplicationManager", null);
    Iterator localIterator;
    if (str1 != null)
    {
      localIterator = JSON.parseArray(str1, String.class).iterator();
      if (localIterator.hasNext());
    }
    else
    {
      return;
    }
    String str2 = (String)localIterator.next();
    while (true)
    {
      try
      {
        ApplicationDescription localApplicationDescription = findDescriptionById(str2);
        if (localApplicationDescription == null)
          break label165;
        localObject = a(localApplicationDescription, null);
        if (localObject == null)
          break;
        ((MicroApplication)localObject).setSourceId(str2);
        ((MicroApplication)localObject).restoreState(paramSharedPreferences);
        this.a.push(localObject);
        LogCatLog.v(TAG, "restoreState() App pushed: " + ((MicroApplication)localObject).getAppId());
        this.b.put(str2, localObject);
      }
      catch (AppLoadException localAppLoadException)
      {
      }
      break;
      label165: MicroApplication localMicroApplication = c("", str2, null);
      Object localObject = localMicroApplication;
    }
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        paramEditor.putString("ApplicationManager", JSON.toJSONString(localArrayList));
        paramEditor.putString("ApplicationManager.EntryApp", this.d);
        return;
      }
      MicroApplication localMicroApplication = (MicroApplication)localIterator.next();
      localArrayList.add(localMicroApplication.getAppId());
      localMicroApplication.saveState(paramEditor);
    }
  }

  public void setEntryAppName(String paramString)
  {
    this.d = paramString;
  }

  public void startApp(String paramString1, String paramString2, Bundle paramBundle)
  {
    if (paramString2 == null)
      try
      {
        throw new RuntimeException("targetAppId should not be null");
      }
      finally
      {
      }
    LogCatLog.v(TAG, "startApp() sourceAppId: " + paramString1 + " targetAppId: " + paramString2 + " currentThread: " + Thread.currentThread().getId());
    if (!this.b.containsKey(paramString1))
      new StringBuilder(String.valueOf(paramString1)).append(" is not a App or had not start up").toString();
    if (this.b.containsKey(paramString2))
      a(paramString2, paramBundle);
    while (true)
    {
      return;
      if (!a(paramString1, paramString2, paramBundle))
      {
        boolean bool = b(paramString1, paramString2, paramBundle);
        if (!bool);
      }
    }
  }

  public void startEntryApp(Bundle paramBundle)
  {
    startApp(null, findDescriptionByName(this.d).getAppId(), paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.app.impl.ApplicationManagerImpl
 * JD-Core Version:    0.6.2
 */