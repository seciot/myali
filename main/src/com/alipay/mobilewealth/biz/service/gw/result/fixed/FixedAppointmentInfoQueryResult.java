package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedAppointmentInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;

public class FixedAppointmentInfoQueryResult extends CommonResult
  implements Serializable
{
  public FixedAppointmentInfo appointmentInfo;
  public String fundAmount;
  public String title;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedAppointmentInfoQueryResult
 * JD-Core Version:    0.6.2
 */