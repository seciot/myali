package com.alipay.mobilebill.biz.rpc.contorlinfo;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.core.model.controlinfo.ControlInfoResult;

public abstract interface QueryControlInfoRPCService
{
  @OperationType("alipay.mobile.bill.queryControlInfo")
  public abstract ControlInfoResult queryControlInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.contorlinfo.QueryControlInfoRPCService
 * JD-Core Version:    0.6.2
 */