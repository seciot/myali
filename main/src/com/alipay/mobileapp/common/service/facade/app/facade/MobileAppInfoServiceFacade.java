package com.alipay.mobileapp.common.service.facade.app.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface MobileAppInfoServiceFacade
{
  @OperationType("alipay.client.queryFitMyAppOrderedByWeight")
  public abstract QueryMyAppRes queryFitMyAppOrderedByWeight(QueryMyAppReq paramQueryMyAppReq);

  @OperationType("alipay.client.queryIndependantAppList")
  public abstract QueryAppstoreRes queryIndependantAppList(QueryAppstoreReq paramQueryAppstoreReq);

  @OperationType("alipay.client.queryMobileAppInfoByAppList")
  public abstract QueryMyAppRes queryMobileAppInfoByAppList(QueryMyAppReq paramQueryMyAppReq);

  @OperationType("alipay.client.queryMobileAppInfoByAppVersion")
  public abstract QueryMyAppRes queryMobileAppInfoByAppVersion(QueryAppInfoByVersionReq paramQueryAppInfoByVersionReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.common.service.facade.app.facade.MobileAppInfoServiceFacade
 * JD-Core Version:    0.6.2
 */