package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class ApplyCreditCardBillQueryReqVO extends BaseReqVO
{
  public String cardId;
  public String checkCode;
  public String cvv2;
  public String expdate;
  public String identityNo;
  public String identityType;
  public String mobile;

  public String getCardId()
  {
    return this.cardId;
  }

  public String getCheckCode()
  {
    return this.checkCode;
  }

  public String getCvv2()
  {
    return this.cvv2;
  }

  public String getExpdate()
  {
    return this.expdate;
  }

  public String getIdentityNo()
  {
    return this.identityNo;
  }

  public String getIdentityType()
  {
    return this.identityType;
  }

  public String getMobile()
  {
    return this.mobile;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }

  public void setCheckCode(String paramString)
  {
    this.checkCode = paramString;
  }

  public void setCvv2(String paramString)
  {
    this.cvv2 = paramString;
  }

  public void setExpdate(String paramString)
  {
    this.expdate = paramString;
  }

  public void setIdentityNo(String paramString)
  {
    this.identityNo = paramString;
  }

  public void setIdentityType(String paramString)
  {
    this.identityType = paramString;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.ApplyCreditCardBillQueryReqVO
 * JD-Core Version:    0.6.2
 */