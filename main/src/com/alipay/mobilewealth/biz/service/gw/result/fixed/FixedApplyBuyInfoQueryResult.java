package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.common.RecommendChannelInfo;
import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedProductInfo;
import com.alipay.mobilewealth.biz.service.gw.model.fixed.UserAgreementInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;

public class FixedApplyBuyInfoQueryResult extends CommonResult
  implements Serializable
{
  public RecommendChannelInfo channelInfo;
  public String guideTips;
  public double maxAmount;
  public String maxAmountTips;
  public double minAmount;
  public String minAmountTips;
  public FixedProductInfo productInfo;
  public String riskTips;
  public String shareTips;
  public String tips;
  public UserAgreementInfo userAgreementInfo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyBuyInfoQueryResult
 * JD-Core Version:    0.6.2
 */