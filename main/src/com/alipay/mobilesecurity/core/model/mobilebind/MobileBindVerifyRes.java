package com.alipay.mobilesecurity.core.model.mobilebind;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class MobileBindVerifyRes extends MobileSecurityResult
{
  public String smsContent;
  public String smsNo;

  public String getSmsContent()
  {
    return this.smsContent;
  }

  public String getSmsNo()
  {
    return this.smsNo;
  }

  public void setSmsContent(String paramString)
  {
    this.smsContent = paramString;
  }

  public void setSmsNo(String paramString)
  {
    this.smsNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobilebind.MobileBindVerifyRes
 * JD-Core Version:    0.6.2
 */