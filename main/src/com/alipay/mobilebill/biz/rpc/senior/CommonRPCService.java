package com.alipay.mobilebill.biz.rpc.senior;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.BizResult;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface CommonRPCService
{
  @OperationType("alipay.mobile.bill.senior.operation")
  @CheckLogin
  public abstract BizResult operation(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.senior.CommonRPCService
 * JD-Core Version:    0.6.2
 */