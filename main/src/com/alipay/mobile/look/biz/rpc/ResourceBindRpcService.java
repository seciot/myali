package com.alipay.mobile.look.biz.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface ResourceBindRpcService
{
  @OperationType("alipay.mobile.resourcebind.bindToBiz")
  @CheckLogin
  public abstract ResourceBindToBizResponse bindToBiz(ResourceBindToBizRequest paramResourceBindToBizRequest);

  @OperationType("alipay.mobile.resourcebind.bindToUser")
  @CheckLogin
  public abstract ResourceBindToUserResponse bindToUser(ResourceBindToUserRequest paramResourceBindToUserRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.look.biz.rpc.ResourceBindRpcService
 * JD-Core Version:    0.6.2
 */