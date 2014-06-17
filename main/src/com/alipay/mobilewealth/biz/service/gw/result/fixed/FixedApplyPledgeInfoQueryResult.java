package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;

public class FixedApplyPledgeInfoQueryResult extends CommonResult
  implements Serializable
{
  public String assetId;
  public boolean charge;
  public double maxPledgeAmount;
  public String maxPledgeAmountTips;
  public double minPledgeAmount;
  public String passwordType;
  public String tips;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyPledgeInfoQueryResult
 * JD-Core Version:    0.6.2
 */