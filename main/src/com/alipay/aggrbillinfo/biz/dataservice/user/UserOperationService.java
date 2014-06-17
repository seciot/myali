package com.alipay.aggrbillinfo.biz.dataservice.user;

import com.alipay.aggrbillinfo.biz.mgnt.email.info.UserEmailAccQueryRequest;
import com.alipay.aggrbillinfo.biz.mgnt.user.info.UserStatusInfoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface UserOperationService
{
  @OperationType("alipay.mobile.aggrbillinfo.user.findUserStatus")
  public abstract UserStatusInfoResult findUserStatus(String paramString1, String paramString2, String paramString3);

  @OperationType("alipay.mobile.aggrbillinfo.user.findUserStatusByType")
  public abstract UserStatusInfoResult findUserStatusV2(UserEmailAccQueryRequest paramUserEmailAccQueryRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.dataservice.user.UserOperationService
 * JD-Core Version:    0.6.2
 */