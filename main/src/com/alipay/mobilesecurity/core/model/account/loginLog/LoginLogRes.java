package com.alipay.mobilesecurity.core.model.account.loginLog;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import java.util.List;

public class LoginLogRes extends MobileSecurityResult
{
  public String actionDt;
  public List<LoginLog> loginLogList;
  public String maxId;

  public String getActionDt()
  {
    return this.actionDt;
  }

  public List<LoginLog> getLoginLogList()
  {
    return this.loginLogList;
  }

  public String getMaxId()
  {
    return this.maxId;
  }

  public void setActionDt(String paramString)
  {
    this.actionDt = paramString;
  }

  public void setLoginLogList(List<LoginLog> paramList)
  {
    this.loginLogList = paramList;
  }

  public void setMaxId(String paramString)
  {
    this.maxId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogRes
 * JD-Core Version:    0.6.2
 */