package com.alipay.mobileprod.core.model.puc.domain;

import java.io.Serializable;
import java.util.List;

public class ChargeInst
  implements Serializable
{
  public boolean available;
  public String availableDesc;
  public String bizType;
  public String city;
  public List<ModelField> inputFieldList;
  public String instId;
  public String instName;
  public List<ModelField> loadFieldList;
  public String province;
  public String queryMode;
  public String subBizType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.core.model.puc.domain.ChargeInst
 * JD-Core Version:    0.6.2
 */