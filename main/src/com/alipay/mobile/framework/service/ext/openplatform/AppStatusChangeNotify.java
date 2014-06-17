package com.alipay.mobile.framework.service.ext.openplatform;

import com.alipay.mobile.framework.service.ext.openplatform.app.App;

public class AppStatusChangeNotify
{
  public static final int ACTION_APP_REBUILD = 1;
  public static final int MOVE_TO_APPCENTER = 3;
  public static final int MOVE_TO_HOME = 2;
  private int action;
  private App app;

  public AppStatusChangeNotify(int paramInt, App paramApp)
  {
    this.action = paramInt;
    this.app = paramApp;
  }

  public int getAction()
  {
    return this.action;
  }

  public App getApp()
  {
    return this.app;
  }

  public void setAction(int paramInt)
  {
    this.action = paramInt;
  }

  public void setApp(App paramApp)
  {
    this.app = paramApp;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.AppStatusChangeNotify
 * JD-Core Version:    0.6.2
 */