package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedCategoryInfo;
import com.alipay.mobilewealth.biz.service.gw.model.fixed.UserAgreementInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class FixedApplyAppointInfoQueryResult extends CommonResult
  implements Serializable
{
  public double appointAmount;
  public String buttonText;
  public BizItem categoryInstruction;
  public List<FixedCategoryInfo> categorys;
  public double fundAmount;
  public String guideText;
  public double maxAppointAmount;
  public double maxProfitRate;
  public double minAppointAmount;
  public double minProfitRate;
  public boolean needTransferIn;
  public String passwordType;
  public String profitRateText;
  public double suggestProfitRate;
  public String tips;
  public String titleText;
  public UserAgreementInfo userAgreementInfo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyAppointInfoQueryResult
 * JD-Core Version:    0.6.2
 */