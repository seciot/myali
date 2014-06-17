package com.alipay.mobilewealth.biz.service.gw.result.bollywood;

import com.alipay.mobilewealth.biz.service.gw.model.bollywood.BollywoodProductInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import java.io.Serializable;
import java.util.List;

public class BollywoodProductListResult extends CommonPageResult
  implements Serializable
{
  public boolean hasNextPage;
  public List<BollywoodProductInfo> listCommon;
  public List<BollywoodProductInfo> listRecommend;
  public String productMode;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodProductListResult
 * JD-Core Version:    0.6.2
 */