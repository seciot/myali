package com.alipay.mobileapp.common.service.facade.account.supplement.model;

public class QUserInfoSupplementRes
{
  public String logonId;
  public String memo;
  public int resultStatus = 101;
  public String userName;

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.account.supplement.model.QUserInfoSupplementRes
 * JD-Core Version:    0.6.2
 */