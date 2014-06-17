package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;
import java.util.Map;

public class FundAutoTransferInResult extends CommonResult
  implements Serializable
{
  Map<String, String> extraInfo;
  public String leftAmount;
  public String status;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundAutoTransferInResult
 * JD-Core Version:    0.6.2
 */