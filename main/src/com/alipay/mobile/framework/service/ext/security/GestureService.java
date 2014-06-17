package com.alipay.mobile.framework.service.ext.security;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class GestureService extends ExternalService
{
  public abstract void callback(boolean paramBoolean);

  public abstract String gesture();

  public abstract void gesture(GestureCallBack paramGestureCallBack);

  public abstract boolean restoreStateValidateGesture(GestureCallBack paramGestureCallBack);

  public abstract boolean setGesture();

  public abstract boolean setGesture(Bundle paramBundle, GestureCallBack paramGestureCallBack);

  public abstract boolean setGesture(GestureCallBack paramGestureCallBack);

  public abstract void showGestureApp(Bundle paramBundle);

  public abstract boolean startGestureIfNecessary(boolean paramBoolean);

  public abstract boolean sycnStartGestureIfNecessary();

  public abstract void validateGesture();

  public abstract void validateGesture(GestureCallBack paramGestureCallBack);

  public abstract boolean validateStartClientGesture(GestureCallBack paramGestureCallBack);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.GestureService
 * JD-Core Version:    0.6.2
 */