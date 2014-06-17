package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.mfund.FundInfo;
import java.io.Serializable;

public class FundOpenInfoV0Result extends CommonResult
  implements Serializable
{
  public String account;
  public String certNo;
  public FundInfo fundInfo;
  public String userName;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundOpenInfoV0Result
 * JD-Core Version:    0.6.2
 */