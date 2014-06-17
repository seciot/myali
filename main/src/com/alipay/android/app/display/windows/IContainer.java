package com.alipay.android.app.display.windows;

import com.alipay.android.app.data.Orientation;
import com.alipay.android.app.display.event.OnContainerEventListener;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.sys.IDispose;

public abstract interface IContainer extends IWindowScriptable, IDispose
{
  public abstract void a(OnContainerEventListener paramOnContainerEventListener);

  public abstract void a(UIWindow paramUIWindow);

  public abstract void a(UIWindow paramUIWindow, Orientation paramOrientation);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.windows.IContainer
 * JD-Core Version:    0.6.2
 */