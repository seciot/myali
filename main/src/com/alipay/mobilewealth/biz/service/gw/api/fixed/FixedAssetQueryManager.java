package com.alipay.mobilewealth.biz.service.gw.api.fixed;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedAssetDetailInfoQueryRequest;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedPledgeDealListPageReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedRenewalListPageReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedAssetDetailInfoQueryResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedAssetListPageReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedAssetListPageResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedPledgeDealListPageResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedRenewalListPageResult;

public abstract interface FixedAssetQueryManager
{
  @OperationType("alipay.wealth.fixed.query.assetinfo")
  @CheckLogin
  public abstract FixedAssetDetailInfoQueryResult queryAssetInfo(FixedAssetDetailInfoQueryRequest paramFixedAssetDetailInfoQueryRequest);

  @OperationType("alipay.wealth.fixed.query.assetlist")
  @CheckLogin
  public abstract FixedAssetListPageResult queryAssetListForPage(FixedAssetListPageReq paramFixedAssetListPageReq);

  @OperationType("alipay.wealth.fixed.query.pledge.dealList")
  @CheckLogin
  public abstract FixedPledgeDealListPageResult queryPledgeDealListForPage(FixedPledgeDealListPageReq paramFixedPledgeDealListPageReq);

  @OperationType("alipay.wealth.fixed.query.asset.renewalList")
  @CheckLogin
  public abstract FixedRenewalListPageResult queryRenewalListForPage(FixedRenewalListPageReq paramFixedRenewalListPageReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.fixed.FixedAssetQueryManager
 * JD-Core Version:    0.6.2
 */