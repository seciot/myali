package com.alipay.mobilesecurity.biz.gw.service.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogReq;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogRes;

public abstract interface LoginLogServiceFacade
{
  @OperationType("alipay.mobile.security.loginLog.queryLog")
  @CheckLogin
  public abstract LoginLogRes queryLoginLogByPage(LoginLogReq paramLoginLogReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.LoginLogServiceFacade
 * JD-Core Version:    0.6.2
 */