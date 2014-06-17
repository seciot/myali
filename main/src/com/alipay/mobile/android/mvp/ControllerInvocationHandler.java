package com.alipay.mobile.android.mvp;

import android.os.Looper;
import com.alipay.mobile.android.mvp.model.MvpResult;
import com.alipay.mobile.common.logging.LogCatLog;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class ControllerInvocationHandler
  implements InvocationHandler
{
  private MvpBaseController a;

  public ControllerInvocationHandler(MvpBaseController paramMvpBaseController)
  {
    this.a = paramMvpBaseController;
  }

  private Object a(Method paramMethod, Object[] paramArrayOfObject, boolean paramBoolean)
  {
    try
    {
      Object localObject2 = paramMethod.invoke(this.a, paramArrayOfObject);
      return localObject2;
    }
    catch (Exception localException)
    {
      if (LogCatLog.isSwitch())
        new StringBuilder("doInvoke occur exception. controller=[").append(this.a.getClass().getName()).append("] method=[").append(paramMethod.getName()).append("] uiThreadComeIn=[").append(paramBoolean).append("]").toString();
      if (paramBoolean)
      {
        MvpResult localMvpResult = new MvpResult();
        localMvpResult.exception = localException;
        localMvpResult.resultCode = "SYSTEM_ERROR";
        localMvpResult.success = false;
        DataEvent localDataEvent = new DataEvent();
        localDataEvent.data = localMvpResult;
        localDataEvent.eventCode = "systemErrorEvent";
        this.a.notifyDataObserversException(localDataEvent);
      }
      if (LogCatLog.isSwitch());
      return null;
    }
    finally
    {
      LogCatLog.isSwitch();
    }
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread());
    for (int i = 1; i == 0; i = 0)
      return a(paramMethod, paramArrayOfObject, false);
    BackgroundExecutor.execute(new ControllerInvocationHandler.1(this, paramObject, paramMethod, paramArrayOfObject, true));
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.ControllerInvocationHandler
 * JD-Core Version:    0.6.2
 */