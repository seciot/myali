package com.alipay.android.mini.window;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.alipay.android.app.IRemoteCallback;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.exception.ValifyException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.ui.IWindowManager;
import com.alipay.android.lib.plusin.ui.WindowData;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.event.OnElementEventListener;
import com.alipay.android.mini.event.OnFormEventListener;
import com.alipay.android.mini.uielement.ElementAction;
import org.json.JSONObject;

public class MiniWindowManager
  implements IWindowManager, OnFormEventListener
{
  private Context a = GlobalContext.a().b();
  private String b = this.a.getPackageName();
  private Handler c = new Handler(Looper.getMainLooper());
  private BizUiData d;
  private DataProcessor e;
  private IFormShower f;
  private IUIForm g;

  private void a()
  {
    if (this.g != null)
      this.g.dispose();
  }

  private void a(Class paramClass)
  {
    int i = 0;
    while (true)
    {
      if ((this.f == null) || (this.f.getClass() != paramClass));
      try
      {
        Thread.sleep(50L);
        i++;
        if (i >= 100)
        {
          MonitorThread.a().d(null, "can not receive activity onload event");
          if (this.e != null)
          {
            this.e.j();
            return;
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
    throw new AppErrorException(getClass(), "can not use exit cmd");
  }

  private void b()
  {
    String str = MiniPayActivity.class.getCanonicalName();
    if ((this.f != null) && ((this.f instanceof MiniPayActivity)))
      return;
    int i = this.d.a();
    IRemoteCallback localIRemoteCallback = this.d.b();
    try
    {
      localIRemoteCallback.a(this.b, str, i);
      a(MiniPayActivity.class);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        MonitorThread.a().a(localException, "on start container");
        LogUtils.a(localException);
        Context localContext = GlobalContext.a().b();
        Intent localIntent = new Intent();
        localIntent.setClassName(this.b, str);
        localIntent.setFlags(268435456);
        localIntent.putExtra("CallingPid", i);
        localContext.startActivity(localIntent);
      }
    }
  }

  public final void a(BizUiData paramBizUiData)
  {
    this.d = paramBizUiData;
    this.e = paramBizUiData.c();
  }

  public final void a(DataProcessor paramDataProcessor, WindowData paramWindowData)
  {
    int i = paramWindowData.c();
    if (i == 0)
    {
      b();
      if (this.f != null)
        this.f.a(new String[0]);
      return;
    }
    JSONObject localJSONObject1 = paramWindowData.k();
    paramWindowData.l();
    String str = localJSONObject1.optString("form_name");
    Object localObject = null;
    switch (i)
    {
    default:
    case 7:
    case 4:
    case 6:
    case 10:
    case -10:
    }
    JSONObject localJSONObject2;
    while (true)
    {
      if (localObject == null)
        localObject = this.g;
      localJSONObject2 = paramWindowData.k();
      if (localObject != null)
      {
        ((IUIForm)localObject).b(i);
        ((IUIForm)localObject).a(paramWindowData.m());
      }
      switch (i)
      {
      default:
        return;
      case -10:
        this.g.a(localJSONObject2);
        b();
        this.c.post(new z(this, i));
        this.g.l().a(this, new MiniEventArgs(ActionType.d));
        return;
        localObject = new UIFormDialog(this.d);
        if (this.g == null)
        {
          this.g = ((IUIForm)localObject);
          continue;
          localObject = new UIFormWindow(this.d);
          a();
          this.g = ((IUIForm)localObject);
          continue;
          localObject = new UIFormToast(this.d);
          continue;
          localObject = new UIFormError(this.d);
          a();
          this.g = ((IUIForm)localObject);
        }
        break;
      case 10:
      case 4:
      case 6:
      case 7:
      case 9:
      case 8:
      }
    }
    ElementAction localElementAction = ElementAction.a(localJSONObject2.optJSONObject("form"), "onload");
    this.g.a(this.g, ActionType.a(localElementAction));
    IUIForm.c(localJSONObject2);
    return;
    b();
    ((IUIForm)localObject).a(this.f);
    IUIForm.c(localJSONObject2);
    ((IUIForm)localObject).a(localJSONObject2);
    ((IUIForm)localObject).b(localJSONObject2.optJSONObject("subforms"));
    ((IUIForm)localObject).b(str);
    this.c.post(new x(this, (IUIForm)localObject, i));
    return;
    IUIForm.c(localJSONObject2);
    ((IUIForm)localObject).a(localJSONObject2);
    ((IUIForm)localObject).b(localJSONObject2.optJSONObject("subforms"));
    ((IUIForm)localObject).b(str);
    b();
    ((IUIForm)localObject).a(this.f);
    this.c.post(new y(this, (IUIForm)localObject, i));
    return;
    if (localJSONObject2.has("msg"))
    {
      if (this.f != null)
      {
        this.f.a(localJSONObject2.optString("msg"));
        this.g.g();
        this.g.e();
        return;
      }
      this.d.c().j();
      return;
    }
    this.g.l().a(this, new MiniEventArgs(ActionType.o));
  }

  public final void a(DataProcessor paramDataProcessor, Exception paramException)
  {
    if ((this.f == null) || (paramException == null))
      b();
    if ((paramException instanceof NetErrorException))
    {
      this.c.post(new ac(this));
      return;
    }
    if ((paramException instanceof ValifyException))
    {
      this.c.post(new ab(this, paramException));
      return;
    }
    this.c.post(new aa(this, paramException));
  }

  public final void a(Object paramObject)
  {
    this.f = ((IFormShower)paramObject);
    this.f.a(this);
  }

  public void dispose()
  {
    this.c.post(new w(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.MiniWindowManager
 * JD-Core Version:    0.6.2
 */