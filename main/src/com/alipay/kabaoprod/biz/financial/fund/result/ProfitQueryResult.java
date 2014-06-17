package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.ProfitInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.List;

public class ProfitQueryResult extends KabaoCommonResult
  implements Serializable
{
  public String maxContent;
  public String maxProfit;
  public String minContent;
  public String minProfit;
  public List<ProfitInfo> profitList;
  public String title;
  public String totalProfit;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.ProfitQueryResult
 * JD-Core Version:    0.6.2
 */