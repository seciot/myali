package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.mfund.FundBaseAssetAccountInfo;
import com.alipay.mobilewealth.core.model.models.mfund.FundInfo;
import com.alipay.mobilewealth.core.model.models.mfund.FundProfitChartInfo;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class FundHomeInfoV0320Result extends CommonResult
  implements Serializable
{
  public Map<String, String> extraInfo;
  public FundBaseAssetAccountInfo fundBaseAssetAccountInfo;
  public FundInfo fundInfo;
  public List<FundProfitChartInfo> fundProfitChartInfoList;
  public boolean totalAmoutHidden;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundHomeInfoV0320Result
 * JD-Core Version:    0.6.2
 */