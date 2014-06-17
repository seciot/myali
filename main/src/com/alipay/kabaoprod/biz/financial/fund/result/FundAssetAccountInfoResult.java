package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.FundAssetAccountInfo;
import com.alipay.kabaoprod.biz.financial.fund.model.FundInfo;
import com.alipay.kabaoprod.biz.financial.fund.model.FundProfitIntervalInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.ShareInfo;
import java.io.Serializable;
import java.util.Map;

public class FundAssetAccountInfoResult extends KabaoCommonResult
  implements Serializable
{
  public Map<String, String> extraInfo;
  public FundAssetAccountInfo fundAssetAccountInfo;
  public FundInfo fundInfo;
  public FundProfitIntervalInfo fundProfitIntervalInfo;
  public Map<String, ShareInfo> shareInfoMap;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundAssetAccountInfoResult
 * JD-Core Version:    0.6.2
 */