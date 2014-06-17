package com.alipay.mobilegw.biz.shared.processer.register.smsOut;

public class VerifySmsCheckCodeReq
{
  public String checkCode;
  public String mobileNo;

  public String getCheckCode()
  {
    return this.checkCode;
  }

  public String getMobileNo()
  {
    return this.mobileNo;
  }

  public void setCheckCode(String paramString)
  {
    this.checkCode = paramString;
  }

  public void setMobileNo(String paramString)
  {
    this.mobileNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.register.smsOut.VerifySmsCheckCodeReq
 * JD-Core Version:    0.6.2
 */