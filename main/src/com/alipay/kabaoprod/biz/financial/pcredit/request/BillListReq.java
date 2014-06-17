package com.alipay.kabaoprod.biz.financial.pcredit.request;

import com.alipay.kabaoprod.biz.shared.request.KabaoCommonPageReq;

public class BillListReq extends KabaoCommonPageReq
{
  public String billPeriodBegin;
  public String billPeriodEnd;

  public String getBillPeriodBegin()
  {
    return this.billPeriodBegin;
  }

  public String getBillPeriodEnd()
  {
    return this.billPeriodEnd;
  }

  public void setBillPeriodBegin(String paramString)
  {
    this.billPeriodBegin = paramString;
  }

  public void setBillPeriodEnd(String paramString)
  {
    this.billPeriodEnd = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.request.BillListReq
 * JD-Core Version:    0.6.2
 */