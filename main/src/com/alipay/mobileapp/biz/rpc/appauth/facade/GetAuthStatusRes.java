package com.alipay.mobileapp.biz.rpc.appauth.facade;

public class GetAuthStatusRes
{
  public String agreementDesc;
  public String agreementUrl;
  public String authCode;
  public String memo;
  public int resultStatus;
  public boolean signStatus;

  public String getAgreementDesc()
  {
    return this.agreementDesc;
  }

  public String getAgreementUrl()
  {
    return this.agreementUrl;
  }

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

  public boolean isSignStatus()
  {
    return this.signStatus;
  }

  public void setAgreementDesc(String paramString)
  {
    this.agreementDesc = paramString;
  }

  public void setAgreementUrl(String paramString)
  {
    this.agreementUrl = paramString;
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

  public void setSignStatus(boolean paramBoolean)
  {
    this.signStatus = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.appauth.facade.GetAuthStatusRes
 * JD-Core Version:    0.6.2
 */