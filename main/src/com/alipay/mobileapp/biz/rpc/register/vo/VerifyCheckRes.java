package com.alipay.mobileapp.biz.rpc.register.vo;

import com.alipay.mobileapp.biz.rpc.RpcCommonRes;

public class VerifyCheckRes extends RpcCommonRes
{
  public boolean mobileUser;
  public String userStatus;

  public String getUserStatus()
  {
    return this.userStatus;
  }

  public boolean isMobileUser()
  {
    return this.mobileUser;
  }

  public void setMobileUser(boolean paramBoolean)
  {
    this.mobileUser = paramBoolean;
  }

  public void setUserStatus(String paramString)
  {
    this.userStatus = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckRes
 * JD-Core Version:    0.6.2
 */