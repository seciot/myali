package com.alipay.mobilewealth.common.service.facade.result;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class AbstractHomeUnitAsset extends ToString
  implements Serializable
{
  public boolean freezed;
  public boolean hidden;
  public boolean mark;
  public String opText;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.common.service.facade.result.AbstractHomeUnitAsset
 * JD-Core Version:    0.6.2
 */