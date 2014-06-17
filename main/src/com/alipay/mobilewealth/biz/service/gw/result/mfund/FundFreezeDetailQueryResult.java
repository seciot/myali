package com.alipay.mobilewealth.biz.service.gw.result.mfund;

import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import com.alipay.mobilewealth.core.model.models.mfund.FundFreezeDetail;
import java.io.Serializable;
import java.util.List;

public class FundFreezeDetailQueryResult extends CommonPageResult
  implements Serializable
{
  public List<FundFreezeDetail> fundFreezeDetails;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.mfund.FundFreezeDetailQueryResult
 * JD-Core Version:    0.6.2
 */