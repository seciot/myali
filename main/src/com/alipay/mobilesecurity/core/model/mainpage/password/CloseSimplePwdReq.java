package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class CloseSimplePwdReq extends ToString
{
  public String pwd;
  public String userId;

  public String getPwd()
  {
    return this.pwd;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setPwd(String paramString)
  {
    this.pwd = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.CloseSimplePwdReq
 * JD-Core Version:    0.6.2
 */