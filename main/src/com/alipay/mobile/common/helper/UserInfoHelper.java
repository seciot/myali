package com.alipay.mobile.common.helper;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public class UserInfoHelper
{
  private static UserInfoHelper a = null;

  public static UserInfoHelper getInstance()
  {
    if (a == null)
      a = new UserInfoHelper();
    return a;
  }

  public UserInfo getUserInfo(MicroApplicationContext paramMicroApplicationContext)
  {
    AuthService localAuthService = (AuthService)paramMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.isLogin())
      return localAuthService.getUserInfo();
    return null;
  }

  public UserInfo getUserInfo(ActivityApplication paramActivityApplication)
  {
    return getUserInfo(paramActivityApplication.getMicroApplicationContext());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.helper.UserInfoHelper
 * JD-Core Version:    0.6.2
 */