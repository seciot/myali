package com.alipay.mobilewealth.biz.service.gw.api.fixed;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedApplyAppointReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedApplyBuyReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedApplyPledgeReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedCancelAppointReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedCancelPledgeReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedModifyDisplayModeReq;
import com.alipay.mobilewealth.biz.service.gw.request.fixed.FixedModifyExpireReq;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyAppointResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyBuyResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedApplyPledgeResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedCancelAppointResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedCancelPledgeResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedModifyDisplayModeResult;
import com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedModifyExpireResult;

public abstract interface FixedTradeManager
{
  @OperationType("alipay.wealth.fixed.trade.apply.appoint")
  @CheckLogin
  public abstract FixedApplyAppointResult applyAppoint(FixedApplyAppointReq paramFixedApplyAppointReq);

  @OperationType("alipay.wealth.fixed.trade.apply.buy")
  @CheckLogin
  public abstract FixedApplyBuyResult applyBuy(FixedApplyBuyReq paramFixedApplyBuyReq);

  @OperationType("alipay.wealth.fixed.trade.apply.pledges")
  @CheckLogin
  public abstract FixedApplyPledgeResult applyPledge(FixedApplyPledgeReq paramFixedApplyPledgeReq);

  @OperationType("alipay.wealth.fixed.trade.cancel.appoint")
  @CheckLogin
  public abstract FixedCancelAppointResult cancelAppoint(FixedCancelAppointReq paramFixedCancelAppointReq);

  @OperationType("alipay.wealth.fixed.trade.cancel.pledge")
  @CheckLogin
  public abstract FixedCancelPledgeResult cancelPledge(FixedCancelPledgeReq paramFixedCancelPledgeReq);

  @OperationType("alipay.wealth.fixed.trade.modify.display.mode")
  @CheckLogin
  public abstract FixedModifyDisplayModeResult modifyDisplayMode(FixedModifyDisplayModeReq paramFixedModifyDisplayModeReq);

  @OperationType("alipay.wealth.fixed.trade.modify.expire")
  @CheckLogin
  public abstract FixedModifyExpireResult modifyExpire(FixedModifyExpireReq paramFixedModifyExpireReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.fixed.FixedTradeManager
 * JD-Core Version:    0.6.2
 */