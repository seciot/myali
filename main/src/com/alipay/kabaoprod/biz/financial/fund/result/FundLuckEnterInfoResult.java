package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class FundLuckEnterInfoResult extends KabaoCommonResult
{
  public String campRules;
  public String campTile;

  public String getCampRules()
  {
    return this.campRules;
  }

  public String getCampTile()
  {
    return this.campTile;
  }

  public void setCampRules(String paramString)
  {
    this.campRules = paramString;
  }

  public void setCampTile(String paramString)
  {
    this.campTile = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundLuckEnterInfoResult
 * JD-Core Version:    0.6.2
 */