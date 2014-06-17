package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.biz.service.gw.model.common.RecommendChannelInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;

public class QueryFundTransferInChannelResult extends CommonResult
  implements Serializable
{
  public RecommendChannelInfo channelInfo;
  public String expectProfitDate;
  public String profitDateAfter3PM;
  public String profitDateDesc;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.QueryFundTransferInChannelResult
 * JD-Core Version:    0.6.2
 */