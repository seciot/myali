package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class ArrivingTypeInfo extends ToString
  implements Serializable
{
  public String arrivingTypeQuota;
  public double highLimit;
  public double lowLimit;
  public String typeValue;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.ArrivingTypeInfo
 * JD-Core Version:    0.6.2
 */