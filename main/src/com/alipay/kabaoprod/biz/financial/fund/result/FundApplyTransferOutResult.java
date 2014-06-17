package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class FundApplyTransferOutResult extends KabaoCommonResult
{
  public String canTransferOutAmount;
  public String totalAmount;

  public String getCanTransferOutAmount()
  {
    return this.canTransferOutAmount;
  }

  public String getTotalAmount()
  {
    return this.totalAmount;
  }

  public void setCanTransferOutAmount(String paramString)
  {
    this.canTransferOutAmount = paramString;
  }

  public void setTotalAmount(String paramString)
  {
    this.totalAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferOutResult
 * JD-Core Version:    0.6.2
 */