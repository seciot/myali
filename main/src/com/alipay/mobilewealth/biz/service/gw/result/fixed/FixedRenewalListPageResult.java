package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedRenewalInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import com.alipay.mobilewealth.core.model.models.common.BizItem;
import java.io.Serializable;
import java.util.List;

public class FixedRenewalListPageResult extends CommonPageResult
  implements Serializable
{
  public BizItem expireType;
  public List<FixedRenewalInfo> renewalInfoList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedRenewalListPageResult
 * JD-Core Version:    0.6.2
 */