package com.alipay.mobilewealth.biz.service.gw.request.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FixedCancelPledgeReq extends ToString
  implements Serializable
{
  public String assetId;
  public String pledgeId;
  public String productId;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedCancelPledgeReq
 * JD-Core Version:    0.6.2
 */