package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.MobileSmsResult;

public class ApplyModifyPwdResult extends MobileSmsResult
{
  public boolean certified;
  public String imageCode;
  public String sessionId;
  public String smsCode;

  public String getImageCode()
  {
    return this.imageCode;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public String getSmsCode()
  {
    return this.smsCode;
  }

  public boolean isCertified()
  {
    return this.certified;
  }

  public void setCertified(boolean paramBoolean)
  {
    this.certified = paramBoolean;
  }

  public void setImageCode(String paramString)
  {
    this.imageCode = paramString;
  }

  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }

  public void setSmsCode(String paramString)
  {
    this.smsCode = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult
 * JD-Core Version:    0.6.2
 */