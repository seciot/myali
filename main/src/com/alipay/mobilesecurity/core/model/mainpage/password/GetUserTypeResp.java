package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class GetUserTypeResp extends MobileSecurityResult
{
  public String userTypre;

  public String getUserTypre()
  {
    return this.userTypre;
  }

  public void setUserTypre(String paramString)
  {
    this.userTypre = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.GetUserTypeResp
 * JD-Core Version:    0.6.2
 */