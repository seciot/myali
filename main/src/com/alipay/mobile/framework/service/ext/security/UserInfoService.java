package com.alipay.mobile.framework.service.ext.security;

import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.bean.UserMode;

public abstract class UserInfoService extends ExternalService
{
  public abstract UserMode queryUserInfo(String paramString);

  public abstract void queryphoneBindingState(String paramString, UserInfoServiceCallBack paramUserInfoServiceCallBack);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.UserInfoService
 * JD-Core Version:    0.6.2
 */