package com.alipay.mobilesecurity.core.model.mobilebind;

import com.alipay.mobilesecurity.common.service.model.ToString;

public class MobileBindSmsReq extends ToString
{
  public String logonId;
  public String mobile;

  public String getLogonId()
  {
    return this.logonId;
  }

  public String getMobile()
  {
    return this.mobile;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mobilebind.MobileBindSmsReq
 * JD-Core Version:    0.6.2
 */