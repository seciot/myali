package com.alipay.mobilewealth.biz.service.gw.request.fixed;

import com.alipay.mobilewealth.common.service.facade.req.CommonPageReq;
import java.io.Serializable;

public class FixedPledgeDealListPageReq extends CommonPageReq
  implements Serializable
{
  public String assetId;
  public String pledgeId;
  public String productId;
  public String status;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedPledgeDealListPageReq
 * JD-Core Version:    0.6.2
 */