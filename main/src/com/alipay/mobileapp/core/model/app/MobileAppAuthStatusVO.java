package com.alipay.mobileapp.core.model.app;

public class MobileAppAuthStatusVO
{
  private String agreementDesc;
  private String agreementUrl;
  private String authCode;
  private int resultCode = -1;
  private boolean signStatus;

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

  public int getResultCode()
  {
    return this.resultCode;
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

  public void setResultCode(int paramInt)
  {
    this.resultCode = paramInt;
  }

  public void setSignStatus(boolean paramBoolean)
  {
    this.signStatus = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.core.model.app.MobileAppAuthStatusVO
 * JD-Core Version:    0.6.2
 */