package com.alipay.mobile.framework.service.ext.security.bean;

import com.j256.ormlite.field.DatabaseField;
import java.io.Serializable;

public class SecurityLevel
  implements Serializable
{
  private static final long serialVersionUID = 1L;

  @DatabaseField
  boolean certified;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  String level;

  @DatabaseField
  String logonId;

  @DatabaseField
  boolean mobileBinded;

  @DatabaseField
  boolean openedDigitalCert;

  @DatabaseField
  boolean openedDynamicPwd;

  @DatabaseField
  boolean openedMobileOtp;

  @DatabaseField
  boolean openedUKey;

  @DatabaseField
  Boolean refresh;

  @DatabaseField
  int score;

  @DatabaseField
  boolean setSecurityQA;

  public int getId()
  {
    return this.id;
  }

  public String getLevel()
  {
    return this.level;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public int getScore()
  {
    return this.score;
  }

  public boolean isCertified()
  {
    return this.certified;
  }

  public boolean isMobileBinded()
  {
    return this.mobileBinded;
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

  public Boolean isRefresh()
  {
    if (this.refresh == null)
      setRefresh(null);
    return this.refresh;
  }

  public boolean isSetSecurityQA()
  {
    return this.setSecurityQA;
  }

  public void setCertified(boolean paramBoolean)
  {
    this.certified = paramBoolean;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setLevel(String paramString)
  {
    this.level = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setMobileBinded(boolean paramBoolean)
  {
    this.mobileBinded = paramBoolean;
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

  public void setRefresh(Boolean paramBoolean)
  {
    if (paramBoolean == null)
      paramBoolean = Boolean.valueOf(false);
    this.refresh = paramBoolean;
  }

  public void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public void setSetSecurityQA(boolean paramBoolean)
  {
    this.setSecurityQA = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel
 * JD-Core Version:    0.6.2
 */