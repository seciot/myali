package com.alipay.mobile.security.gesture.service;

import android.os.Bundle;
import com.alipay.mobile.aspect.FrameworkPointCutManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.GestureCallBack;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class GestureServiceImpl extends GestureService
{
  final String a = "GestureServiceImpl";
  private List<GestureCallBack> b = new CopyOnWriteArrayList();
  private long c = 0L;
  private Object d = new Object();

  private GestureServiceImpl.GestureEnum a()
  {
    UserInfo localUserInfo = ((AuthService)getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).gestureGetUserInfo();
    if (localUserInfo == null)
      return GestureServiceImpl.GestureEnum.NONE;
    if ("true".equals(localUserInfo.getGestureSkipStr()))
      return GestureServiceImpl.GestureEnum.NONE;
    String str = localUserInfo.getGesturePwd();
    if ((str != null) && (!"".equals(str)))
      return GestureServiceImpl.GestureEnum.VALIDATEGESTURE;
    return GestureServiceImpl.GestureEnum.SETTINGGESTURE;
  }

  private void a(boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("setORcheck", paramBoolean);
    showGestureApp(localBundle);
  }

  private GestureServiceImpl.GestureEnum b(boolean paramBoolean)
  {
    UserInfo localUserInfo = ((AuthService)getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
    if (localUserInfo == null)
      return GestureServiceImpl.GestureEnum.NONE;
    if ("true".equals(localUserInfo.getGestureSkipStr()))
      return GestureServiceImpl.GestureEnum.NONE;
    String str = localUserInfo.getGesturePwd();
    if ((str == null) || ("".equals(str)))
      return GestureServiceImpl.GestureEnum.SETTINGGESTURE;
    if (paramBoolean)
      return GestureServiceImpl.GestureEnum.VALIDATEGESTURE;
    if (!GestureDataCenter.getInstance().isNeedAuthGesture())
      return GestureServiceImpl.GestureEnum.NONE;
    return GestureServiceImpl.GestureEnum.VALIDATEGESTURE;
  }

  private void b()
  {
    if (AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp() == null);
    for (boolean bool = false; ; bool = "20000006".equals(AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp().getAppId()))
    {
      if (!bool)
        notifyunLockApp();
      return;
    }
  }

  public void callback(boolean paramBoolean)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      GestureCallBack localGestureCallBack = (GestureCallBack)localIterator.next();
      if (localGestureCallBack != null)
      {
        this.b.remove(localGestureCallBack);
        localGestureCallBack.onGestureResult(paramBoolean);
      }
    }
    if (paramBoolean)
      this.c = System.currentTimeMillis();
  }

  public String gesture()
  {
    gesture(null);
    return "";
  }

  public void gesture(GestureCallBack paramGestureCallBack)
  {
    boolean bool = true;
    if (paramGestureCallBack != null)
      this.b.add(paramGestureCallBack);
    GestureServiceImpl.GestureEnum localGestureEnum = b(bool);
    switch (c.a[localGestureEnum.ordinal()])
    {
    default:
      callback(false);
      return;
    case 1:
    case 2:
    }
    while (true)
    {
      try
      {
        if (localGestureEnum != GestureServiceImpl.GestureEnum.VALIDATEGESTURE)
          break label76;
        a(bool);
        return;
      }
      catch (AppLoadException localAppLoadException)
      {
      }
      break;
      label76: bool = false;
    }
  }

  public void notifyunLockApp()
  {
    synchronized (this.d)
    {
      try
      {
        this.d.notifyAll();
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    GestureDataCenter.getInstance().setNeedAuthGesture(true);
    FrameworkPointCutManager.getInstance().registerPointCutAdvice("void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)", new a(this));
    FrameworkPointCutManager.getInstance().registerPointCutAdvice("void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()", new b(this));
  }

  protected void onDestroy(Bundle paramBundle)
  {
    GestureDataCenter.getInstance().setNeedAuthGesture(true);
  }

  public boolean restoreStateValidateGesture(GestureCallBack paramGestureCallBack)
  {
    this.b.add(paramGestureCallBack);
    GestureServiceImpl.GestureEnum localGestureEnum = a();
    switch (c.a[localGestureEnum.ordinal()])
    {
    default:
      callback(false);
    case 1:
    }
    long l1;
    long l2;
    do
    {
      return false;
      l1 = System.currentTimeMillis();
      l2 = Math.abs(l1 - this.c);
      GestureDataCenter.getInstance().getClass();
    }
    while (l2 < 300000L);
    b();
    try
    {
      a(true);
      this.c = l1;
      return true;
    }
    catch (AppLoadException localAppLoadException)
    {
      callback(false);
    }
    return false;
  }

  public boolean setGesture()
  {
    return setGesture(null);
  }

  public boolean setGesture(Bundle paramBundle, GestureCallBack paramGestureCallBack)
  {
    this.b.add(paramGestureCallBack);
    if (paramBundle.getBoolean("switchAccount", true));
    try
    {
      GestureServiceImpl.GestureEnum localGestureEnum = b(true);
      switch (c.a[localGestureEnum.ordinal()])
      {
      default:
      case 2:
      }
      while (true)
      {
        callback(false);
        return false;
        try
        {
          paramBundle.putBoolean("setORcheck", false);
          showGestureApp(paramBundle);
          return false;
        }
        catch (AppLoadException localAppLoadException2)
        {
        }
      }
      setGesture(paramGestureCallBack);
      return false;
    }
    catch (AppLoadException localAppLoadException1)
    {
      localAppLoadException1.printStackTrace();
      callback(false);
    }
    return false;
  }

  public boolean setGesture(GestureCallBack paramGestureCallBack)
  {
    if ((paramGestureCallBack != null) && (!this.b.contains(paramGestureCallBack)))
      this.b.add(paramGestureCallBack);
    GestureServiceImpl.GestureEnum localGestureEnum = b(true);
    switch (c.a[localGestureEnum.ordinal()])
    {
    default:
      callback(false);
      return false;
    case 2:
    }
    try
    {
      a(false);
      return true;
    }
    catch (AppLoadException localAppLoadException)
    {
      callback(false);
    }
    return false;
  }

  public void showGestureApp(Bundle paramBundle)
  {
    try
    {
      Class.forName("com.alipay.mobile.core.impl.MicroApplicationContextImpl").getDeclaredMethod("doStartApp", new Class[] { String.class, String.class, Bundle.class }).invoke(getMicroApplicationContext(), new Object[] { "20000006", "20000006", paramBundle });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }

  public boolean startGestureIfNecessary(boolean paramBoolean)
  {
    GestureServiceImpl.GestureEnum localGestureEnum = b(paramBoolean);
    switch (c.a[localGestureEnum.ordinal()])
    {
    default:
      return false;
    case 1:
    }
    b();
    try
    {
      a(true);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public boolean sycnStartGestureIfNecessary()
  {
    try
    {
      if (!startGestureIfNecessary(false))
        return false;
      GestureDataCenter.getInstance().setNeedAuthGesture(true);
      synchronized (this.d)
      {
        try
        {
          this.d.wait();
          return true;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public void validateGesture()
  {
    startGestureIfNecessary(true);
  }

  public void validateGesture(GestureCallBack paramGestureCallBack)
  {
    this.b.add(paramGestureCallBack);
    GestureServiceImpl.GestureEnum localGestureEnum = b(true);
    switch (c.a[localGestureEnum.ordinal()])
    {
    default:
    case 1:
    }
    while (true)
    {
      callback(false);
      return;
      try
      {
        a(true);
        return;
      }
      catch (AppLoadException localAppLoadException)
      {
      }
    }
  }

  public boolean validateStartClientGesture(GestureCallBack paramGestureCallBack)
  {
    this.b.add(paramGestureCallBack);
    GestureServiceImpl.GestureEnum localGestureEnum = a();
    switch (c.a[localGestureEnum.ordinal()])
    {
    default:
      callback(false);
      return false;
    case 1:
    }
    try
    {
      a(true);
      return true;
    }
    catch (AppLoadException localAppLoadException)
    {
      callback(false);
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.service.GestureServiceImpl
 * JD-Core Version:    0.6.2
 */