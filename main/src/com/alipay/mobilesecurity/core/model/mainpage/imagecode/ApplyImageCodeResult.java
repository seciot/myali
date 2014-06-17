package com.alipay.mobilesecurity.core.model.mainpage.imagecode;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class ApplyImageCodeResult extends MobileSecurityResult
{
  public String checkCodeUrl;
  public String imageCode;
  public String sessionId;

  public String getCheckCodeUrl()
  {
    return this.checkCodeUrl;
  }

  public String getImageCode()
  {
    return this.imageCode;
  }

  public String getSessionId()
  {
    return this.sessionId;
  }

  public void setCheckCodeUrl(String paramString)
  {
    this.checkCodeUrl = paramString;
  }

  public void setImageCode(String paramString)
  {
    this.imageCode = paramString;
  }

  public void setSessionId(String paramString)
  {
    this.sessionId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.imagecode.ApplyImageCodeResult
 * JD-Core Version:    0.6.2
 */