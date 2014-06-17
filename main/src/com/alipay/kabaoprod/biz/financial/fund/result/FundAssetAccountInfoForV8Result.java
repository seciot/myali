package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.FundBaseAssetAccountInfo;
import com.alipay.kabaoprod.biz.financial.fund.model.FundInfo;
import com.alipay.kabaoprod.biz.financial.fund.model.FundProfitChartInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class FundAssetAccountInfoForV8Result extends KabaoCommonResult
  implements Serializable
{
  public Map<String, String> extraInfo;
  public FundBaseAssetAccountInfo fundBaseAssetAccountInfo;
  public FundInfo fundInfo;
  public List<FundProfitChartInfo> fundProfitChartInfoList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundAssetAccountInfoForV8Result
 * JD-Core Version:    0.6.2
 */