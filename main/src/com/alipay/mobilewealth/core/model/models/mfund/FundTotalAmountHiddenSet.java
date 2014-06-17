package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.Map;

public class FundTotalAmountHiddenSet extends ToString
  implements Serializable
{
  public Map<String, String> extInfo;
  public boolean hidden;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.FundTotalAmountHiddenSet
 * JD-Core Version:    0.6.2
 */