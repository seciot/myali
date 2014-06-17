package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class AuthorizeBalanceBaoDeductReq extends BaseReqVO
{
  public String paymentPassword;

  public String getPaymentPassword()
  {
    return this.paymentPassword;
  }

  public void setPaymentPassword(String paramString)
  {
    this.paymentPassword = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.AuthorizeBalanceBaoDeductReq
 * JD-Core Version:    0.6.2
 */