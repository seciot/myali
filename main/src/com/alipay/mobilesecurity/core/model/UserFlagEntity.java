package com.alipay.mobilesecurity.core.model;

import com.alipay.mobilesecurity.common.service.model.ToString;
import java.util.Date;

public class UserFlagEntity extends ToString
{
  public String headImgUrl;
  public Date lastLoginTime;
  public boolean loginWithoutPwd = false;
  public String logonId;
  public String userId;
  public String userType;

  public String getHeadImgUrl()
  {
    return this.headImgUrl;
  }

  public Date getLastLoginTime()
  {
    return this.lastLoginTime;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public String getUserType()
  {
    return this.userType;
  }

  public boolean isLoginWithoutPwd()
  {
    return this.loginWithoutPwd;
  }

  public void setHeadImgUrl(String paramString)
  {
    this.headImgUrl = paramString;
  }

  public void setLastLoginTime(Date paramDate)
  {
    this.lastLoginTime = paramDate;
  }

  public void setLoginWithoutPwd(boolean paramBoolean)
  {
    this.loginWithoutPwd = paramBoolean;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void setUserType(String paramString)
  {
    this.userType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.UserFlagEntity
 * JD-Core Version:    0.6.2
 */