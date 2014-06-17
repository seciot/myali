package com.alipay.mobilewealth.biz.service.gw.model.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FixedPledgeDealInfo extends ToString
  implements Serializable
{
  public String dealAmount;
  public String dealDate;
  public String dealMemo;
  public String dealStatus;
  public String pledgeId;
  public String productId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedPledgeDealInfo
 * JD-Core Version:    0.6.2
 */