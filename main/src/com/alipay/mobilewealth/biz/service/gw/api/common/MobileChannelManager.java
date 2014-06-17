package com.alipay.mobilewealth.biz.service.gw.api.common;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.common.QueryRecommendChannelInfoReq;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.QueryRecommendChannelInfoResult;

public abstract interface MobileChannelManager
{
  @OperationType("alipay.wealth.common.queryRecommendChannelInfo")
  @CheckLogin
  public abstract QueryRecommendChannelInfoResult queryRecommendChannelInfo(QueryRecommendChannelInfoReq paramQueryRecommendChannelInfoReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.common.MobileChannelManager
 * JD-Core Version:    0.6.2
 */