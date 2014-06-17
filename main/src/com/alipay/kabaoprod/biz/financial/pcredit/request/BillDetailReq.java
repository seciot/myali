package com.alipay.kabaoprod.biz.financial.pcredit.request;

import com.alipay.kabaoprod.biz.shared.request.KabaoCommonPageReq;

public class BillDetailReq extends KabaoCommonPageReq
{
  public String billNo;
  public boolean hasSettled = true;

  public String getBillNo()
  {
    return this.billNo;
  }

  public boolean isHasSettled()
  {
    return this.hasSettled;
  }

  public void setBillNo(String paramString)
  {
    this.billNo = paramString;
  }

  public void setHasSettled(boolean paramBoolean)
  {
    this.hasSettled = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.request.BillDetailReq
 * JD-Core Version:    0.6.2
 */