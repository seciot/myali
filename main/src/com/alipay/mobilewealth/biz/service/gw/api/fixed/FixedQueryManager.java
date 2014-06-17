package com.alipay.mobilewealth.biz.service.gw.api.fixed;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.MyFixedAssetInfoPageReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.MyFixedAssetInfoQueryResult;

public abstract interface FixedQueryManager
{
  @OperationType("alipay.wealth.fixed.query.myfixedasset")
  @CheckLogin
  public abstract MyFixedAssetInfoQueryResult queryMyFixedAssetInfo(MyFixedAssetInfoPageReq paramMyFixedAssetInfoPageReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.fixed.FixedQueryManager
 * JD-Core Version:    0.6.2
 */