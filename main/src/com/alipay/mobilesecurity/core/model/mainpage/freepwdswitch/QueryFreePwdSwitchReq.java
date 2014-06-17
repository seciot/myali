package com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class QueryFreePwdSwitchReq extends ToString
{
  public String loginId;

  public String getLoginId()
  {
    return this.loginId;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.QueryFreePwdSwitchReq
 * JD-Core Version:    0.6.2
 */