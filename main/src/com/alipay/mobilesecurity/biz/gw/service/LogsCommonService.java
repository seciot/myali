package com.alipay.mobilesecurity.biz.gw.service;

import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobilesecurity.biz.gw.service.account.LoginLogServiceFacade;
import com.alipay.mobilesecurity.biz.gw.service.approve.ApproveFacade;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogReq;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogRes;
import com.alipay.mobilesecurity.core.model.approve.QueryApproveRecordReq;
import com.alipay.mobilesecurity.core.model.approve.QueryApproveRecordRes;

public class LogsCommonService
{
  public static final String TAG = LogsCommonService.class.getSimpleName();
  private ActivityApplication a;
  private RpcService b;

  public LogsCommonService(ActivityApplication paramActivityApplication)
  {
    this.a = paramActivityApplication;
    this.b = ((RpcService)this.a.getServiceByInterface(RpcService.class.getName()));
  }

  public QueryApproveRecordRes getAuthorizeLogs(String paramString)
  {
    new StringBuilder("query logs start on [").append(paramString).append("]").toString();
    QueryApproveRecordReq localQueryApproveRecordReq = new QueryApproveRecordReq();
    localQueryApproveRecordReq.maxId = paramString;
    return ((ApproveFacade)this.b.getRpcProxy(ApproveFacade.class)).queryApproveRecordList(localQueryApproveRecordReq);
  }

  public LoginLogRes getLoginLogs(String paramString1, String paramString2)
  {
    new StringBuilder("query logs start on [").append(paramString1).append("]").toString();
    LoginLogReq localLoginLogReq = new LoginLogReq();
    localLoginLogReq.setMaxId(paramString1);
    localLoginLogReq.setActionDt(paramString2);
    return ((LoginLogServiceFacade)this.b.getRpcProxy(LoginLogServiceFacade.class)).queryLoginLogByPage(localLoginLogReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.LogsCommonService
 * JD-Core Version:    0.6.2
 */