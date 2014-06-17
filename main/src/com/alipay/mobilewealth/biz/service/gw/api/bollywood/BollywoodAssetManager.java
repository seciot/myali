package com.alipay.mobilewealth.biz.service.gw.api.bollywood;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.bollywood.BollywoodAssetPageListReq;
import com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodAssetListResult;

public abstract interface BollywoodAssetManager
{
  @OperationType("alipay.wealth.fund.bollywood.asset.query.list")
  @CheckLogin
  public abstract BollywoodAssetListResult queryAssetList(BollywoodAssetPageListReq paramBollywoodAssetPageListReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.bollywood.BollywoodAssetManager
 * JD-Core Version:    0.6.2
 */