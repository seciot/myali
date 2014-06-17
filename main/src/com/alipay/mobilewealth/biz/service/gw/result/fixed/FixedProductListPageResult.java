package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedProductInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import java.io.Serializable;
import java.util.List;

public class FixedProductListPageResult extends CommonPageResult
  implements Serializable
{
  public List<FixedProductInfo> productInfoList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedProductListPageResult
 * JD-Core Version:    0.6.2
 */