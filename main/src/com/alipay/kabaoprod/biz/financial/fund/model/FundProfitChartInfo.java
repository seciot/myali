package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class FundProfitChartInfo extends ToString
  implements Serializable
{
  public String chartFlag;
  public String chartName;
  public List<ProfitInfo> fundIncomeRateList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.FundProfitChartInfo
 * JD-Core Version:    0.6.2
 */