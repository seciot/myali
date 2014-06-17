package com.alipay.mobilesecurity.core.model.login;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class ShowTiaoGuoBtnRes extends MobileSecurityResult
{
  public boolean showBtn;

  public boolean isShowBtn()
  {
    return this.showBtn;
  }

  public void setShowBtn(boolean paramBoolean)
  {
    this.showBtn = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.login.ShowTiaoGuoBtnRes
 * JD-Core Version:    0.6.2
 */