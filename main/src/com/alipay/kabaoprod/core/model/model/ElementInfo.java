package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;
import java.util.List;

public class ElementInfo extends ToString
  implements Serializable
{
  public boolean editEnable = false;
  public String fieldDesc;
  public String fieldName;
  public List<ElementOption> options;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.ElementInfo
 * JD-Core Version:    0.6.2
 */