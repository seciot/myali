package com.alipay.mobilewealth.core.model.models.common;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.Map;

public class BizItem extends ToString
  implements Serializable
{
  public String bizItemCode;
  public String bizItemName;
  public Map<String, String> bizItemProp;
  public String bizItemValue;
  public boolean click;
  public String clickType;
  public String clickUrl;
  public int index = 100;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.common.BizItem
 * JD-Core Version:    0.6.2
 */