package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class CheckCardBinResp extends BaseRespVO
{
  public String bankName;
  public String bankShortName;
  public String cardType;

  public String getBankName()
  {
    return this.bankName;
  }

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public String getCardType()
  {
    return this.cardType;
  }

  public void setBankName(String paramString)
  {
    this.bankName = paramString;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }

  public void setCardType(String paramString)
  {
    this.cardType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.CheckCardBinResp
 * JD-Core Version:    0.6.2
 */