package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.biz.service.gw.model.mfund.FundTransferStateInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;
import java.util.Map;

public class FundTransferInSuccessResult extends CommonResult
  implements Serializable
{
  public String profitDateMsg;
  public Map<String, FundTransferStateInfo> transferInStateMap;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundTransferInSuccessResult
 * JD-Core Version:    0.6.2
 */