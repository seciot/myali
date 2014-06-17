package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.publiccore.client.req.OfficialSmartRecommendReq;
import com.alipay.publiccore.client.result.OfficialSmartRecommendResult;

public abstract interface OfficialRecommendFacade
{
  @OperationType("alipay.publicplatform.account.getSmartRecommendOfficial")
  @CheckLogin
  public abstract OfficialSmartRecommendResult getSmartRecommendOfficial(OfficialSmartRecommendReq paramOfficialSmartRecommendReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.OfficialRecommendFacade
 * JD-Core Version:    0.6.2
 */