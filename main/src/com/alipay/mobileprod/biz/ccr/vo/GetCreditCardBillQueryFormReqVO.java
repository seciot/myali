package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class GetCreditCardBillQueryFormReqVO extends BaseReqVO
{
  public String bankMark;

  public String getBankMark()
  {
    return this.bankMark;
  }

  public void setBankMark(String paramString)
  {
    this.bankMark = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetCreditCardBillQueryFormReqVO
 * JD-Core Version:    0.6.2
 */