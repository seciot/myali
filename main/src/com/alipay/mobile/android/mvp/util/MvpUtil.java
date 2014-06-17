package com.alipay.mobile.android.mvp.util;

import com.alipay.mobile.android.mvp.ControllerService;
import com.alipay.mobile.android.mvp.DataObservable;
import com.alipay.mobile.android.mvp.DataObserver;
import com.alipay.mobile.android.mvp.MvpBaseController;
import com.alipay.mobile.android.mvp.model.ControllerRegisteredInfo;

public final class MvpUtil
{
  public static final <T> ControllerRegisteredInfo<T> registerController(Class<T> paramClass, Class<? extends MvpBaseController> paramClass1, DataObserver paramDataObserver)
  {
    ControllerRegisteredInfo localControllerRegisteredInfo = ControllerService.getInstance().registerController(paramClass, paramClass1);
    if (paramDataObserver != null)
      localControllerRegisteredInfo.dataObservable.addDataObserver(paramDataObserver);
    return localControllerRegisteredInfo;
  }

  public static final <T> void unregisterController(ControllerRegisteredInfo<T> paramControllerRegisteredInfo, DataObserver paramDataObserver)
  {
    if (paramControllerRegisteredInfo != null)
    {
      if ((paramControllerRegisteredInfo.dataObservable != null) && (paramDataObserver != null))
        paramControllerRegisteredInfo.dataObservable.deleteDataObserver(paramDataObserver);
      ControllerService.getInstance().unregisterController(paramControllerRegisteredInfo.controllerInterfaceClass);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.util.MvpUtil
 * JD-Core Version:    0.6.2
 */