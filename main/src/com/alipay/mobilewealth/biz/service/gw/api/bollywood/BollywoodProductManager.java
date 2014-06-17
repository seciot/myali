package com.alipay.mobilewealth.biz.service.gw.api.bollywood;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.bollywood.BollywoodProductDetailReq;
import com.alipay.mobilewealth.biz.service.gw.request.bollywood.BollywoodProductPageListReq;
import com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodProductDetailResult;
import com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodProductListResult;

public abstract interface BollywoodProductManager
{
  @OperationType("alipay.wealth.fund.bollywood.product.order.detail")
  @CheckLogin
  public abstract BollywoodProductDetailResult productOrderDetail(BollywoodProductDetailReq paramBollywoodProductDetailReq);

  @OperationType("alipay.wealth.fund.bollywood.product.query.detail")
  @CheckLogin
  public abstract BollywoodProductDetailResult queryDetail(BollywoodProductDetailReq paramBollywoodProductDetailReq);

  @OperationType("alipay.wealth.fund.bollywood.product.query.list")
  @CheckLogin
  public abstract BollywoodProductListResult queryList(BollywoodProductPageListReq paramBollywoodProductPageListReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.bollywood.BollywoodProductManager
 * JD-Core Version:    0.6.2
 */