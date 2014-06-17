package com.alipay.mobilewealth.biz.service.gw.api.fixed;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedProductDetailInfoQueryReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedProductListPageReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedProductDetailInfoQueryResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedProductListPageResult;

public abstract interface FixedProductQueryManager
{
  @OperationType("alipay.wealth.fixed.query.productdetailinfo")
  @CheckLogin
  public abstract FixedProductDetailInfoQueryResult queryProductDetailInfo(FixedProductDetailInfoQueryReq paramFixedProductDetailInfoQueryReq);

  @OperationType("alipay.wealth.fixed.query.productlist")
  @CheckLogin
  public abstract FixedProductListPageResult queryProductListForPage(FixedProductListPageReq paramFixedProductListPageReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.fixed.FixedProductQueryManager
 * JD-Core Version:    0.6.2
 */