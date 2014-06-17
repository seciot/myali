package com.alipay.mobilesecurity.biz.gw.service.securitywidget;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.QueryFreePwdSwitchReq;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.QueryFreePwdSwitchRes;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.SetFreePwdSwitchReq;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.SetFreePwdSwitchRes;

public abstract interface FreePasswordSwitchFacade
{
  @OperationType("alipay.mobile.security.freePassword.queryFreePwdSwitch")
  public abstract QueryFreePwdSwitchRes queryFreePwdSwitch(QueryFreePwdSwitchReq paramQueryFreePwdSwitchReq);

  @OperationType("alipay.mobile.security.freePassword.setFreePwdSwitch")
  public abstract SetFreePwdSwitchRes setFreePwdSwitch(SetFreePwdSwitchReq paramSetFreePwdSwitchReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.securitywidget.FreePasswordSwitchFacade
 * JD-Core Version:    0.6.2
 */