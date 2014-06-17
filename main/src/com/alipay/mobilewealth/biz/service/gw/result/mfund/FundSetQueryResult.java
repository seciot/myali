package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.mfund.FundAssetChangeNoticeSet;
import com.alipay.mobilewealth.core.model.models.mfund.FundAutoTransferInSet;
import com.alipay.mobilewealth.core.model.models.mfund.FundTotalAmountHiddenSet;
import java.io.Serializable;

public class FundSetQueryResult extends CommonResult
  implements Serializable
{
  public FundAssetChangeNoticeSet fundAssetChangeNoticeSet;
  public FundAutoTransferInSet fundAutoTransferInSet;
  public FundTotalAmountHiddenSet fundTotalAmountHiddenSet;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundSetQueryResult
 * JD-Core Version:    0.6.2
 */