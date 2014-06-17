package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class TenThousandIncome extends ToString
{
  private String calDate;
  private String tenThousandIncomeValue;

  public String getCalDate()
  {
    return this.calDate;
  }

  public String getTenThousandIncomeValue()
  {
    return this.tenThousandIncomeValue;
  }

  public void setCalDate(String paramString)
  {
    this.calDate = paramString;
  }

  public void setTenThousandIncomeValue(String paramString)
  {
    this.tenThousandIncomeValue = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.TenThousandIncome
 * JD-Core Version:    0.6.2
 */