package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FundBaseAssetAccountInfo extends ToString
  implements Serializable
{
  public String availableAmount;
  public String previousProfit;
  public String totalAmount;
  public String totalFreezeAmount;
  public String totalProfit;
  public String tsmthProfit;
  public String tswkProfit;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.FundBaseAssetAccountInfo
 * JD-Core Version:    0.6.2
 */