package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class FundLuckDrawInfoResult extends KabaoCommonResult
{
  public String point;
  public String prizeName;

  public String getPoint()
  {
    return this.point;
  }

  public String getPrizeName()
  {
    return this.prizeName;
  }

  public void setPoint(String paramString)
  {
    this.point = paramString;
  }

  public void setPrizeName(String paramString)
  {
    this.prizeName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundLuckDrawInfoResult
 * JD-Core Version:    0.6.2
 */