package com.alipay.aggrbillinfo.biz.mgnt.email.info;

import com.alipay.aggrbillinfo.common.service.facade.model.ToString;

public class UserEmailAccQueryRequest extends ToString
{
  public String bankCode;
  public String cardNo;
  public String queryType;
  public String realName;

  public String getBankCode()
  {
    return this.bankCode;
  }

  public String getCardNo()
  {
    return this.cardNo;
  }

  public String getQueryType()
  {
    return this.queryType;
  }

  public String getRealName()
  {
    return this.realName;
  }

  public void setBankCode(String paramString)
  {
    this.bankCode = paramString;
  }

  public void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }

  public void setQueryType(String paramString)
  {
    this.queryType = paramString;
  }

  public void setRealName(String paramString)
  {
    this.realName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.email.info.UserEmailAccQueryRequest
 * JD-Core Version:    0.6.2
 */