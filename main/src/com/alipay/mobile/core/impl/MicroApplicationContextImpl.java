package com.alipay.mobile.core.impl;

import a.a.a.a;
import a.a.a.e;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.aspect.FrameworkPointCutManager;
import com.alipay.mobile.aspect.aj.Framework;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.core.ApplicationManager;
import com.alipay.mobile.core.ServiceManager;
import com.alipay.mobile.core.app.impl.ApplicationManagerImpl;
import com.alipay.mobile.core.app.impl.LocalBroadcastManagerWrapper;
import com.alipay.mobile.core.exception.FrameworkExceptionHandler;
import com.alipay.mobile.core.init.BootLoader;
import com.alipay.mobile.core.init.impl.BootLoaderImpl;
import com.alipay.mobile.core.service.impl.ServiceManagerImpl;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.MicroContent;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.app.ui.ActivityResponsable;
import com.alipay.mobile.framework.interfaces.InterfaceManager;
import com.alipay.mobile.framework.service.MicroService;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.ExternalServiceManager;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class MicroApplicationContextImpl
  implements MicroApplicationContext
{
  private AtomicBoolean a = new AtomicBoolean(false);
  private Handler b = new Handler(Looper.getMainLooper());
  private HandlerThread c;
  private Handler d;
  private AlipayApplication e;
  private Activity f;
  private ServiceManager g;
  private ApplicationManager h;
  private Application.ActivityLifecycleCallbacks i;
  private InterfaceManager j;
  private BootLoader k;
  LocalBroadcastManagerWrapper mLocalBroadcastManagerWrapper;

  static
  {
    a.a.b.b.b localb = new a.a.b.b.b("MicroApplicationContextImpl.java", MicroApplicationContextImpl.class);
  }

  private Class<?> a(String paramString)
  {
    Class localClass;
    try
    {
      localClass = this.e.getBaseContext().getClassLoader().loadClass(paramString);
      if (localClass == null)
        throw new ActivityNotFoundException("entry class must be set.");
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new ActivityNotFoundException(localClassNotFoundException.getMessage());
    }
    return localClass;
  }

  private void a()
  {
    File localFile = this.e.getCacheDir().getAbsoluteFile();
    String[] arrayOfString;
    int i1;
    if (localFile.exists())
    {
      arrayOfString = localFile.list(new MicroApplicationContextImpl.5(this));
      if ((arrayOfString != null) && (arrayOfString.length > 0))
        i1 = arrayOfString.length;
    }
    for (int i2 = 0; ; i2++)
    {
      if (i2 >= i1)
        return;
      String str = arrayOfString[i2];
      execCommand("rm -r -f " + localFile + File.separatorChar + str);
    }
  }

  private static void a(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle != null)
    {
      paramIntent.replaceExtras(new Bundle());
      paramIntent.putExtra("mExtras", localBundle);
    }
  }

  public void Alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if ((this.f instanceof ActivityResponsable))
    {
      ((ActivityResponsable)this.f).alert(paramString1, paramString2, paramString3, paramOnClickListener1, paramString4, paramOnClickListener2);
      return;
    }
    throw new IllegalAccessError("current Activity must be ActivityInterface。");
  }

  public void Toast(String paramString, int paramInt)
  {
    if ((this.f instanceof ActivityResponsable))
    {
      ((ActivityResponsable)this.f).toast(paramString, paramInt);
      return;
    }
    throw new IllegalAccessError("current Activity must be ActivityInterface。");
  }

  public void attachContext(AlipayApplication paramAlipayApplication)
  {
    this.e = paramAlipayApplication;
    new StringBuilder("attachContext(").append(paramAlipayApplication).append(")").toString();
    AlipayApplication localAlipayApplication = this.e;
    if (Build.VERSION.SDK_INT >= 14)
    {
      this.i = new MicroApplicationContextImpl.1(this);
      new StringBuilder("registerActivityLifecycleCallbacks(").append(localAlipayApplication).append(")").toString();
      ((Application)localAlipayApplication.getBaseContext()).registerActivityLifecycleCallbacks(this.i);
    }
    FrameworkExceptionHandler.getInstance().init(this.e);
    CacheSet.getInstance(this.e);
    this.c = new HandlerThread("WorkThread");
    this.c.start();
    this.d = new Handler(this.c.getLooper());
    FrameworkPointCutManager.createInstance();
    ServiceManagerImpl localServiceManagerImpl = new ServiceManagerImpl();
    localServiceManagerImpl.attachContext(this.e.getMicroApplicationContext());
    this.g = localServiceManagerImpl;
    ApplicationManagerImpl localApplicationManagerImpl = new ApplicationManagerImpl();
    localApplicationManagerImpl.attachContext(this.e.getMicroApplicationContext());
    this.h = localApplicationManagerImpl;
    this.g.registerService(ApplicationManager.class.getName(), this.h);
    this.mLocalBroadcastManagerWrapper = LocalBroadcastManagerWrapper.getInstance(this.e);
    this.g.registerService(LocalBroadcastManagerWrapper.class.getName(), this.mLocalBroadcastManagerWrapper);
    this.j = new InterfaceManager();
    this.k = new BootLoaderImpl(this);
    this.k.load();
    this.a.set(true);
    if (AlipayApplication.getInstance().getSharedPreferences("_share_tmp_", 0).contains("@@"))
      restoreState();
  }

  public void clearState()
  {
    AlipayApplication.getInstance().getSharedPreferences("_share_tmp_", 0).edit().clear().commit();
  }

  public void dismissProgressDialog()
  {
    if ((this.f instanceof ActivityResponsable))
    {
      ((ActivityResponsable)this.f).dismissProgressDialog();
      return;
    }
    throw new IllegalAccessError("current Activity must be ActivityInterface。");
  }

  public void doStartApp(String paramString1, String paramString2, Bundle paramBundle)
  {
    a locala = a.a.b.b.b.a(s, this, this, new Object[] { paramString1, paramString2, paramBundle });
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label178: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int i2 = arrayOfObject.length;
        i3 = 0;
        if (i3 < i2)
          break label260;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label260: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          b(this, paramString1, paramString2, paramBundle);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        b(this, paramString1, paramString2, paramBundle);
        return;
        Object localObject3 = arrayOfObject[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label178;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label332: Pair localPair;
    label357: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
      if (bool1)
        break label464;
      if (i1 == 0)
        break label426;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject);
      if (localPair == null)
        break label464;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label426: label464: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
        break label332;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject);
        break label357;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }

  public void execCommand(String paramString)
  {
    new StringBuilder("command=").append(paramString).toString();
    try
    {
      Runtime.getRuntime().exec(paramString);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void exit()
  {
    a locala = a.a.b.b.b.a(u, this, this);
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label154: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int i2 = arrayOfObject.length;
        i3 = 0;
        if (i3 < i2)
          break label229;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label229: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this);
        return;
        Object localObject3 = arrayOfObject[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label154;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label300: Pair localPair;
    label324: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
      if (bool1)
        break label427;
      if (i1 == 0)
        break label391;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject);
      if (localPair == null)
        break label427;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label391: label427: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
        break label300;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject);
        break label324;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }

  public MicroApplication findAppById(String paramString)
  {
    return this.h.findAppById(paramString);
  }

  public ApplicationDescription findDescriptionById(String paramString)
  {
    return this.h.findDescriptionById(paramString);
  }

  public <T> T findServiceByInterface(String paramString)
  {
    return this.g.findServiceByInterface(paramString);
  }

  public MicroApplication findTopRunningApp()
  {
    return this.h.getTopRunningApp();
  }

  public void finishApp(String paramString1, String paramString2, Bundle paramBundle)
  {
    a locala = a.a.b.b.b.a(t, this, this, new Object[] { paramString1, paramString2, paramBundle });
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label178: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int i2 = arrayOfObject.length;
        i3 = 0;
        if (i3 < i2)
          break label260;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label260: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          c(this, paramString1, paramString2, paramBundle);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        c(this, paramString1, paramString2, paramBundle);
        return;
        Object localObject3 = arrayOfObject[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label178;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label332: Pair localPair;
    label357: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
      if (bool1)
        break label464;
      if (i1 == 0)
        break label426;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject);
      if (localPair == null)
        break label464;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label426: label464: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
        break label332;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject);
        break label357;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }

  public AlipayApplication getApplicationContext()
  {
    return this.e;
  }

  public <T extends ExternalService> T getExtServiceByInterface(String paramString)
  {
    return ((ExternalServiceManager)this.g.findServiceByInterface(ExternalServiceManager.class.getName())).getExternalService(paramString);
  }

  public String getGwUrl()
  {
    return "https://mobilegw.alipay.com/mgw.htm";
  }

  public InterfaceManager getInterfaceManager()
  {
    return this.j;
  }

  public WeakReference<Activity> getTopActivity()
  {
    return new WeakReference(this.f);
  }

  public boolean hasInited()
  {
    try
    {
      boolean bool = this.a.get();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void loadBundle(String paramString)
  {
    this.k.loadBundle(paramString);
  }

  public void onDestroyContent(MicroContent paramMicroContent)
  {
    if ((paramMicroContent instanceof MicroApplication))
    {
      ApplicationManager localApplicationManager = (ApplicationManager)this.e.getMicroApplicationContext().findServiceByInterface(ApplicationManager.class.getName());
      if (localApplicationManager != null)
        localApplicationManager.onDestroyApp((MicroApplication)paramMicroContent);
      return;
    }
    if ((paramMicroContent instanceof MicroService))
    {
      this.g.onDestroyService((MicroService)paramMicroContent);
      return;
    }
    throw new RuntimeException("microContent must be MicroApplication or MicroService.");
  }

  public void onWindowFocus(MicroApplication paramMicroApplication)
  {
  }

  public <T> boolean registerService(String paramString, T paramT)
  {
    return this.g.registerService(paramString, paramT);
  }

  public void restoreState()
  {
    SharedPreferences localSharedPreferences = AlipayApplication.getInstance().getSharedPreferences("_share_tmp_", 0);
    this.h.restoreState(localSharedPreferences);
    this.g.restoreState(localSharedPreferences);
  }

  public void saveState()
  {
    SharedPreferences.Editor localEditor = AlipayApplication.getInstance().getSharedPreferences("_share_tmp_", 0).edit();
    localEditor.putBoolean("@@", true);
    this.h.saveState(localEditor);
    this.g.saveState(localEditor);
    localEditor.commit();
  }

  public void setGwUrl(String paramString)
  {
  }

  public void showProgressDialog(String paramString)
  {
    if ((this.f instanceof ActivityResponsable))
    {
      ((ActivityResponsable)this.f).showProgressDialog(paramString);
      return;
    }
    throw new IllegalAccessError("current Activity must be ActivityInterface。");
  }

  public void showProgressDialog(String paramString, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if ((this.f instanceof ActivityResponsable))
    {
      ((ActivityResponsable)this.f).showProgressDialog(paramString, paramBoolean, paramOnCancelListener);
      return;
    }
    throw new IllegalAccessError("current Activity must be ActivityInterface。");
  }

  public void startActivity(MicroApplication paramMicroApplication, Intent paramIntent)
  {
    a locala = a.a.b.b.b.a(n, this, this, paramMicroApplication, paramIntent);
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label158: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int i2 = arrayOfObject.length;
        i3 = 0;
        if (i3 < i2)
          break label238;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label238: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this, paramMicroApplication, paramIntent);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this, paramMicroApplication, paramIntent);
        return;
        Object localObject3 = arrayOfObject[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label158;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label310: Pair localPair;
    label335: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
      if (bool1)
        break label442;
      if (i1 == 0)
        break label404;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject);
      if (localPair == null)
        break label442;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label404: label442: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
        break label310;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject);
        break label335;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }

  public void startActivity(MicroApplication paramMicroApplication, String paramString)
  {
    a locala = a.a.b.b.b.a(l, this, this, paramMicroApplication, paramString);
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label158: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int i2 = arrayOfObject.length;
        i3 = 0;
        if (i3 < i2)
          break label238;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label238: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this, paramMicroApplication, paramString);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this, paramMicroApplication, paramString);
        return;
        Object localObject3 = arrayOfObject[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label158;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label310: Pair localPair;
    label335: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
      if (bool1)
        break label442;
      if (i1 == 0)
        break label404;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject);
      if (localPair == null)
        break label442;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label404: label442: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
        break label310;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject);
        break label335;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }

  public void startActivityForResult(MicroApplication paramMicroApplication, Intent paramIntent, int paramInt)
  {
    a.a.a.b localb = p;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramMicroApplication;
    arrayOfObject1[1] = paramIntent;
    arrayOfObject1[2] = a.a.b.a.b.a(paramInt);
    a locala = a.a.b.b.b.a(localb, this, this, arrayOfObject1);
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject2 = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label192: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject2 != null)
      {
        int i2 = arrayOfObject2.length;
        i3 = 0;
        if (i3 < i2)
          break label274;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label274: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this, paramMicroApplication, paramIntent, paramInt);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this, paramMicroApplication, paramIntent, paramInt);
        return;
        Object localObject3 = arrayOfObject2[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label192;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label346: Pair localPair;
    label371: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject2);
      if (bool1)
        break label478;
      if (i1 == 0)
        break label440;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject2);
      if (localPair == null)
        break label478;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label440: label478: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject2);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject2);
        break label346;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject2);
        break label371;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject2);
      bool1 = bool2;
      break;
    }
  }

  public void startActivityForResult(MicroApplication paramMicroApplication, String paramString, int paramInt)
  {
    a.a.a.b localb = m;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramMicroApplication;
    arrayOfObject1[1] = paramString;
    arrayOfObject1[2] = a.a.b.a.b.a(paramInt);
    a locala = a.a.b.b.b.a(localb, this, this, arrayOfObject1);
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject2 = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label192: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject2 != null)
      {
        int i2 = arrayOfObject2.length;
        i3 = 0;
        if (i3 < i2)
          break label274;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label274: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this, paramMicroApplication, paramString, paramInt);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this, paramMicroApplication, paramString, paramInt);
        return;
        Object localObject3 = arrayOfObject2[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label192;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label346: Pair localPair;
    label371: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject2);
      if (bool1)
        break label478;
      if (i1 == 0)
        break label440;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject2);
      if (localPair == null)
        break label478;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label440: label478: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject2);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject2);
        break label346;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject2);
        break label371;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject2);
      bool1 = bool2;
      break;
    }
  }

  public void startApp(String paramString1, String paramString2, Bundle paramBundle)
  {
    a locala = a.a.b.b.b.a(r, this, this, new Object[] { paramString1, paramString2, paramBundle });
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label178: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int i2 = arrayOfObject.length;
        i3 = 0;
        if (i3 < i2)
          break label260;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label260: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this, paramString1, paramString2, paramBundle);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this, paramString1, paramString2, paramBundle);
        return;
        Object localObject3 = arrayOfObject[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label178;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label332: Pair localPair;
    label357: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
      if (bool1)
        break label464;
      if (i1 == 0)
        break label426;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject);
      if (localPair == null)
        break label464;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label426: label464: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
        break label332;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject);
        break label357;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }

  public void startExtActivity(MicroApplication paramMicroApplication, Intent paramIntent)
  {
    a locala = a.a.b.b.b.a(o, this, this, paramMicroApplication, paramIntent);
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label158: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int i2 = arrayOfObject.length;
        i3 = 0;
        if (i3 < i2)
          break label236;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label236: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this, paramIntent);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this, paramIntent);
        return;
        Object localObject3 = arrayOfObject[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label158;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label308: Pair localPair;
    label333: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
      if (bool1)
        break label440;
      if (i1 == 0)
        break label402;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject);
      if (localPair == null)
        break label440;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label402: label440: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
        break label308;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject);
        break label333;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }

  public void startExtActivityForResult(MicroApplication paramMicroApplication, Intent paramIntent, int paramInt)
  {
    a.a.a.b localb = q;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramMicroApplication;
    arrayOfObject1[1] = paramIntent;
    arrayOfObject1[2] = a.a.b.a.b.a(paramInt);
    a locala = a.a.b.b.b.a(localb, this, this, arrayOfObject1);
    Framework.aspectOf();
    String str1 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject2 = locala.c();
    String str2 = locala.e();
    int i1;
    int i3;
    label192: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str2))
    {
      i1 = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject2 != null)
      {
        int i2 = arrayOfObject2.length;
        i3 = 0;
        if (i3 < i2)
          break label272;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label272: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          a(this, paramIntent, paramInt);
        return;
        if ("method-call".equals(str2))
        {
          i1 = 0;
          break;
        }
        a(this, paramIntent, paramInt);
        return;
        Object localObject3 = arrayOfObject2[i3];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        i3++;
        break label192;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label344: Pair localPair;
    label369: boolean bool3;
    if (i1 != 0)
    {
      localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject2);
      if (bool1)
        break label476;
      if (i1 == 0)
        break label438;
      localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject2);
      if (localPair == null)
        break label476;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label438: label476: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i1 != 0)
      {
        localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject2);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str1, localObject2, arrayOfObject2);
        break label344;
        localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject2);
        break label369;
      }
      localAdvice.onCallAfter(str1, localObject2, arrayOfObject2);
      bool1 = bool2;
      break;
    }
  }

  public Activity updateActivity(Activity paramActivity)
  {
    Activity localActivity = this.f;
    this.f = paramActivity;
    return localActivity;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.impl.MicroApplicationContextImpl
 * JD-Core Version:    0.6.2
 */