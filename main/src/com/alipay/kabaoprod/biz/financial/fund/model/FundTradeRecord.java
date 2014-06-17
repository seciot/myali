package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;
import java.util.Map;

public class FundTradeRecord extends ToString
  implements Serializable
{
  public Map<String, String> contextMap;
  public String totalProfit;
  public String tradeNo;
  public String transAmount;
  public String transDate;
  public String transItemName;
  public String transType;
  public String weekRate = "";
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.FundTradeRecord
 * JD-Core Version:    0.6.2
 */