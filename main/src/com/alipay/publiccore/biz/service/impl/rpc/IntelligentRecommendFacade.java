package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.publiccore.client.req.GlobalRecommendReq;
import com.alipay.publiccore.client.req.OfficialDeleteRecmdReq;
import com.alipay.publiccore.client.req.OfficialIntelligentRecmdReq;
import com.alipay.publiccore.client.result.GlobalRecommendListResult;
import com.alipay.publiccore.client.result.OfficialIntelligentRecmdResult;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public abstract interface IntelligentRecommendFacade
{
  @OperationType("alipay.publicplatform.account.clearRecmdOfficial")
  @CheckLogin
  public abstract PublicResult clearRecmdOfficial(OfficialDeleteRecmdReq paramOfficialDeleteRecmdReq);

  @OperationType("alipay.publicplatform.account.getIntelligentRecmdOfficialList")
  @CheckLogin
  public abstract OfficialIntelligentRecmdResult getIntelligentRecmdOfficialList();

  @OperationType("alipay.publicplatform.account.queryGlobalRecommend")
  @CheckLogin
  public abstract GlobalRecommendListResult queryGlobalRecommend(GlobalRecommendReq paramGlobalRecommendReq);

  @OperationType("alipay.publicplatform.account.sendExposureMsg")
  @CheckLogin
  public abstract PublicResult sendExposureMsg(OfficialIntelligentRecmdReq paramOfficialIntelligentRecmdReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.IntelligentRecommendFacade
 * JD-Core Version:    0.6.2
 */