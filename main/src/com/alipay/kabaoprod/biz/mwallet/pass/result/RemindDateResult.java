package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.RemindInfo;

public class RemindDateResult extends KabaoCommonResult
{
  public RemindInfo info;

  public RemindInfo getInfo()
  {
    return this.info;
  }

  public void setInfo(RemindInfo paramRemindInfo)
  {
    this.info = paramRemindInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.RemindDateResult
 * JD-Core Version:    0.6.2
 */