package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
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
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.FundProfitChartInfo
 * JD-Core Version:    0.6.2
 */