package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.common.ShareInfo;
import com.alipay.mobilewealth.core.model.models.mfund.FundAssetAccountInfo;
import com.alipay.mobilewealth.core.model.models.mfund.FundInfo;
import com.alipay.mobilewealth.core.model.models.mfund.FundProfitIntervalInfo;
import java.io.Serializable;
import java.util.Map;

public class FundHomeInfoResult extends CommonResult
  implements Serializable
{
  public Map<String, String> extraInfo;
  public FundAssetAccountInfo fundAssetAccountInfo;
  public FundInfo fundInfo;
  public FundProfitIntervalInfo fundProfitIntervalInfo;
  public Map<String, ShareInfo> shareInfoMap;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundHomeInfoResult
 * JD-Core Version:    0.6.2
 */