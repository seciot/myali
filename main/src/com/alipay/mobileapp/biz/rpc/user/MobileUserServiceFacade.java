package com.alipay.mobileapp.biz.rpc.user;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface MobileUserServiceFacade
{
  @OperationType("alipay.client.getMobileUserStatus")
  public abstract MobileUserResult getMobileUserStatus(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.user.MobileUserServiceFacade
 * JD-Core Version:    0.6.2
 */