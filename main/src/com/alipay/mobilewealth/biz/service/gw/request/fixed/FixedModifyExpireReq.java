package com.alipay.mobilewealth.biz.service.gw.request.fixed;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FixedModifyExpireReq extends ToString
  implements Serializable
{
  public String assetId;
  public boolean expireType;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedModifyExpireReq
 * JD-Core Version:    0.6.2
 */