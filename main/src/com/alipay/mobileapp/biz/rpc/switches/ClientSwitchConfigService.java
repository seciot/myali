package com.alipay.mobileapp.biz.rpc.switches;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.biz.rpc.switches.vo.SwitchInfoReq;
import com.alipay.mobileapp.biz.rpc.switches.vo.SwitchInfoResp;

public abstract interface ClientSwitchConfigService
{
  @OperationType("alipay.client.switches.all.get")
  public abstract SwitchInfoResp getAllSwitches(SwitchInfoReq paramSwitchInfoReq);

  @OperationType("alipay.client.switches.all.get.afterlogin")
  public abstract SwitchInfoResp getSwitchesAfterLogin(SwitchInfoReq paramSwitchInfoReq);

  @OperationType("alipay.client.switches.business.get")
  public abstract SwitchInfoResp getSwitchesByBusiness(SwitchInfoReq paramSwitchInfoReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.switches.ClientSwitchConfigService
 * JD-Core Version:    0.6.2
 */