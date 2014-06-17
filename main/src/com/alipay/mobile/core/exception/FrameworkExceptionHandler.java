package com.alipay.mobile.core.exception;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.alipay.mobile.common.logagent.SystemExceptionHandler;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.R.string;
import com.alipay.mobile.framework.app.MicroApplication;
import java.lang.ref.WeakReference;

public class FrameworkExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  private static FrameworkExceptionHandler b;
  private Thread.UncaughtExceptionHandler a;
  private Context c;
  private MicroApplicationContext d;
  private int e = 5;

  private static MicroApplication a(MicroApplicationContext paramMicroApplicationContext)
  {
    try
    {
      MicroApplication localMicroApplication = paramMicroApplicationContext.findTopRunningApp();
      return localMicroApplication;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private void a(Thread paramThread, Throwable paramThrowable)
  {
    a(paramThrowable);
    if (this.a != null)
    {
      this.d.clearState();
      this.a.uncaughtException(paramThread, paramThrowable);
    }
  }

  private static void a(Throwable paramThrowable)
  {
    if ((!"main".equalsIgnoreCase(Thread.currentThread().getName())) || (paramThrowable == null))
      return;
    SystemExceptionHandler.getInstance().saveErrorInfoToFile(paramThrowable, "MonitorPoint_Exception");
  }

  public static FrameworkExceptionHandler getInstance()
  {
    if (b == null)
      b = new FrameworkExceptionHandler();
    return b;
  }

  public void init(Context paramContext)
  {
    if ((Thread.getDefaultUncaughtExceptionHandler() instanceof FrameworkExceptionHandler))
      return;
    this.c = paramContext;
    this.d = AlipayApplication.getInstance().getMicroApplicationContext();
    this.a = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
    SystemExceptionHandler.getInstance().init(paramContext);
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    new StringBuilder("Thread:").append(paramThread.getName()).toString();
    if (((paramThrowable instanceof RuntimeException)) && (paramThrowable.getCause() != null) && ((paramThrowable.getCause() instanceof RpcException)));
    for (Throwable localThrowable = paramThrowable.getCause(); ; localThrowable = paramThrowable)
    {
      RpcException localRpcException;
      int j;
      if (((localThrowable instanceof RpcException)) && (!"main".equalsIgnoreCase(Thread.currentThread().getName())))
      {
        localRpcException = (RpcException)localThrowable;
        j = localRpcException.getCode();
        switch (j)
        {
        default:
          if ((j >= 400) && (j < 500))
            this.d.Toast(this.c.getString(R.string.network_error_check_network), 1);
          break;
        case 8:
        case 11:
        case 12:
        case 3000:
        case 6000:
        case 6001:
        case 6666:
        case 2:
        case 6:
        case 9:
        case 4:
        case 5:
        case 7:
        case 13:
        case 3:
        case 1002:
        case 3001:
        case 4001:
        case 4002:
        case 4003:
        case 0:
        case 1:
        case 10:
        }
      }
      MicroApplicationContext localMicroApplicationContext;
      do
      {
        return;
        this.d.Toast(this.c.getString(R.string.network_error_check_network), 1);
        return;
        this.d.Toast(this.c.getString(R.string.network_error_wait_retry), 1);
        return;
        this.d.Toast(this.c.getString(R.string.network_error_interupted), 1);
        return;
        this.d.Toast(this.c.getString(R.string.network_error_ssl_error), 1);
        return;
        if ((localRpcException.getMsg() != null) && (localRpcException.getMsg().length() > 0))
        {
          this.d.Toast(localRpcException.getMsg(), 1);
          return;
        }
        this.d.Toast(this.c.getString(R.string.server_error_wait_retry), 1);
        return;
        this.d.Toast(this.c.getString(R.string.network_error), 1);
        return;
        if ((j >= 100) && (j < 600))
        {
          this.d.Alert(null, this.c.getString(R.string.network_error_wait_retry), this.c.getString(R.string.confirm), null, null, null);
          return;
        }
        this.d.Alert(null, localRpcException.getMsg(), this.c.getString(R.string.confirm), null, null, null);
        return;
        localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
      }
      while (!"main".equalsIgnoreCase(Thread.currentThread().getName()));
      if ((a(localMicroApplicationContext) == null) || ("com.alipay.android.launcher.TabLauncherApp".equals(a(localMicroApplicationContext).getClass().getName())))
      {
        a(paramThread, localThrowable);
        return;
      }
      a(localThrowable);
      int i = 1;
      while (true)
        try
        {
          if ((i >= this.e) || (a(localMicroApplicationContext) == null) || ("com.alipay.android.launcher.TabLauncherApp".equals(a(localMicroApplicationContext).getClass().getName())) || (localMicroApplicationContext.getTopActivity().get() == null))
            break;
          MicroApplication localMicroApplication = a(localMicroApplicationContext);
          ((Activity)localMicroApplicationContext.getTopActivity().get()).runOnUiThread(new FrameworkExceptionHandler.1(this, localMicroApplicationContext, localMicroApplication));
          Looper.loop();
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          i++;
          a(localException);
        }
      a(paramThread, localThrowable);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.exception.FrameworkExceptionHandler
 * JD-Core Version:    0.6.2
 */