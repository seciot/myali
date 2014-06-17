package com.alipay.mobileapp.biz.rpc.appauth.facade;

public class AuthSignRes
{
  public String authCode;
  public String memo;
  public int resultStatus;

  public String getAuthCode()
  {
    return this.authCode;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public int getResultStatus()
  {
    return this.resultStatus;
  }

  public void setAuthCode(String paramString)
  {
    this.authCode = paramString;
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
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.appauth.facade.AuthSignRes
 * JD-Core Version:    0.6.2
 */