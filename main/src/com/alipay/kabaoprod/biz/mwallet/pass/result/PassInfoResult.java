package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.PassInfo;

public class PassInfoResult extends KabaoCommonResult
{
  public PassInfo passInfo;

  public PassInfo getPassInfo()
  {
    return this.passInfo;
  }

  public void setPassInfo(PassInfo paramPassInfo)
  {
    this.passInfo = paramPassInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult
 * JD-Core Version:    0.6.2
 */