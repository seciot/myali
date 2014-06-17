package com.alipay.mobilewealth.biz.service.gw.request.mfund;

import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;

public class FundFreezeDetailQueryReq extends ToString
  implements Serializable
{
  public int currentPage = 1;
  public String freezeType;
  public int pageSize = 15;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.request.mfund.FundFreezeDetailQueryReq
 * JD-Core Version:    0.6.2
 */