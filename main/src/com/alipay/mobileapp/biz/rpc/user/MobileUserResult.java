package com.alipay.mobileapp.biz.rpc.user;

import java.util.Map;

public class MobileUserResult
{
  public Map<String, String> bindedLoginIds;
  public String memo;
  public boolean mobileUser;
  public boolean success;
  public String userStatus;

  public Map<String, String> getBindedLoginIds()
  {
    return this.bindedLoginIds;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getUserStatus()
  {
    return this.userStatus;
  }

  public boolean isMobileUser()
  {
    return this.mobileUser;
  }

  public boolean isSuccess()
  {
    return this.success;
  }

  public void setBindedLoginIds(Map<String, String> paramMap)
  {
    this.bindedLoginIds = paramMap;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setMobileUser(boolean paramBoolean)
  {
    this.mobileUser = paramBoolean;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }

  public void setUserStatus(String paramString)
  {
    this.userStatus = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.user.MobileUserResult
 * JD-Core Version:    0.6.2
 */