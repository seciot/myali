package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.Map;

public class FundTradeRecord extends ToString
  implements Serializable
{
  public Map<String, String> contextMap;
  public String freezeType;
  public String totalProfit;
  public String tradeNo;
  public String transAmount;
  public String transDate;
  public String transItemName;
  public String transType;
  public String weekRate = "";
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.FundTradeRecord
 * JD-Core Version:    0.6.2
 */