package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class FundBaseAssetAccountInfo extends ToString
  implements Serializable
{
  public String previousProfit;
  public String totalAmount;
  public String totalProfit;
  public String tsmthProfit;
  public String tswkProfit;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.FundBaseAssetAccountInfo
 * JD-Core Version:    0.6.2
 */