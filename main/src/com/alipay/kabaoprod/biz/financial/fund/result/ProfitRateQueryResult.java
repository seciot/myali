package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.ProfitRateInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.List;

public class ProfitRateQueryResult extends KabaoCommonResult
  implements Serializable
{
  public String maxProfitContent;
  public String maxProfitRate;
  public String minProfitContent;
  public String minProfitRate;
  public String monthAvgProfit;
  public List<ProfitRateInfo> profitRateList;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.ProfitRateQueryResult
 * JD-Core Version:    0.6.2
 */