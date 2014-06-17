package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
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
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.ArrivingType
 * JD-Core Version:    0.6.2
 */