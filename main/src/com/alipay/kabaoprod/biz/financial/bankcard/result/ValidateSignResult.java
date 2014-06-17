package com.alipay.kabaoprod.biz.financial.bankcard.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class ValidateSignResult extends KabaoCommonResult
{
  public String bankId;
  public String cardType;
  public String expressCacheKey;
  public String instId;
  public String mobileNo;
  public boolean needSmsCheck = false;

  public String getBankId()
  {
    return this.bankId;
  }

  public String getCardType()
  {
    return this.cardType;
  }

  public String getExpressCacheKey()
  {
    return this.expressCacheKey;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public String getMobileNo()
  {
    return this.mobileNo;
  }

  public boolean isNeedSmsCheck()
  {
    return this.needSmsCheck;
  }

  public void setBankId(String paramString)
  {
    this.bankId = paramString;
  }

  public void setCardType(String paramString)
  {
    this.cardType = paramString;
  }

  public void setExpressCacheKey(String paramString)
  {
    this.expressCacheKey = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }

  public void setMobileNo(String paramString)
  {
    this.mobileNo = paramString;
  }

  public void setNeedSmsCheck(boolean paramBoolean)
  {
    this.needSmsCheck = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.result.ValidateSignResult
 * JD-Core Version:    0.6.2
 */