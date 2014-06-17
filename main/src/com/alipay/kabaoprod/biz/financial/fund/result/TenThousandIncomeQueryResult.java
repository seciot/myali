package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.ProfitInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.List;

public class TenThousandIncomeQueryResult extends KabaoCommonResult
  implements Serializable
{
  public String maxTenThousandIncome;
  public String maxTenThousandIncomeContent;
  public String minTenThousandIncome;
  public String minTenThousandIncomeContent;
  public String monthAvgTenThousandIncome;
  public List<ProfitInfo> tenThousandIncomeList;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.TenThousandIncomeQueryResult
 * JD-Core Version:    0.6.2
 */