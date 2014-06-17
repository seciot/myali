package com.alipay.mobilebill.core.model.controlinfo;

import com.alipay.mobilebill.common.util.ToString;

public class ControlInfoResult extends ToString
{
  public boolean showFinancialMenu;

  public boolean isShowFinancialMenu()
  {
    return this.showFinancialMenu;
  }

  public void setShowFinancialMenu(boolean paramBoolean)
  {
    this.showFinancialMenu = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.core.model.controlinfo.ControlInfoResult
 * JD-Core Version:    0.6.2
 */