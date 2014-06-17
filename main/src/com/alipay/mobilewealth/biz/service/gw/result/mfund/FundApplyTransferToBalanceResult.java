package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;

public class FundApplyTransferToBalanceResult extends CommonResult
  implements Serializable
{
  public String canTransferOutAmount;
  public String passwordType;
  public String quotaContent;
  public String totalAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundApplyTransferToBalanceResult
 * JD-Core Version:    0.6.2
 */