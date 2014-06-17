package com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class SetFreePwdSwitchReq extends ToString
{
  public String encryptPaymentPwd;
  public int hasSmsCertification = 0;
  public String loginId;
  public String setSwitchType;

  public String getEncryptPaymentPwd()
  {
    return this.encryptPaymentPwd;
  }

  public int getHasSmsCertification()
  {
    return this.hasSmsCertification;
  }

  public String getLoginId()
  {
    return this.loginId;
  }

  public String getSetSwitchType()
  {
    return this.setSwitchType;
  }

  public void setEncryptPaymentPwd(String paramString)
  {
    this.encryptPaymentPwd = paramString;
  }

  public void setHasSmsCertification(int paramInt)
  {
    this.hasSmsCertification = paramInt;
  }

  public void setLoginId(String paramString)
  {
    this.loginId = paramString;
  }

  public void setSetSwitchType(String paramString)
  {
    this.setSwitchType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.SetFreePwdSwitchReq
 * JD-Core Version:    0.6.2
 */