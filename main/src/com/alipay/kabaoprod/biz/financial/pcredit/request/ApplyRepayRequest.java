package com.alipay.kabaoprod.biz.financial.pcredit.request;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class ApplyRepayRequest extends ToString
{
  public String applyAmount;
  public String billNo;

  public String getApplyAmount()
  {
    return this.applyAmount;
  }

  public String getBillNo()
  {
    return this.billNo;
  }

  public void setApplyAmount(String paramString)
  {
    this.applyAmount = paramString;
  }

  public void setBillNo(String paramString)
  {
    this.billNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.request.ApplyRepayRequest
 * JD-Core Version:    0.6.2
 */