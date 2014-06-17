package com.alipay.mobilegw.biz.shared.processer.logout;

public class UserLogoutResult
{
  public String memo;
  public int resultStatus;

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setResultStatus(int paramInt)
  {
    this.resultStatus = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.logout.UserLogoutResult
 * JD-Core Version:    0.6.2
 */