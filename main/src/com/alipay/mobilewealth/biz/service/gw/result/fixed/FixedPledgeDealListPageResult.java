package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedPledgeDealInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import java.io.Serializable;
import java.util.List;

public class FixedPledgeDealListPageResult extends CommonPageResult
  implements Serializable
{
  public String applyAmount;
  public String applyDate;
  public String charge;
  public String contractUrl;
  public List<FixedPledgeDealInfo> pledgeDealInfos;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedPledgeDealListPageResult
 * JD-Core Version:    0.6.2
 */