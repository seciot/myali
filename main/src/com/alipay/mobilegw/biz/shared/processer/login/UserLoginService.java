package com.alipay.mobilegw.biz.shared.processer.login;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface UserLoginService
{
  @OperationType("alipay.user.login")
  public abstract UserLoginResult login(UserLoginReq paramUserLoginReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.login.UserLoginService
 * JD-Core Version:    0.6.2
 */