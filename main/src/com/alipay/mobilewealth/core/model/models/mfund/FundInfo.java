package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.Map;

public class FundInfo extends ToString
  implements Serializable
{
  public boolean canPurchase;
  public String fundCode;
  public FundInstInfo fundInstInfo;
  public String fundName;
  public Map<String, String> notices = null;
  public String tenThousandIncome;
  public String weekRate;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.FundInfo
 * JD-Core Version:    0.6.2
 */