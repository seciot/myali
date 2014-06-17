package com.alipay.mobilegw.biz.shared.processer.logout;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface UserLogoutService
{
  @OperationType("alipay.user.logout")
  public abstract UserLogoutResult logout(UserLogoutReq paramUserLogoutReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.logout.UserLogoutService
 * JD-Core Version:    0.6.2
 */