package com.alipay.mobile.framework.service.ext.security;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public abstract class AuthService extends ExternalService
{

  @Deprecated
  public static boolean LOGIN_REALSTATE = false;

  public static boolean isNewImpl()
  {
    return false;
  }

  public abstract boolean auth();

  public abstract boolean auth(Bundle paramBundle);

  public abstract boolean autoAuth();

  public abstract void cancelLogin();

  public abstract void clearLoginUserInfo();

  public abstract UserInfo gestureGetUserInfo();

  public abstract UserInfo getLastLoginedUserInfo();

  public abstract UserInfo getUserInfo();

  public abstract boolean isLogin();

  public abstract void notifyUnlockGestureApp();

  public abstract void notifyUnlockLoginApp(boolean paramBoolean1, boolean paramBoolean2);

  public abstract UserInfo queryLatelyLoginUser();

  public abstract boolean rpcAuth();

  public abstract boolean showActivityLogin(Bundle paramBundle, UserInfo paramUserInfo);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.AuthService
 * JD-Core Version:    0.6.2
 */