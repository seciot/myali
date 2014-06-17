package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.financial.pcredit.model.CreditAccountInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class PcreditAccountInfoResult extends KabaoCommonResult
{
  public CreditAccountInfo creditAccountInfo;

  public CreditAccountInfo getCreditAccountInfo()
  {
    return this.creditAccountInfo;
  }

  public void setCreditAccountInfo(CreditAccountInfo paramCreditAccountInfo)
  {
    this.creditAccountInfo = paramCreditAccountInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.PcreditAccountInfoResult
 * JD-Core Version:    0.6.2
 */