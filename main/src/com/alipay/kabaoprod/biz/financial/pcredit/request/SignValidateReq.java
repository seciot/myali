package com.alipay.kabaoprod.biz.financial.pcredit.request;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class SignValidateReq extends ToString
{
  public String bornDay;
  public String bornMonth;
  public String bornYear;
  public String payPassword;

  public String getBornDay()
  {
    return this.bornDay;
  }

  public String getBornMonth()
  {
    return this.bornMonth;
  }

  public String getBornYear()
  {
    return this.bornYear;
  }

  public String getPayPassword()
  {
    return this.payPassword;
  }

  public void setBornDay(String paramString)
  {
    this.bornDay = paramString;
  }

  public void setBornMonth(String paramString)
  {
    this.bornMonth = paramString;
  }

  public void setBornYear(String paramString)
  {
    this.bornYear = paramString;
  }

  public void setPayPassword(String paramString)
  {
    this.payPassword = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.request.SignValidateReq
 * JD-Core Version:    0.6.2
 */