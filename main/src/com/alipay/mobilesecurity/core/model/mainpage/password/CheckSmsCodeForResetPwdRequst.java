package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class CheckSmsCodeForResetPwdRequst extends ToString
{
  public String bindedPhoneNo;
  public String loginId;
  public String randomNo;

  public String getBindedPhoneNo()
  {
    return this.bindedPhoneNo;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getRandomNo()
  {
    return this.randomNo;
  }

  public void setBindedPhoneNo(String paramString)
  {
    this.bindedPhoneNo = paramString;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setRandomNo(String paramString)
  {
    this.randomNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.CheckSmsCodeForResetPwdRequst
 * JD-Core Version:    0.6.2
 */