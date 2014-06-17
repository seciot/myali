package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class GetRepaymentResultReqVO extends BaseReqVO
{
  public String billNumber;

  public String getBillNumber()
  {
    return this.billNumber;
  }

  public void setBillNumber(String paramString)
  {
    this.billNumber = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetRepaymentResultReqVO
 * JD-Core Version:    0.6.2
 */