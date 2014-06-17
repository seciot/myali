package com.alipay.mobilesecurity.core.model.mainpage.quickhelp;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class QuickHelpResp extends MobileSecurityResult
{
  public boolean certified;
  public boolean openSimplePwd;

  public boolean isCertified()
  {
    return this.certified;
  }

  public boolean isOpenSimplePwd()
  {
    return this.openSimplePwd;
  }

  public void setCertified(boolean paramBoolean)
  {
    this.certified = paramBoolean;
  }

  public void setOpenSimplePwd(boolean paramBoolean)
  {
    this.openSimplePwd = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.quickhelp.QuickHelpResp
 * JD-Core Version:    0.6.2
 */