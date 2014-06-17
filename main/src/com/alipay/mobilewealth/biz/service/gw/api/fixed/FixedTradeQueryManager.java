package com.alipay.mobilewealth.biz.service.gw.api.fixed;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedApplyBuyInfoQueryReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedApplyPledgeInfoQueryReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedBuyResultQueryReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedPledgeChargeInfoQueryReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyAppointInfoQueryResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyBuyInfoQueryResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyPledgeInfoQueryResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedBuyQueryResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedPledgeChargeInfoQueryResult;

public abstract interface FixedTradeQueryManager
{
  @OperationType("alipay.wealth.fixed.trade.query.apply.appoint")
  @CheckLogin
  public abstract FixedApplyAppointInfoQueryResult queryApplyAppointInfo();

  @OperationType("alipay.wealth.fixed.trade.query.apply.buy")
  @CheckLogin
  public abstract FixedApplyBuyInfoQueryResult queryApplyBuyInfo(FixedApplyBuyInfoQueryReq paramFixedApplyBuyInfoQueryReq);

  @OperationType("alipay.wealth.fixed.trade.query.apply.pledge")
  @CheckLogin
  public abstract FixedApplyPledgeInfoQueryResult queryApplyPledgeInfo(FixedApplyPledgeInfoQueryReq paramFixedApplyPledgeInfoQueryReq);

  @OperationType("alipay.wealth.fixed.trade.query.buy.result")
  @CheckLogin
  public abstract FixedBuyQueryResult queryBuyResult(FixedBuyResultQueryReq paramFixedBuyResultQueryReq);

  @OperationType("alipay.wealth.fixed.trade.query.pledge.charge")
  @CheckLogin
  public abstract FixedPledgeChargeInfoQueryResult queryPledgeChargeInfo(FixedPledgeChargeInfoQueryReq paramFixedPledgeChargeInfoQueryReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.fixed.FixedTradeQueryManager
 * JD-Core Version:    0.6.2
 */