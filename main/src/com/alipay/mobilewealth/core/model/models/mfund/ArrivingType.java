package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.Map;

public class ArrivingType extends ToString
  implements Serializable
{
  public Map<String, String> arrivingTypeQuota;
  public String avaliableMoney;
  public String typeName;
  public String typeValue;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.ArrivingType
 * JD-Core Version:    0.6.2
 */