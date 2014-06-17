package com.alipay.android.app.display.windows;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.alipay.android.app.IRemoteCallback;
import com.alipay.android.app.R.string;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.data.Orientation;
import com.alipay.android.app.data.ValidatedFrameData;
import com.alipay.android.app.data.WindowFrameData;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.display.event.OnContainerEventListener;
import com.alipay.android.app.display.uielement.IElementFocusChanged;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.pay.MainActivity;
import com.alipay.android.app.pay.TransContainer;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.ui.IWindowManager;
import com.alipay.android.lib.plusin.ui.WindowData;
import org.json.JSONObject;

public final class WindowsManager
  implements OnContainerEventListener, IWindowManager
{
  private BizUiData a;
  private DataProcessor b;
  private IContainer c;
  private MspWindow d;
  private String e;
  private Handler f;
  private long g;
  private boolean h;

  public WindowsManager()
  {
    Context localContext = GlobalContext.a().b();
    this.f = new Handler(Looper.getMainLooper());
    this.e = localContext.getPackageName();
    this.h = true;
  }

  private void a()
  {
    if (this.d == null)
      this.d = new MspWindow(this.f);
    this.d.a(this.a, this.c);
    if ((this.c instanceof IElementFocusChanged))
    {
      IElementFocusChanged localIElementFocusChanged = (IElementFocusChanged)this.c;
      this.d.a(localIElementFocusChanged);
    }
  }

  private void a(Class paramClass)
  {
    int i = 0;
    while (true)
    {
      if ((this.c == null) || (this.c.getClass() != paramClass));
      try
      {
        Thread.sleep(50L);
        i++;
        if (i >= 100)
        {
          MonitorThread.a().d(null, "can not receive activity onload event");
          if (this.b != null)
          {
            this.b.j();
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

  private void a(String paramString)
  {
    int i = this.a.a();
    IRemoteCallback localIRemoteCallback = this.a.b();
    try
    {
      localIRemoteCallback.a(this.e, paramString, i);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().a(localException, "on start container");
      LogUtils.a(localException);
      Context localContext = GlobalContext.a().b();
      Intent localIntent = new Intent();
      localIntent.setClassName(this.e, paramString);
      localIntent.setFlags(268435456);
      localIntent.putExtra("CallingPid", i);
      localContext.startActivity(localIntent);
    }
  }

  private boolean a(MspEventArgs paramMspEventArgs)
  {
    if (paramMspEventArgs.getEventType() == EventType.j)
    {
      if (this.b == null)
        return false;
      if (this.d == null)
        this.b.j();
      while (true)
      {
        return true;
        String str = this.d.a();
        if ("false".equals(str))
          this.f.post(new m(this));
        else if (!"forbidden".equals(str))
          this.b.g();
      }
    }
    if (this.d != null)
    {
      if (paramMspEventArgs != null);
      try
      {
        if (paramMspEventArgs.getEventType() == EventType.l)
        {
          long l1 = System.currentTimeMillis() - this.g;
          MonitorThread.a().b(l1, "ui display time");
          if (this.h)
          {
            this.h = false;
            long l2 = System.currentTimeMillis() - this.b.d();
            MonitorThread.a().c(l2, "first window loading time");
          }
        }
        return this.d.a(null, paramMspEventArgs);
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    return true;
  }

  private void b()
  {
    a(TransContainer.class.getCanonicalName());
    a(TransContainer.class);
  }

  public final void a(BizUiData paramBizUiData)
  {
    this.a = paramBizUiData;
  }

  public final void a(DataProcessor paramDataProcessor, WindowData paramWindowData)
  {
    while (true)
    {
      WindowFrameData localWindowFrameData;
      UIWindow localUIWindow;
      try
      {
        if (paramWindowData.c() == 0)
        {
          b();
          return;
        }
        if (paramWindowData.n())
        {
          localOrientation = Orientation.c;
          localWindowFrameData = (WindowFrameData)paramWindowData;
          this.b = paramDataProcessor;
          switch (localWindowFrameData.c())
          {
          default:
            a();
            localUIWindow = this.d.a(localWindowFrameData);
            if (localUIWindow.a() != null)
              break label188;
            new StringBuilder("window data error:").append(localWindowFrameData.k().toString()).toString();
            LogUtils.i();
            Context localContext = GlobalContext.a().b();
            throw new AppErrorException(getClass(), localContext.getString(R.string.q));
          case 1:
          }
        }
      }
      finally
      {
      }
      Orientation localOrientation = Orientation.d;
      continue;
      if (this.d != null)
        this.d.dispose();
      this.d = new MspWindow(this.f);
      continue;
      label188: switch (localWindowFrameData.c())
      {
      case 1:
        String str = MainActivity.class.getCanonicalName();
        if ((this.c == null) || (!(this.c instanceof MainActivity)))
        {
          a(str);
          a(MainActivity.class);
        }
        this.f.post(new k(this, localUIWindow, localOrientation));
        break;
      case 2:
      case 3:
        if (this.c == null)
          b();
        this.f.post(new l(this, localUIWindow, localOrientation));
      }
    }
  }

  public final void a(DataProcessor paramDataProcessor, Exception paramException)
  {
    if (this.c == null)
      b();
    this.b = paramDataProcessor;
    a();
    this.d.a(paramException);
    this.g = System.currentTimeMillis();
  }

  public final void a(Object paramObject)
  {
    if (this.c != null)
      this.c.dispose();
    this.c = ((IContainer)paramObject);
    this.c.a(this);
    a();
    this.a.g().a(this.c);
  }

  public final void dispose()
  {
    if (this.c != null)
      this.c.dispose();
    if (this.d != null)
      this.d.dispose();
    this.c = null;
    this.a = null;
    this.b = null;
    this.d = null;
    this.f = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.WindowsManager
 * JD-Core Version:    0.6.2
 */