package com.alipay.mobilebill.biz.shared.bill.model;

import com.alipay.mobile.framework.service.ext.BizResult;

public class BillDetail extends BillInfo
{
  public BizResult result;

  public BizResult getResult()
  {
    return this.result;
  }

  public void setResult(BizResult paramBizResult)
  {
    this.result = paramBizResult;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.bill.model.BillDetail
 * JD-Core Version:    0.6.2
 */