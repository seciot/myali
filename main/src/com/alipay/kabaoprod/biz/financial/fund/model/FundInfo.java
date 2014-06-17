package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
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
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.FundInfo
 * JD-Core Version:    0.6.2
 */