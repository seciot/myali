package com.alipay.mobilesecurity.biz.gw.service.securitywidget;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.core.model.mainpage.homedata.AccountSecurityHomeDataReq;
import com.alipay.mobilesecurity.core.model.mainpage.homedata.AccountSecurityHomeDataRes;
import com.alipay.mobilesecurity.core.model.mainpage.imagecode.ApplyImageCodeRequst;
import com.alipay.mobilesecurity.core.model.mainpage.imagecode.ApplyImageCodeResult;
import com.alipay.mobilesecurity.core.model.mainpage.level.QueryAccountSecurityLevelResp;
import com.alipay.mobilesecurity.core.model.mainpage.level.SecurityCheckReq;
import com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogReq;
import com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogRes;
import com.alipay.mobilesecurity.core.model.mainpage.quickhelp.QuickHelpResp;

public abstract interface SecurityWidgetFacade
{
  @OperationType("alipay.mobile.security.homedata.getHomeData")
  public abstract AccountSecurityHomeDataRes getHomeData(AccountSecurityHomeDataReq paramAccountSecurityHomeDataReq);

  @OperationType("alipay.mobile.security.login.getImageCode")
  public abstract ApplyImageCodeResult getImageCode(ApplyImageCodeRequst paramApplyImageCodeRequst);

  @OperationType("alipay.mobile.security.account.getQuickHelp")
  public abstract QuickHelpResp getQuickHelp(String paramString);

  @OperationType("alipay.mobile.security.account.queryAccountSecurityCheckResult")
  public abstract QueryAccountSecurityLevelResp queryAccountSecurityCheckResult(SecurityCheckReq paramSecurityCheckReq);

  @OperationType("alipay.mobile.security.account.queryAccountSecurityLevel")
  public abstract QueryAccountSecurityLevelResp queryAccountSecurityLevel(String paramString);

  @OperationType("alipay.mobile.security.operations.queryOperationsLog")
  public abstract OperationsLogRes queryOperationsLog(OperationsLogReq paramOperationsLogReq);

  @OperationType("alipay.mobile.security.account.securityCheck")
  public abstract QueryAccountSecurityLevelResp securityCheck(SecurityCheckReq paramSecurityCheckReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.securitywidget.SecurityWidgetFacade
 * JD-Core Version:    0.6.2
 */