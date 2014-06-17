package com.alipay.mobilesecurity.core.model.mainpage.password;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class QuerySimplePwdStatusResp extends MobileSecurityResult
{
  public boolean open;

  public boolean isOpen()
  {
    return this.open;
  }

  public void setOpen(boolean paramBoolean)
  {
    this.open = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.mainpage.password.QuerySimplePwdStatusResp
 * JD-Core Version:    0.6.2
 */