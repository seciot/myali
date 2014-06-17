package com.alipay.mobile.android.mvp.model;

import com.alipay.mobile.android.mvp.DataObservable;
import com.alipay.mobile.android.mvp.MvpBaseController;

public class ControllerRegisteredInfo<T>
{
  public Class<? extends MvpBaseController> controllerImplClass;
  public Class<T> controllerInterfaceClass;
  public T controllerObj;
  public DataObservable dataObservable;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.model.ControllerRegisteredInfo
 * JD-Core Version:    0.6.2
 */