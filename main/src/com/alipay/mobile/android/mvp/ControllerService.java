package com.alipay.mobile.android.mvp;

import com.alipay.mobile.android.mvp.model.ControllerRegisteredInfo;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public final class ControllerService
{
  private static ControllerService d;
  private final Map<String, ControllerRegisteredInfo<?>> a = new HashMap();
  private final Set<ControllerService.ControllerContextDesc> b = new HashSet();
  private Map<String, AtomicInteger> c = new HashMap();

  private <T> ControllerRegisteredInfo<T> a(Class<T> paramClass, Class<? extends MvpBaseController> paramClass1, ControllerService.ControllerContextDesc paramControllerContextDesc)
  {
    ControllerRegisteredInfo localControllerRegisteredInfo = new ControllerRegisteredInfo();
    localControllerRegisteredInfo.controllerInterfaceClass = paramClass;
    localControllerRegisteredInfo.controllerImplClass = paramClass1;
    localControllerRegisteredInfo.controllerObj = paramControllerContextDesc.controllerObjDesc.ctrlProxyObj;
    localControllerRegisteredInfo.dataObservable = paramControllerContextDesc.dataObservable;
    this.a.put(paramClass.getName(), localControllerRegisteredInfo);
    return localControllerRegisteredInfo;
  }

  private static Object a(MvpBaseController paramMvpBaseController)
  {
    try
    {
      ControllerInvocationHandler localControllerInvocationHandler = new ControllerInvocationHandler(paramMvpBaseController);
      Object localObject = Proxy.newProxyInstance(paramMvpBaseController.getClass().getClassLoader(), paramMvpBaseController.getClass().getInterfaces(), localControllerInvocationHandler);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }

  private static final void a()
  {
    try
    {
      if (d == null)
        d = new ControllerService();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private <T> void a(Class<T> paramClass)
  {
    AtomicInteger localAtomicInteger1 = (AtomicInteger)this.c.get(paramClass.getName());
    if (localAtomicInteger1 == null)
    {
      AtomicInteger localAtomicInteger2 = new AtomicInteger(1);
      this.c.put(paramClass.getName(), localAtomicInteger2);
      return;
    }
    localAtomicInteger1.incrementAndGet();
  }

  private ControllerService.ControllerContextDesc b(Class<? extends MvpBaseController> paramClass)
  {
    if (this.b.isEmpty())
      return null;
    ControllerService.ControllerContextDesc[] arrayOfControllerContextDesc = new ControllerService.ControllerContextDesc[this.b.size()];
    this.b.toArray(arrayOfControllerContextDesc);
    for (int i = 0; i < arrayOfControllerContextDesc.length; i++)
    {
      ControllerService.ControllerContextDesc localControllerContextDesc = arrayOfControllerContextDesc[i];
      if ((localControllerContextDesc.controllerObjDesc != null) && (localControllerContextDesc.controllerObjDesc.ctrlImplClass == paramClass))
        return localControllerContextDesc;
    }
    return null;
  }

  public static final ControllerService getInstance()
  {
    if (d == null)
      a();
    return d;
  }

  public final <T> T findController(Class<T> paramClass)
  {
    ControllerRegisteredInfo localControllerRegisteredInfo = (ControllerRegisteredInfo)this.a.get(paramClass.getName());
    if (localControllerRegisteredInfo != null)
      return localControllerRegisteredInfo.controllerObj;
    return null;
  }

  public final <T> ControllerRegisteredInfo<T> registerController(Class<T> paramClass, Class<? extends MvpBaseController> paramClass1)
  {
    try
    {
      ControllerService.ControllerContextDesc localControllerContextDesc1 = b(paramClass1);
      if ((localControllerContextDesc1 != null) && (localControllerContextDesc1.controllerObjDesc != null))
      {
        ControllerRegisteredInfo localControllerRegisteredInfo2 = (ControllerRegisteredInfo)this.a.get(paramClass.getName());
        if (localControllerRegisteredInfo2 != null)
        {
          a(paramClass);
          return localControllerRegisteredInfo2;
        }
        ControllerRegisteredInfo localControllerRegisteredInfo3 = a(paramClass, paramClass1, localControllerContextDesc1);
        a(paramClass);
        return localControllerRegisteredInfo3;
      }
      if (localControllerContextDesc1 != null)
        this.b.remove(localControllerContextDesc1);
      ControllerService.ControllerContextDesc localControllerContextDesc2 = new ControllerService.ControllerContextDesc(this);
      ControllerService.ControllerObjDesc localControllerObjDesc = new ControllerService.ControllerObjDesc(this);
      localControllerObjDesc.ctrlImplClass = paramClass;
      MvpBaseController localMvpBaseController = (MvpBaseController)paramClass1.newInstance();
      localMvpBaseController.setDataObservable(new DataObservableImpl());
      localControllerObjDesc.ctrlImplObj = localMvpBaseController;
      localControllerObjDesc.ctrlProxyObj = a(localControllerObjDesc.ctrlImplObj);
      localControllerContextDesc2.controllerObjDesc = localControllerObjDesc;
      localControllerContextDesc2.dataObservable = localControllerContextDesc2.controllerObjDesc.ctrlImplObj.getDataObservable();
      this.b.add(localControllerContextDesc2);
      ControllerRegisteredInfo localControllerRegisteredInfo1 = a(paramClass, paramClass1, localControllerContextDesc2);
      a(paramClass);
      return localControllerRegisteredInfo1;
    }
    catch (Exception localException2)
    {
      Object localObject1;
      try
      {
        throw new RuntimeException(localException2);
      }
      finally
      {
        localException1 = localException2;
      }
      if (localException1 == null)
        a(paramClass);
      throw localObject1;
    }
    finally
    {
      while (true)
        Exception localException1 = null;
    }
  }

  public final <T> void unregisterController(Class<T> paramClass)
  {
    AtomicInteger localAtomicInteger = (AtomicInteger)this.c.get(paramClass.getName());
    if (localAtomicInteger != null)
      if (localAtomicInteger.decrementAndGet() <= 0);
    ControllerRegisteredInfo localControllerRegisteredInfo;
    do
    {
      return;
      this.c.remove(paramClass.getName());
      localControllerRegisteredInfo = (ControllerRegisteredInfo)this.a.get(paramClass.getName());
    }
    while (localControllerRegisteredInfo == null);
    this.a.remove(paramClass.getName());
    Class localClass = localControllerRegisteredInfo.controllerImplClass;
    ControllerService.ControllerContextDesc localControllerContextDesc = b(localClass);
    Class[] arrayOfClass;
    if (localControllerContextDesc != null)
      arrayOfClass = localClass.getInterfaces();
    for (int i = 0; ; i++)
    {
      int j = arrayOfClass.length;
      int k = 0;
      if (i < j)
      {
        if (this.a.containsKey(arrayOfClass[i].getName()))
          k = 1;
      }
      else
      {
        if (k == 0)
          this.b.remove(localControllerContextDesc);
        if (!this.a.isEmpty())
          break;
        this.c.clear();
        this.b.clear();
        this.c.clear();
        d = null;
        return;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.ControllerService
 * JD-Core Version:    0.6.2
 */