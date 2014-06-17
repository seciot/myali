package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class FixedApplyAppointResult extends CommonResult
  implements Serializable
{
  public String appointmentId;
  public List<BizItem> bizItems;
  public String dealAmount;
  public String hiddenedMobile;
  public String mobile;
  public String tairKey;
  public String tips;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyAppointResult
 * JD-Core Version:    0.6.2
 */