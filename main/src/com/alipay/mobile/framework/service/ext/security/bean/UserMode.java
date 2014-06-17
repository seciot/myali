package com.alipay.mobile.framework.service.ext.security.bean;

public class UserMode
{
  boolean checkLogin = false;
  String userExtInfo = null;
  UserInfo userInfo = null;

  public String getUserExtInfo()
  {
    return this.userExtInfo;
  }

  public UserInfo getUserInfo()
  {
    return this.userInfo;
  }

  public boolean isCheckLogin()
  {
    return this.checkLogin;
  }

  public void setCheckLogin(boolean paramBoolean)
  {
    this.checkLogin = paramBoolean;
  }

  public void setUserExtInfo(String paramString)
  {
    this.userExtInfo = paramString;
  }

  public void setUserInfo(UserInfo paramUserInfo)
  {
    this.userInfo = paramUserInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.bean.UserMode
 * JD-Core Version:    0.6.2
 */