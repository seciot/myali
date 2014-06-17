package com.alipay.mobilewealth.biz.service.gw.model.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class FixedAppointmentInfo extends ToString
  implements Serializable
{
  public String appointmentId;
  public List<BizItem> bizItems;
  public BizItem button;
  public String dealAmount;
  public BizItem dealInfo;
  public float dealPercent;
  public BizItem finishTips;
  public String remainAmount;
  public String totalAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedAppointmentInfo
 * JD-Core Version:    0.6.2
 */