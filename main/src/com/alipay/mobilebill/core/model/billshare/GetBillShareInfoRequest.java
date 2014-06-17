package com.alipay.mobilebill.core.model.billshare;

import com.alipay.mobilebill.common.util.ToString;

public class GetBillShareInfoRequest extends ToString
{
  public String yearMonth;

  public String getYearMonth()
  {
    return this.yearMonth;
  }

  public void setYearMonth(String paramString)
  {
    this.yearMonth = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.core.model.billshare.GetBillShareInfoRequest
 * JD-Core Version:    0.6.2
 */