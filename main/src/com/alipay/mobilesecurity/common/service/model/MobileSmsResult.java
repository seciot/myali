package com.alipay.mobilesecurity.common.service.model;

public class MobileSmsResult extends MobileSecurityResult
{
  public String bindedPhoneNo;
  public int codeLength;
  public String codeType;
  public String smsAuthType;
  public int smsRetryIntervel;
  public int smsValidIntervel;

  public String getBindedPhoneNo()
  {
    return this.bindedPhoneNo;
  }

  public int getCodeLength()
  {
    return this.codeLength;
  }

  public String getCodeType()
  {
    return this.codeType;
  }

  public String getSmsAuthType()
  {
    return this.smsAuthType;
  }

  public int getSmsRetryIntervel()
  {
    return this.smsRetryIntervel;
  }

  public int getSmsValidIntervel()
  {
    return this.smsValidIntervel;
  }

  public void setBindedPhoneNo(String paramString)
  {
    this.bindedPhoneNo = paramString;
  }

  public void setCodeLength(int paramInt)
  {
    this.codeLength = paramInt;
  }

  public void setCodeType(String paramString)
  {
    this.codeType = paramString;
  }

  public void setSmsAuthType(String paramString)
  {
    this.smsAuthType = paramString;
  }

  public void setSmsRetryIntervel(int paramInt)
  {
    this.smsRetryIntervel = paramInt;
  }

  public void setSmsValidIntervel(int paramInt)
  {
    this.smsValidIntervel = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.common.service.model.MobileSmsResult
 * JD-Core Version:    0.6.2
 */