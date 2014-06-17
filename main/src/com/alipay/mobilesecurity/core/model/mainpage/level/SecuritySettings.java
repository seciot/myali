package com.alipay.mobilesecurity.core.model.mainpage.level;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class SecuritySettings extends ToString
{
  public boolean certified;
  public boolean certifiedAndMobileBind;
  public String mobileBindNo;
  public boolean mobileBinded;
  public boolean openPush;
  public boolean openedDigitalCert;
  public boolean openedDynamicPwd;
  public boolean openedMobileOtp;
  public boolean openedUKey;
  public boolean setDeviceAuthentication;
  public boolean setGesture;
  public boolean setHeadPic;
  public boolean setSecurityQA;
  public String userName;

  public String getMobileBindNo()
  {
    return this.mobileBindNo;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public boolean isCertified()
  {
    return this.certified;
  }

  public boolean isCertifiedAndMobileBind()
  {
    return this.certifiedAndMobileBind;
  }

  public boolean isMobileBinded()
  {
    return this.mobileBinded;
  }

  public boolean isOpenPush()
  {
    return this.openPush;
  }

  public boolean isOpenedDigitalCert()
  {
    return this.openedDigitalCert;
  }

  public boolean isOpenedDynamicPwd()
  {
    return this.openedDynamicPwd;
  }

  public boolean isOpenedMobileOtp()
  {
    return this.openedMobileOtp;
  }

  public boolean isOpenedUKey()
  {
    return this.openedUKey;
  }

  public boolean isSetDeviceAuthentication()
  {
    return this.setDeviceAuthentication;
  }

  public boolean isSetGesture()
  {
    return this.setGesture;
  }

  public boolean isSetHeadPic()
  {
    return this.setHeadPic;
  }

  public boolean isSetSecurityQA()
  {
    return this.setSecurityQA;
  }

  public void setCertified(boolean paramBoolean)
  {
    this.certified = paramBoolean;
  }

  public void setCertifiedAndMobileBind(boolean paramBoolean)
  {
    this.certifiedAndMobileBind = paramBoolean;
  }

  public void setMobileBindNo(String paramString)
  {
    this.mobileBindNo = paramString;
  }

  public void setMobileBinded(boolean paramBoolean)
  {
    this.mobileBinded = paramBoolean;
  }

  public void setOpenPush(boolean paramBoolean)
  {
    this.openPush = paramBoolean;
  }

  public void setOpenedDigitalCert(boolean paramBoolean)
  {
    this.openedDigitalCert = paramBoolean;
  }

  public void setOpenedDynamicPwd(boolean paramBoolean)
  {
    this.openedDynamicPwd = paramBoolean;
  }

  public void setOpenedMobileOtp(boolean paramBoolean)
  {
    this.openedMobileOtp = paramBoolean;
  }

  public void setOpenedUKey(boolean paramBoolean)
  {
    this.openedUKey = paramBoolean;
  }

  public void setSetDeviceAuthentication(boolean paramBoolean)
  {
    this.setDeviceAuthentication = paramBoolean;
  }

  public void setSetGesture(boolean paramBoolean)
  {
    this.setGesture = paramBoolean;
  }

  public void setSetHeadPic(boolean paramBoolean)
  {
    this.setHeadPic = paramBoolean;
  }

  public void setSetSecurityQA(boolean paramBoolean)
  {
    this.setSecurityQA = paramBoolean;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.level.SecuritySettings
 * JD-Core Version:    0.6.2
 */