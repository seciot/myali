package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.mfund.BankCardForTransferOut;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class FundApplyTransferToCardResult extends CommonResult
  implements Serializable
{
  public List<BankCardForTransferOut> bankCards;
  public String canTransferTimeString;
  public Map<String, String> extraInfo;
  public String passwordType;
  public String quotaContent;
  public String totalAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundApplyTransferToCardResult
 * JD-Core Version:    0.6.2
 */