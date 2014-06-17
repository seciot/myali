package com.alipay.mobilesecurity.core.model.account.loginLog;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class LoginLogReq extends ToString
{
  public String actionDt;
  public String maxId;

  public String getActionDt()
  {
    return this.actionDt;
  }

  public String getMaxId()
  {
    return this.maxId;
  }

  public void setActionDt(String paramString)
  {
    this.actionDt = paramString;
  }

  public void setMaxId(String paramString)
  {
    this.maxId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogReq
 * JD-Core Version:    0.6.2
 */