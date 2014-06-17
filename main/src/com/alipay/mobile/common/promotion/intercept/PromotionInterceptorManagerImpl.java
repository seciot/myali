package com.alipay.mobile.common.promotion.intercept;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.aspect.FrameworkPointCutManager;
import com.alipay.mobile.common.promotion.intercept.desc.InterceptorDesc;
import com.alipay.mobile.common.promotion.intercept.interceptor.BaseInterceptor;
import com.alipay.mobile.common.promotion.intercept.interceptor.InterceptorFactory;
import com.alipay.mobile.common.promotion.intercept.interceptor.JumpInterceptor;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class PromotionInterceptorManagerImpl
  implements IPromotionInterceptorManager
{
  private HashMap<String, List<IPromotionInterceptor>> a = new HashMap();
  private View b = null;
  private LocalBroadcastManager c;
  private BroadcastReceiver d;
  private boolean e = false;
  private boolean f = true;

  public PromotionInterceptorManagerImpl()
  {
    String[] arrayOfString1 = { "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)" };
    FrameworkPointCutManager.getInstance().registerPointCutAdvice(arrayOfString1, new PromotionActivityAdvice());
    String[] arrayOfString2 = { "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)", "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)" };
    FrameworkPointCutManager.getInstance().registerPointCutAdvice(arrayOfString2, new PromotionStartAppAdvice());
    String[] arrayOfString3 = { "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivityForResult(Intent, int)", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.startActivityForResult(Intent, int)", "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()", "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)", "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)", "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)", "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)", "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)", "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)" };
    FrameworkPointCutManager.getInstance().registerPointCutAdvice(arrayOfString3, new PromotionStartActivityAdvice());
    this.c = LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getApplicationContext());
    a();
  }

  private IPromotionInterceptor a(View paramView)
  {
    if (!this.f)
      return null;
    IPromotionInterceptor localIPromotionInterceptor;
    InterceptorDesc localInterceptorDesc;
    do
    {
      do
      {
        Iterator localIterator1 = this.a.values().iterator();
        Iterator localIterator2;
        while (!localIterator2.hasNext())
        {
          if (!localIterator1.hasNext())
            break;
          localIterator2 = ((List)localIterator1.next()).iterator();
        }
        localIPromotionInterceptor = (IPromotionInterceptor)localIterator2.next();
      }
      while (!(localIPromotionInterceptor instanceof BaseInterceptor));
      localInterceptorDesc = ((BaseInterceptor)localIPromotionInterceptor).getDesc();
      new StringBuilder("iterate interceptor to match view trigger: ").append(localIPromotionInterceptor.toString()).toString();
    }
    while ((localInterceptorDesc == null) || (!PromotionMatchHelper.matchViewTrigger(paramView, localInterceptorDesc.triggerId)));
    return localIPromotionInterceptor;
    return null;
  }

  private JumpInterceptor a(String paramString, Intent paramIntent)
  {
    if (StringUtils.isEmpty(paramString))
      paramString = b();
    String str1 = c();
    ComponentName localComponentName = paramIntent.getComponent();
    String str2 = null;
    if (localComponentName != null)
      str2 = paramIntent.getComponent().getClassName();
    return a(paramString, str1, "", str2);
  }

  private JumpInterceptor a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if ((!this.f) || (this.b == null))
      return null;
    if (StringUtils.isEmpty(paramString1));
    for (String str1 = b(); ; str1 = paramString1)
    {
      if (StringUtils.isEmpty(paramString2));
      for (String str2 = c(); ; str2 = paramString2)
      {
        Iterator localIterator1 = this.a.values().iterator();
        JumpInterceptor localJumpInterceptor;
        do
        {
          IPromotionInterceptor localIPromotionInterceptor;
          do
          {
            Iterator localIterator2;
            while (!localIterator2.hasNext())
            {
              if (!localIterator1.hasNext())
                break;
              localIterator2 = ((List)localIterator1.next()).iterator();
            }
            localIPromotionInterceptor = (IPromotionInterceptor)localIterator2.next();
          }
          while (!(localIPromotionInterceptor instanceof JumpInterceptor));
          new StringBuilder("iterate interceptor to match jump: ").append(localIPromotionInterceptor.toString()).toString();
          localJumpInterceptor = (JumpInterceptor)localIPromotionInterceptor;
        }
        while (!localJumpInterceptor.match(str1, str2, paramString3, paramString4, this.b));
        return localJumpInterceptor;
        return null;
      }
    }
  }

  private void a()
  {
    try
    {
      boolean bool = this.e;
      if (bool);
      while (true)
      {
        return;
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("com.alipay.security.login");
        this.d = new PromotionInterceptorManagerImpl.1(this);
        this.c.registerReceiver(this.d, localIntentFilter);
        this.e = true;
      }
    }
    finally
    {
    }
  }

  private static String b()
  {
    String str = "";
    MicroApplication localMicroApplication = AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp();
    if (localMicroApplication != null)
      str = localMicroApplication.getAppId();
    return str;
  }

  private static String c()
  {
    Activity localActivity = (Activity)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get();
    if (localActivity != null)
      return localActivity.getClass().getName();
    return "";
  }

  public boolean addInterceptorByGroupKey(String paramString, IPromotionInterceptor paramIPromotionInterceptor)
  {
    boolean bool1 = false;
    List localList;
    ArrayList localArrayList;
    if (paramIPromotionInterceptor != null)
    {
      localList = (List)this.a.get(paramString);
      if (localList != null)
        break label172;
      localArrayList = new ArrayList();
      this.a.put(paramString, localArrayList);
    }
    label165: label172: for (Object localObject = localArrayList; ; localObject = localList)
    {
      boolean bool2 = ((List)localObject).contains(paramIPromotionInterceptor);
      bool1 = false;
      int i;
      if (!bool2)
      {
        Iterator localIterator = ((List)localObject).iterator();
        i = 0;
        if (localIterator.hasNext())
          if (!((IPromotionInterceptor)localIterator.next()).equals(paramIPromotionInterceptor))
            break label165;
      }
      for (int j = 1; ; j = i)
      {
        i = j;
        break;
        bool1 = false;
        if (i == 0)
        {
          new StringBuilder("addInterceptorByGroupKey: ").append(paramString).append(", ").append(paramIPromotionInterceptor.toString()).toString();
          ((List)localObject).add(paramIPromotionInterceptor);
          bool1 = true;
        }
        return bool1;
      }
    }
  }

  public boolean addInterceptorWithRpc(String paramString, Object paramObject)
  {
    boolean bool1 = StringUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (!bool1)
    {
      bool2 = false;
      if (paramObject != null)
        while (true)
        {
          try
          {
            Class localClass = paramObject.getClass();
            if (localClass == null)
              return false;
            Field[] arrayOfField = localClass.getFields();
            bool2 = false;
            if (arrayOfField == null)
              break;
            int i = 0;
            int j = arrayOfField.length;
            bool2 = false;
            if (i >= j)
              break;
            boolean bool3 = "weavingList".equals(arrayOfField[i].getName());
            bool2 = false;
            if (bool3)
            {
              Iterator localIterator1 = ((List)arrayOfField[i].get(paramObject)).iterator();
              if (!localIterator1.hasNext())
                break;
              List localList = InterceptorFactory.reflectCreateInterceptor(paramString, localIterator1.next());
              if (localList == null)
                continue;
              Iterator localIterator2 = localList.iterator();
              if (localIterator2.hasNext())
              {
                boolean bool4 = addInterceptorByGroupKey(paramString, (BaseInterceptor)localIterator2.next());
                if (!bool4)
                  break label203;
                bool5 = true;
                bool2 = bool5;
                continue;
              }
              continue;
            }
            else
            {
              i++;
              continue;
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return bool2;
          }
          label203: boolean bool5 = bool2;
        }
    }
    return bool2;
  }

  public void clear()
  {
    if (this.a != null)
      this.a.clear();
    this.b = null;
  }

  public boolean currentActivityHasInterceptor()
  {
    MicroApplication localMicroApplication = AlipayApplication.getInstance().getMicroApplicationContext().findTopRunningApp();
    if (localMicroApplication == null)
      return false;
    String str1 = localMicroApplication.getAppId();
    if (StringUtils.isEmpty(str1))
      return false;
    Activity localActivity = (Activity)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get();
    if (localActivity == null)
      return false;
    String str2 = localActivity.getClass().getName();
    new StringBuilder("currentActivityHasInterceptor() start: ").append(str1).append(", ").append(str2).toString();
    if (this.a.values() != null)
    {
      Iterator localIterator1 = this.a.values().iterator();
      InterceptorDesc localInterceptorDesc;
      do
      {
        IPromotionInterceptor localIPromotionInterceptor;
        do
        {
          Iterator localIterator2;
          while (!localIterator2.hasNext())
          {
            if (!localIterator1.hasNext())
              break;
            List localList = (List)localIterator1.next();
            if (localList == null)
              return false;
            localIterator2 = localList.iterator();
          }
          localIPromotionInterceptor = (IPromotionInterceptor)localIterator2.next();
        }
        while (!(localIPromotionInterceptor instanceof BaseInterceptor));
        localInterceptorDesc = ((BaseInterceptor)localIPromotionInterceptor).getDesc();
        new StringBuilder("check interceptor: curAppId(").append(str1).append(")-desc.appId(").append(localInterceptorDesc.appId).append("), curPageId(").append(str2).append(")-desc.pageId(").append(localInterceptorDesc.pageId).append(")").toString();
      }
      while ((!str1.equals(localInterceptorDesc.appId)) || (!str2.equals(localInterceptorDesc.pageId)));
      return true;
    }
    return false;
  }

  public View.OnClickListener getOnClickListenerProxy(View.OnClickListener paramOnClickListener)
  {
    return (View.OnClickListener)new PromotionClickInvocationHandler(paramOnClickListener).getProxy(View.OnClickListener.class);
  }

  public View getTriggerView()
  {
    return this.b;
  }

  public boolean isEnable()
  {
    return this.f;
  }

  public IPromotionInterceptor match(Object[] paramArrayOfObject, String paramString)
  {
    if ((!this.f) || (paramArrayOfObject == null) || (StringUtils.isEmpty(paramString)));
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    return null;
                    new StringBuilder("match: matchType=").append(paramString).toString();
                    if (!"viewTrigger".equals(paramString))
                      break;
                  }
                  while ((paramArrayOfObject.length != 1) || (!(paramArrayOfObject[0] instanceof View)));
                  return a((View)paramArrayOfObject[0]);
                }
                while (!"jump".equals(paramString));
                if (paramArrayOfObject.length != 1)
                  break;
              }
              while ((paramArrayOfObject[0] == null) || (!(paramArrayOfObject[0] instanceof Intent)));
              return a("", (Intent)paramArrayOfObject[0]);
              if (paramArrayOfObject.length != 2)
                break;
            }
            while (paramArrayOfObject[1] == null);
            if (!(paramArrayOfObject[1] instanceof Intent))
              break;
            if (paramArrayOfObject[0] == null)
              return a("", (Intent)paramArrayOfObject[1]);
          }
          while (!(paramArrayOfObject[0] instanceof MicroApplication));
          return a(((MicroApplication)paramArrayOfObject[0]).getAppId(), (Intent)paramArrayOfObject[1]);
        }
        while (!(paramArrayOfObject[1] instanceof String));
        if (paramArrayOfObject[0] == null)
          return a("", "", "", (String)paramArrayOfObject[1]);
      }
      while (!(paramArrayOfObject[0] instanceof MicroApplication));
      return a(((MicroApplication)paramArrayOfObject[0]).getAppId(), "", "", (String)paramArrayOfObject[1]);
    }
    while (paramArrayOfObject.length != 4);
    return a((String)paramArrayOfObject[0], (String)paramArrayOfObject[1], (String)paramArrayOfObject[2], (String)paramArrayOfObject[3]);
  }

  public void removeInterceptor(IPromotionInterceptor paramIPromotionInterceptor)
  {
    if (paramIPromotionInterceptor != null)
    {
      Iterator localIterator = this.a.values().iterator();
      while (localIterator.hasNext())
      {
        List localList = (List)localIterator.next();
        if (localList.contains(paramIPromotionInterceptor))
          localList.remove(paramIPromotionInterceptor);
      }
    }
  }

  public void removeInterceptorWithRpc(String paramString)
  {
    List localList = (List)this.a.get(paramString);
    if (localList != null)
    {
      localList.clear();
      this.a.remove(paramString);
    }
  }

  public void setEnable(boolean paramBoolean)
  {
    new StringBuilder("setEnable: ").append(paramBoolean).toString();
    this.f = paramBoolean;
  }

  public void setTriggerView(View paramView)
  {
    try
    {
      this.b = paramView;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.PromotionInterceptorManagerImpl
 * JD-Core Version:    0.6.2
 */